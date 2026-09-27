# Create your views here.
from rest_framework.decorators import api_view, authentication_classes

from myapp import utils
from myapp.auth.authentication import AdminTokenAuthtication
from myapp.handler import APIResponse
from myapp.models import Tag
from myapp.permission.permission import isDemoAdminUser
from myapp.serializers import TagSerializer

# 获取标签列表视图
@api_view(['GET'])
def list_api(request):
    if request.method == 'GET':
        tags = Tag.objects.all().order_by('-create_time')# 查询所有标签，并按创建时间降序排列
        serializer = TagSerializer(tags, many=True)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)

# 创建新标签视图
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def create(request):
    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    tags = Tag.objects.filter(title=request.data['title'])
    if len(tags) > 0:
        return APIResponse(code=1, msg='该名称已存在')

    serializer = TagSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='创建成功', data=serializer.data)
    else:
        utils.log_error(request, '参数错误')

    return APIResponse(code=1, msg='创建失败')

# 更新标签信息视图
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def update(request):
    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        pk = request.GET.get('id', -1)
        tags = Tag.objects.get(pk=pk)# 根据ID查询标签
    except Tag.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    serializer = TagSerializer(tags, data=request.data)#更新标签信息
    if serializer.is_valid():# 如果数据验证通过
        serializer.save()
        return APIResponse(code=0, msg='更新成功', data=serializer.data)
    else:
        utils.log_error(request, '参数错误')

    return APIResponse(code=1, msg='更新失败')

# 删除标签视图
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def delete(request):
    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        ids = request.GET.get('ids')# 从请求参数中获取要删除的标签ID列表
        ids_arr = ids.split(',')
        Tag.objects.filter(id__in=ids_arr).delete()# 根据ID列表批量删除标签
    except Tag.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    return APIResponse(code=0, msg='删除成功')
