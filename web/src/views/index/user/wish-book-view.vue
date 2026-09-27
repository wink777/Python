<template>
  <div class="content-list">
    <div class="list-title">我的心愿单</div>
    <div role="tablist" class="list-tabs-view flex-view">
    </div>
    <div class="list-content">
      <div class="collect-book-view">
        <div class="book-list flex-view">
          <div class="book-item item-column-3" v-for="(item,index) in wishData" :key="index">
            <div class="remove" @click="handleRemove(item)">移出</div>
            <div class="img-view" @click="handleClickItem(item)">
              <img :src="item.cover">
            </div>
            <div class="info-view">
              <h3 class="book-name">{{item.title}}</h3>
              <p class="authors" v-if="item.author">{{item.author}}（作者)</p>
              <p class="translators" v-if="item.translator">{{item.translator}}（译者）</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import {getWishBookListApi, removeWishUserApi} from '@/api/index/book'

export default {
  name: 'WishBookView',
  data () {
    return {
      wishData: []
    }
  },
  mounted () {
    this.getWishBookList()
  },
  methods: {
    handleClickItem (record) {
      let text = this.$router.resolve({name: 'detail', query: {id: record.id}})
      window.open(text.href, '_blank')
    },
    handleRemove (record) {
      let username = this.$store.state.user.username
      removeWishUserApi({username: username, bookId: record.id}).then(res => {
        this.$message.success('移除成功')
        this.getWishBookList()
      }).catch(err => {
        console.log(err)
      })
    },
    getWishBookList () {
      let username = this.$store.state.user.username
      getWishBookListApi({username: username}).then(res => {
        res.data.forEach(item => {
          if (item.cover) {
            // 打印 item.cover 来查看它的值
            console.log("item.cover before processing: ", item.cover);

            // 将 item.cover 转换为字符串（虽然它通常已经是字符串）
            const coverString = String(item.cover); // 确保它是字符串

            // 解码item.cover
            const decodedCover = decodeURIComponent(coverString);

            // 判断是否是外部链接
            if (decodedCover.includes('http') || decodedCover.includes('https')) {
              // 如果是外部链接，移除前面的 /upload/ 前缀
              if (decodedCover.startsWith('/upload/')) {
                item.cover = decodedCover.slice(8); // 去掉 '/upload/' 的8个字符
                console.log("外部链接，去掉/upload/: ", item.cover);
              } else {
                item.cover = decodedCover; // 直接使用原始链接
                console.log("外部链接，保持不变:", item.cover);
              }
            } else {
              // 如果是本地路径，拼接基础 URL 和上传路径
              item.cover = this.$BASE_URL + decodedCover; // 拼接本地路径
            }
          }
        })
        this.wishData = res.data
      }).catch(err => {
        console.log(err.msg)
      })
    }
  }
}
</script>
<style scoped lang="less">
.flex-view {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
}

.content-list {
  -webkit-box-flex: 1;
  -ms-flex: 1;
  flex: 1;

  .list-title {
    color: #152844;
    font-weight: 600;
    font-size: 18px;
    line-height: 24px;
    height: 24px;
    margin-bottom: 4px;
  }

  .list-tabs-view {
    position: relative;
    border-bottom: 1px solid #cedce4;
    height: 12px;
    line-height: 42px;
  }
}

.book-list {
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  -webkit-box-pack: start;
  -ms-flex-pack: start;
  justify-content: flex-start;

  .book-item {
    position: relative;
    -webkit-box-flex: 1;
    -ms-flex: 1;
    flex: 1;
    margin-right: 20px;
    min-width: 255px;
    max-width: 255px;
    height: fit-content;
    border-radius: 4px;
    overflow: hidden;
    margin-top: 16px;
    cursor: pointer;

    .remove {
      position: absolute;
      right: 8px;
      top: 8px;
      width: 48px;
      height: 20px;
      text-align: center;
      line-height: 20px;
      color: #fff;
      background: #a1adc5;
      border-radius: 32px;
      cursor: pointer;
    }

    .img-view {
      background: #eaf1f5;
      font-size: 0;
      text-align: center;
      height: 156px;
      padding: 8px 0;

      img {
        max-width: 100%;
        height: 100%;
        display: block;
        margin: 0 auto;
        border-radius: 4px;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
      }
    }

    .info-view {
      background: #f6f9fb;
      text-align: center;
      height: 108px;
      overflow: hidden;
      padding: 0 16px;

      h3 {
        color: #1c355a;
        font-weight: 500;
        font-size: 16px;
        line-height: 20px;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        margin: 12px 0 8px;
      }

      .authors, .translators {
        color: #6f6f6f;
        font-size: 12px;
        line-height: 14px;
        margin-top: 4px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
      }
    }
  }
}
</style>
