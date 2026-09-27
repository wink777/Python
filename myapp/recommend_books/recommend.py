from sklearn.metrics.pairwise import cosine_similarity
import numpy as np
import os
import django

# 设置环境变量，指定 settings 文件
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'bookproject.settings')

# 初始化 Django
django.setup()

# 现在可以安全导入其他 Django 模块了
from myapp.models import Book, User


def build_user_item_matrix():
    """
    构建用户-图书矩阵，每个用户对图书的评分由其行为决定：
    收藏书籍的评分为1，心愿书籍的评分为0.5，其他书籍评分为0。
    """
    all_books = Book.objects.all()

    # 过滤出 `role=2` 的普通用户
    all_users = list(User.objects.filter(role=2))  # 只选择角色为1的用户

    # 初始化一个矩阵，行表示用户，列表示图书，默认值为0
    user_item_matrix = np.zeros((len(all_users), len(all_books)))

    # 填充评分矩阵
    for i, user in enumerate(all_users):
        for j, book in enumerate(all_books):
            if book in user.collect_books.all():  # 收藏书籍评分为1
                user_item_matrix[i][j] = 1
            if book in user.wish_books.all():  # 心愿书籍评分为0.5
                user_item_matrix[i][j] += 0.5  # 累加心愿单评分

    return user_item_matrix, all_books, all_users


def recommend_books_based_on_collaborative_filtering(user_id):
    """
    基于协同过滤算法推荐图书。
    """
    try:
        user = User.objects.get(id=user_id)
    except User.DoesNotExist:
        return []  # 如果用户不存在，返回空推荐

    # 构建用户-图书评分矩阵
    user_item_matrix, all_books, all_users = build_user_item_matrix()

    # 打印用户-图书评分矩阵
    # print("用户-图书评分矩阵:")
    # print(user_item_matrix)

    # 计算用户之间的相似度
    similarity_matrix = cosine_similarity(user_item_matrix)
    # print("用户之间的相似度矩阵:")
    # print(similarity_matrix)

    # 获取目标用户在评分矩阵中的行索引
    user_index = next(i for i, u in enumerate(all_users) if u == user)
    # print(f"目标用户 '{user.username}' 的索引：{user_index}")

    # 获取与目标用户相似的用户（按相似度排序）
    similar_users = sorted(enumerate(similarity_matrix[user_index]), key=lambda x: x[1], reverse=True)



    recommended_books = set()

    # 遍历与目标用户相似的用户，推荐他们喜欢的图书
    for idx, similarity_score in similar_users[1:]:  # 排除目标用户自己
        similar_user = all_users[idx]
        print(f"\n与用户 '{user.username}' 相似的用户: {similar_user.username} (相似度: {similarity_score:.4f})")

        # 获取该用户已收藏或心愿的书籍
        for book in similar_user.collect_books.all() | similar_user.wish_books.all():
            if book not in user.collect_books.all() and book not in user.wish_books.all():
                recommended_books.add(book)

    # 返回推荐的图书列表，最多12本
    recommended_books_list = list(recommended_books)[:12]

    # 打印推荐结果
    print(f"\n为用户 '{user.username}' 推荐的图书:")
    for book in recommended_books_list:
        print(f"  - {book.title}")

    return recommended_books_list


if __name__ == '__main__':
    # 调用推荐函数，传入用户ID
    recommended_books = recommend_books_based_on_collaborative_filtering(28)
