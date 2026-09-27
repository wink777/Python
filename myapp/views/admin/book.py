# Create your views here.
from rest_framework.decorators import api_view, authentication_classes

from myapp import utils
from myapp.auth.authentication import AdminTokenAuthtication
from myapp.handler import APIResponse
from myapp.models import Classification, Book, Tag
from myapp.permission.permission import isDemoAdminUser
from myapp.serializers import BookSerializer, UpdateBookSerializer

# 获取书籍列表视图
@api_view(['GET'])
def list_api(request):
    if request.method == 'GET':
        keyword = request.GET.get("keyword", None) # 从请求参数中获取关键字查询条件
        c = request.GET.get("c", None)# 从请求参数中获取分类ID查询条件
        tag = request.GET.get("tag", None)# 从请求参数中获取标签ID查询条件
        if keyword:
            books = Book.objects.filter(title__contains=keyword).order_by('-create_time')# 查询标题包含关键字的书籍，并按创建时间降序排列
        elif c:
            classification = Classification.objects.get(pk=c)# 根据分类ID查询分类
            books = classification.classification_book.all()
        elif tag:
            tag = Tag.objects.get(id=tag)# 根据标签ID查询标签
            print(tag)
            books = tag.book_set.all()
        else:# 如果没有提供任何查询条件
            books = Book.objects.all().order_by('-create_time')# 查询所有书籍，并按创建时间降序排列

        serializer = BookSerializer(books, many=True)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)

# 获取书籍详情视图
@api_view(['GET'])
def detail(request):

    try:
        pk = request.GET.get('id', -1)
        book = Book.objects.get(pk=pk)
    except Book.DoesNotExist:
        utils.log_error(request, '对象不存在')
        return APIResponse(code=1, msg='对象不存在')

    if request.method == 'GET':
        serializer = BookSerializer(book)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)

# 创建新书籍视图
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def create(request):

    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    serializer = BookSerializer(data=request.data)#创建新书籍
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='创建成功', data=serializer.data)
    else:
        print(serializer.errors)
        utils.log_error(request, '参数错误')

    return APIResponse(code=1, msg='创建失败')

# 更新书籍信息视图
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def update(request):

    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        pk = request.GET.get('id', -1)
        book = Book.objects.get(pk=pk)
    except Book.DoesNotExist:# 如果书籍不存在
        return APIResponse(code=1, msg='对象不存在')

    serializer = UpdateBookSerializer(book, data=request.data)#更新书籍信息
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='查询成功', data=serializer.data)
    else:
        print(serializer.errors)
        utils.log_error(request, '参数错误')

    return APIResponse(code=1, msg='更新失败')

# 删除书籍视图
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def delete(request):

    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        ids = request.GET.get('ids')
        ids_arr = ids.split(',')
        Book.objects.filter(id__in=ids_arr).delete()# 根据ID列表批量删除书籍
    except Book.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')
    return APIResponse(code=0, msg='删除成功')
