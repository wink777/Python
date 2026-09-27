# Create your views here.
import datetime

from rest_framework.decorators import api_view, authentication_classes

from myapp import utils
from myapp.auth.authentication import AdminTokenAuthtication
from myapp.handler import APIResponse
from myapp.models import User
from myapp.permission.permission import isDemoAdminUser
from myapp.serializers import UserSerializer, LoginLogSerializer
from myapp.utils import md5value

# 记录登录日志的辅助函数
def make_login_log(request):
    try:
        username = request.data['username']
        data = {
            "username": username, # 将用户名加入日志数据
            "ip": utils.get_ip(request),
            "ua": utils.get_ua(request)
        }
        serializer = LoginLogSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
        else:
            print(serializer.errors)
    except Exception as e:
        print(e)

# 管理员登录视图
@api_view(['POST'])# 限定该视图仅接受POST请求
def admin_login(request):
    username = request.data['username']
    password = utils.md5value(request.data['password'])# 对密码进行MD5加密

    users = User.objects.filter(username=username, password=password)
    if len(users) > 0:
        user = users[0]
        datetime.datetime.now() + datetime.timedelta(days=60)
        data = {
            'username': username,
            'password': password,
            'admin_token': md5value(username)  # 生成令牌
        }
        serializer = UserSerializer(user, data=data)
        if serializer.is_valid():
            serializer.save()
            make_login_log(request)
            return APIResponse(code=0, msg='登录成功', data=serializer.data)
        else:
            print(serializer.errors)

    return APIResponse(code=1, msg='用户名或密码错误')


@api_view(['GET'])# 限定该视图仅接受GET请求
def info(request):
    if request.method == 'GET':
        pk = request.GET.get('id', -1)
        user = User.objects.get(pk=pk)
        serializer = UserSerializer(user)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)

# 用户列表查询视图
@api_view(['GET'])
def list_api(request):
    if request.method == 'GET':
        keyword = request.GET.get("keyword", '')# 从请求参数中获取搜索关键词，默认为空字符串
        users = User.objects.filter(username__contains=keyword).order_by('-create_time')# 根据关键词过滤并排序用户列表
        serializer = UserSerializer(users, many=True)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)

# 创建新用户视图
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def create(request):
    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    print(request.data)
    if not request.data.get('username', None) or not request.data.get('password', None):
        return APIResponse(code=1, msg='用户名或密码不能为空')
    users = User.objects.filter(username=request.data['username'])
    if len(users) > 0:
        return APIResponse(code=1, msg='该用户名已存在')

    data = request.data.copy()
    data.update({'password': utils.md5value(request.data['password'])})# 对密码进行MD5加密后更新到数据中
    serializer = UserSerializer(data=data)#更新用户信息
    if serializer.is_valid(): # 如果数据验证通过
        serializer.save()# 保存新用户到数据库
        return APIResponse(code=0, msg='创建成功', data=serializer.data)
    else:
        print(serializer.errors)

    return APIResponse(code=1, msg='创建失败')

# 更新用户信息视图
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def update(request):
    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        pk = request.GET.get('id', -1)# 从请求参数中获取用户ID，默认值为-1
        user = User.objects.get(pk=pk) # 根据ID查询用户
    except User.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    data = request.data.copy()
    if 'username' in data.keys():
        del data['username']# 删除用户名字段，不允许更新用户名
    if 'password' in data.keys():
        del data['password']# 删除密码字段，不允许直接更新密码
    serializer = UserSerializer(user, data=data)#更新用户信息
    print(serializer.is_valid())
    if serializer.is_valid():
        serializer.save()# 保存更新后的用户信息
        return APIResponse(code=0, msg='更新成功', data=serializer.data)
    else:
        print(serializer.errors)
    return APIResponse(code=1, msg='更新失败')

# 修改用户密码视图
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def updatePwd(request):
    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        pk = request.GET.get('id', -1)
        user = User.objects.get(pk=pk)# 根据ID查询用户
    except User.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    password = request.data.get('password', None)# 从请求数据中获取原密码
    newPassword1 = request.data.get('newPassword1', None)
    newPassword2 = request.data.get('newPassword2', None)

    if not password or not newPassword1 or not newPassword2:
        return APIResponse(code=1, msg='不能为空')

    if user.password != utils.md5value(password):
        return APIResponse(code=1, msg='原密码不正确')

    if newPassword1 != newPassword2:
        return APIResponse(code=1, msg='两次密码不一致')

    data = request.data.copy()
    data.update({'password': utils.md5value(newPassword1)})# 对新密码进行MD5加密后更新到数据中
    serializer = UserSerializer(user, data=data)
    if serializer.is_valid():
        serializer.save()# 保存更新后的用户信息
        return APIResponse(code=0, msg='更新成功', data=serializer.data)
    else:
        print(serializer.errors)

    return APIResponse(code=1, msg='更新失败')

# 删除用户视图
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def delete(request):
    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        ids = request.GET.get('ids')# 从请求参数中获取要删除的用户ID列表
        ids_arr = ids.split(',')
        User.objects.filter(id__in=ids_arr).delete()# 根据ID列表批量删除用户
    except User.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    return APIResponse(code=0, msg='删除成功')
