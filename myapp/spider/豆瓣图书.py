import random
import re
import time
from datetime import datetime

import requests
from lxml import etree

import os
import django

# 设置DJANGO_SETTINGS_MODULE环境变量
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'bookproject.settings')
# 初始化Django
django.setup()
from myapp.models import Book, Classification, Tag  # 引入你的 Django 模型


def header_x():
    # 随机获取一个headers
    user_agents = [
        'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36',
        'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0',
        'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534.57.2 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2',
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36',
        'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.71 Safari/537.1 LBBROWSER',
        'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.84 Safari/535.11 SE 2.X MetaSr 1.0'
    ]

    headers = {
        "User-Agent": random.choice(user_agents)
    }
    return headers


# https://book.douban.com/tag/
# 要爬取的 豆瓣读书中的 分类名称
kinds = ['小说', '动漫', '经济学', '生活', '教育', '科技', '历史', '文学', '财经', '计算机']

# 循环每个分类
for book_kind in kinds:
    # 每个分类要爬取的页数 当前是1（可以根据需求增加更多页数）
    for i in range(1, 2):
        print(f'{book_kind} 开始爬取第 {i} 页')

        # 拼接url，start控制从哪一页开始
        url = f'https://book.douban.com/tag/{book_kind}?start={i * 20 - 20}&type=T'
        print(url)

        headers = header_x()
        resp = requests.get(url, headers=headers)
        html = etree.HTML(resp.text)

        lis = html.xpath("//div[@id='subject_list']/ul/li")

        # 遍历每本书的信息
        for li in lis:
            try:
                # 书名
                name = li.xpath("./div[@class='info']/h2/a/@title")[0]
                # 缩略图链接
                img_url = li.xpath("./div[@class='pic']/a/img/@src")[0]
                # 出版社
                publisher = li.xpath("./div[@class='info']/div[@class='pub']/text()")[0].strip().split('/')[-3]
                # 出版年
                publish_time = li.xpath("./div[@class='info']/div[@class='pub']/text()")[0].strip().split('/')[-2]

                if '-' not in publish_time:
                    continue  # 跳过没有有效出版年份的书籍

                # 评价人数
                grade = li.xpath(".//span[@class='pl']/text()")[0].strip()
                # 处理grade 提取数字
                grade_num = re.findall("\d+\.?\d*", grade)[0]

                # 小简介
                # intro_1 = li.xpath("./div[@class='info']/p/text()")[0].strip()
                # 移除表情符号
                # intro_1 = re.sub(r'[^\x00-\x7F]+', '', intro)

                # 子链接
                son_url = li.xpath("./div[@class='info']/h2/a/@href")[0]

                # 请求子页面，获取详细书籍信息
                resp_son = requests.get(son_url, headers=headers)
                html_son = etree.HTML(resp_son.text)

                # 获取详细的书籍信息
                author = html_son.xpath("//span[@class='pl' and text()=' 作者']/following-sibling::a/text()")
                author = author[0].strip() if author else '未知'

                publisher = html_son.xpath("//span[@class='pl' and text()='出版社:']/following-sibling::a/text()")
                publisher = publisher[0].strip() if publisher else '未知'

                Original_title = html_son.xpath("//span[@class='pl' and text()='原作名:']/following-sibling::text()")
                Original_title = Original_title[0].strip() if Original_title else '未知'

                translator = html_son.xpath("//span[@class='pl' and text()=' 译者']/following-sibling::a/text()")
                translator = translator[0].strip() if translator else '未知'

                publish_year = html_son.xpath("//span[@class='pl' and text()='出版年:']/following-sibling::text()")
                publish_year = publish_year[0].strip() if publish_year else '未知'

                pages = html_son.xpath("//span[@class='pl' and text()='页数:']/following-sibling::text()")
                pages = pages[0].strip() if pages else '未知'

                # 处理定价：只提取数字部分，删除“元”字符
                price = html_son.xpath("//span[@class='pl' and text()='定价:']/following-sibling::text()")
                price = price[0].strip() if price else '未知'
                price = re.sub(r'元', '', price)  # 只去掉“元”字符，保留其他数字

                # 装帧
                binding = html_son.xpath("//span[@class='pl' and text()='装帧:']/following-sibling::text()")
                binding = binding[0].strip() if binding else '未知'

                # ISBN
                isbn = html_son.xpath("//span[@class='pl' and text()='ISBN:']/following-sibling::text()")
                isbn = isbn[0].strip() if isbn else '未知'

                # 评分：只提取评分数字
                score = html_son.xpath("//strong[@class='ll rating_num ']/text()")
                score = score[0].strip() if score else '未知'
                score = re.findall("\d+\.?\d*", score)[0] if score != '未知' else '未知'

                # 简介
                # 获取所有 <p> 标签的文本内容
                intro_elements = html_son.xpath("//div[@id='link-report']//div[@class='intro']/p/text()")

                # 确保有内容然后处理
                if intro_elements:
                    intro_1 = ' '.join([text.strip() for text in intro_elements])
                else:
                    intro_1 = '未知'  # 设定默认值

                # 打印结果
                print(f"书名: {name}")
                print(f"作者: {author}")
                print(f"封面: {img_url}")
                print(f"出版社: {publisher}")
                print(f"原作名: {Original_title}")
                print(f"译者: {translator}")
                print(f"出版年: {publish_year}")
                print(f"页数: {pages}")
                print(f"定价: {price}")
                print(f"装帧: {binding}")
                print(f"ISBN: {isbn}")
                print(f"评分: {score}")
                print(f"评价人数: {grade_num}")
                print(f"简介: {intro_1}")

                # 确保月份是两位数
                # publish_year = "2021-9-5"
                # 确保输入的日期字符串包含年、月和日
                parts = publish_year.split('-')

                # 如果日期字符串中只有年和月（如 2021-9），补充日期为 01
                if len(parts) == 2:
                    year, month = parts
                    day = "01"  # 默认日期为 01
                elif len(parts) == 3:
                    year, month, day = parts
                else:
                    raise ValueError("Invalid date format")

                # 确保月份和日期是两位数
                month = month.zfill(2)
                day = day.zfill(2)

                # 拼接为标准日期格式字符串 'YYYY-MM-DD'
                publish_date_str = f"{year}-{month}-{day}"

                try:
                    # 转换为日期对象
                    publish_date = datetime.strptime(publish_date_str, "%Y-%m-%d").date()
                    # print(publish_date)  # 输出日期对象，比如：2021-09-01 或 2021-09-05
                except ValueError:
                    publish_date = None  # 如果转换失败，则设为 None
                    print(f"Invalid date format: {publish_date_str}")

                # 将数据保存到数据库
                # 创建或获取分类和标签
                classification, created = Classification.objects.get_or_create(title=book_kind)  # 假设分类为book_kind
                tags = []  # 可以在此处为书籍添加标签（如果有）

                from datetime import datetime

                # # 将固定日期字符串转换为 datetime 对象
                # pub_date_str = '2021-09-01'
                # pub_date = datetime.strptime(publish_date_str, "%Y-%m-%d").date()
                # 使用 get_or_create，更新或创建新书籍
                book, created = Book.objects.update_or_create(
                    isbn=isbn,  # 使用 ISBN 查找书籍
                    defaults={  # 如果书籍存在，则更新这些字段
                        'title': name,
                        'original_title': Original_title,
                        'cover': img_url,
                        'author': author,
                        'translator': translator,
                        'description': intro_1,
                        'press': publisher,
                        'page_count': int(pages) if pages != '未知' else 0,
                        'price': price,
                        'pub_date': publish_date_str,
                        'online_time': datetime.now(),
                        'status': '0',  # 默认上架
                        'repertory': 99,  # 这里设置库存为0，实际情况需要调整
                        'score': float(score) if score != '未知' else 0,
                        'layout': binding,
                        'classification': classification,
                        'wish_count': 0,
                        'collect_count': 0
                    })

                if created:
                    print(f"成功创建书籍: {name} ({isbn})")
                    print()

                else:
                    print(f"书籍 {isbn} 已存在，已更新记录。")
                    print()

                book.tag.set(tags)  # 如果有标签，可以设置标签
                book.save()

            except IndexError:
                continue

            # 设置每条数据的时间间隔，避免请求过于频繁
            time.sleep(0.33)

        print(f"{book_kind} 第 {i} 页爬取完成！")

    print(f"{book_kind} 数据爬取完成并保存到数据库！")
