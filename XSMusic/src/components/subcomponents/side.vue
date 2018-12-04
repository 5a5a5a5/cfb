<template>
    <div class="side">
        <div class="side-top">
            <table></table>
            <div :style="{backgroundImage: 'url(' + userImg + ')'}" class="avatar"></div>
            <div class="name">
                <div v-cloak>{{uname}}</div>
            </div>
            <div class="shadow"></div>
        </div>
        <div class="side-content">
            <div class="side-item ">
                <img src="../../public/home/msg.png" alt="">
                <span>我的消息</span>
            </div>
            <div class="side-item">
                <img src="../../public/home/work.png" alt="">
                <span>我的作品</span>
            </div>
            <div class="side-item">
                <img src="../../public/home/call.png" alt="">
                <span>我的收藏</span>
            </div>
            <div class="side-item">
                <img src="../../public/home/down.png" alt="">
                <span>下载歌曲</span>
            </div>
            <div class="side-item">
                <img src="../../public/home/time.png" alt="">
                <span>最近播放</span>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            userImg:"",
            uname:""
        }
    },
    methods:{},
    created(){
        var storage=window.localStorage;
        this.userImg=storage.getItem("uimg");
        this.uname=storage.getItem("uname")
    }
}
</script>
<style scoped>
[v-cloak] {
  display: none;
}
.side{
    width:75vw;
    position: fixed;
    z-index: 1000;
    height: 100vh;
    background: #fff;
    top:0;
    left:0;
    overflow: hidden;
}
.side-top{
    width: 100%;
    height: 160px;
    background:url("../../public/home/side_bg.jpg") no-repeat;
    background-size: cover;
    background-position: 50%;
    position: relative;
}
.avatar{
    width: 60px;
    height: 60px;
    border-radius: 50%;
    background-position:50%;
    background-size: cover;
    background-repeat: no-repeat;
    margin-top:50px;
    margin-left:20px;
    position: relative;
    z-index: 10;
}
.name{
    display: flex;
    flex-wrap: nowrap;
    justify-content: space-between;
    width:calc(100% - 50px);
    margin: 10px auto 0 ;
    color: #fff;
    position: relative;
    z-index: 10;
}
.name>div:nth-child(1){
    font-size: 20px;
    margin-left: 4px;
}
.name>div:nth-child(2){
    height: 20px;
    font-size: 12px;
    border:1px solid #fff;
    border-radius: 20px;
    line-height: 20px;
    padding:0 10px;
    box-sizing: border-box;
}
.side-content{
    width: calc(100% - 20px);
    margin: 10px 0 0 20px;
}
.side-item{
    font-size:13px;
    padding: 10px 0;
    
}
.side-item img{
    width: 20px;
    height: 20px;
    margin-right:20px;
    
}
.shadow{
    width:100%;
    height: 100%;
    background: rgba(0,0,0,0.3);
    position: absolute;
    top:0;
    left: 0;
    z-index: 5;
}
</style>


