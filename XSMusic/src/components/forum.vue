<template>
    <div class="for_box">
        <div class="top">
            <span class="active">最新</span>
            <span class="fenge">|</span>
            <span>热门</span>
        </div>
        <div class="forum" v-for="(item,i) in message" :key="i">
            <div class="forum-item">
                <div class="item-left">
                    <img :src="item.picture" alt="">
                    <div class="name">
                        <span v-cloak>{{item.uname}}</span>
                        <span v-cloak>{{item.p_time | dateFormat}}</span>
                    </div>
                    <span>最新发布</span>
                </div>
                <div class="item-right">
                    <span>关注</span>    
                </div>
            </div>
            <div class="forum-box">
                <div class="forum-top">
                    <span v-cloak>{{item.content | sliceStr(num[i])}}</span>
                </div>
                <div @click="more(i)" class="more">更多</div>
                <div :style="{backgroundImage:'url('+item.big_img+')'}"  class="picture"></div>
                <div class="music">
                    <div :style="{backgroundImage:'url('+item.small_img+')'}" class="avatar">
                        <img src="../public/forum/play.png" alt="">
                    </div>
                    <span v-cloak>{{item.title}}</span>
                </div>
                <div class="forum-bottom">
                    <div>
                        <img src="../public/forum/comment.png" alt="">
                        <span v-cloak>{{item.pl}}</span>
                    </div>
                     <div>
                        <img src="../public/forum/share_1.png" alt="">
                        <span v-cloak>{{item.zf}}</span>
                    </div>
                     <div>
                        <img src="../public/forum/zan.png" alt="">
                        <span v-cloak>{{item.dz}}</span>
                    </div>
                     <div class="point">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </div>
            </div>
        </div>
        <Loading></Loading>
    </div>
</template>
<script>
import Loading from './subcomponents/loading.vue'
export default {
    data(){
        return{
            message:[],
            num:[]
        }
    },
    methods:{
        getMessage(){
            var url="http://localhost:3000/main/forum";
            this.$http.get(url).then(res=>{
                for(var i=0;i<res.body.length;i++){
                    this.num.push(50)
                }
                this.message=res.body
            })
        }
    },
    components:{
       Loading
    },
    created(){
        this.getMessage()
    }
}
</script>
<style scoped>
    .for_box{
        width: 100vw;
    }
    .top{
        width: 100%;
        display: flex;
        flex-wrap: nowrap;
        justify-content: flex-end;
        padding:13px 5vw;
        box-sizing: border-box;
        align-items: center;
        font-size:13px;
        color: #a0a0a0;
        border-bottom:1px solid #999;
    }
    .fenge{
        margin:0 10px;
    }
    .active{
        color:#000;
    }
    .forum{
        width: 100%;
        border-bottom:1px solid #999999;
        padding-bottom:20px;
        margin-bottom:10px;
        box-sizing: border-box;
    }
    .forum-item{
        width: 100vw;
        display:flex;
        flex-wrap: nowrap;
        justify-content: space-between;
        padding:10px 5vw 2px;
        box-sizing: border-box;
    }
    .forum-item .item-left{
        display: flex;
        flex-wrap: nowrap;
        align-items: center;
    }
    .forum-item .item-left img{
        width:50px;
        height: 50px;
        border-radius: 50%;
    }
    .name{
        display: flex;
        flex-direction: column;
        font-size: 14px;
        margin:0 20px 0 15px;
    }
     .name>span:last-child{
        color: #999;
        font-size:12px;
     }
     .item-left>span{
         font-size:12px;
         color: #999;
         align-self: flex-start;
         margin-top:8px;
     }
     .item-right span{
        border:1px solid #999;
        font-size: 12px;
        padding: 3px 8px;
        border-radius: 12px;
        box-sizing: border-box;
     }
     .forum-box{
         width:calc(90vw - 80px);
         margin-left:calc(5vw + 60px);
     }
     .forum-top{
         font-size:13px;
     }
     .more{
         font-size: 12px;
         color: #999;
         position: relative;
         margin:5px 0 10px;
     } 
     .more::after{
        content: "";
        width: 8px;
        height: 8px;
        border-top:1px solid #999;
        border-right: 1px solid #999;
        position: absolute;
        transform: rotate(135deg);
        left: 30px;
        top:2px;
     }
     .picture{
         width: 100%;
         height: 170px;
         background: #ccc;
         background-repeat: no-repeat;
         background-size: cover;
         background-position: 50%;
         box-shadow: 0 0 6px #444;
     }
     .music{
         width: 100%;
         background: #e6e6e6;
         display: flex;
         flex-wrap: nowrap;
         align-items: center;
         padding:5px 10px;
         box-sizing: border-box;
         border-radius: 6px;
         margin-top:16px;
         font-size: 13px;
         color: #333;
         margin-bottom:20px;
     }
     .music span{
         margin-left: 10px;
     }
     .avatar{
         width: 30px;
         height: 30px;
         border-radius: 50%;
         background-image: url("../public/home/user_4.png");
         background-repeat: no-repeat;
         background-size: cover;
         background-position: 50%;
         position: relative;
     }
     .avatar img{
        width: 15px;
        height: 15px;
        position: absolute;
        left:calc(50% - 7.5px);
        top:calc(50% - 7.5px);
     }
     .forum-bottom,.forum-bottom>div{
         display: flex;
         flex-wrap: nowrap;
         justify-content: left;
         align-items: center;
         position: relative;
     }
     .forum-bottom>div{
         align-items:baseline;
     }
     .forum-bottom>div>span{
         position: relative;
         bottom:3px;
         font-size: 12px;
         color:#333;
         margin:0 20px 0 5px;
     }
     .forum-bottom>div>img{
         width: 20px;
         height: 20px;
     }
     .point{
        width: 25px;
        left:60px;
        height: 4px;
        top:4px;
     }
     .point span{
        width: 4px;
        height: 4px;
        background: #333333;
        border-radius: 50%;
        position: absolute !important;
        right:0px;
     }
     .point span:nth-child(2){
        right:9px;
     }
     .point span:nth-child(3){
        right:18px;
     }
</style>

