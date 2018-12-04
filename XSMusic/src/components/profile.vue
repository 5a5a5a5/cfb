<template>
    <div>
        <div class="my-top">
            <div class="my-shadow"></div>
            <div :style="{backgroundImage:'url('+avatar+')'}" class="avatar"></div>
            <p class="uname" v-cloak>{{uname}}</p>
            <div class="c-ify">
                <ul>
                    <li>动态</li>
                    <li>关注</li>
                    <li>粉丝</li>
                    <li>访客</li>
                </ul>
            </div>
        </div>
        <div class="tj-card">
            <div v-for="(item,i) in list" :key="i" class="card-item">
                <img :src="item.picture" alt="">
                <p>{{item.m_desc}}</p>
                <p>点击量：{{item.p_num}}</p>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            list:[],
            uname:"",
            avatar:""
        }
    },
    methods:{
        getRadio(){
            var url="http://localhost:3000/main/list?title=radio";
            this.$http.get(url).then(res=>{
                this.list=res.body.splice(1,5);
            })
        }
    },
    components:{
    },
    created(){
        this.getRadio();
        var storage=window.localStorage;
        this.uname=storage.getItem("uname");
        this.avatar=storage.getItem("uimg");
    }
}
</script>
<style scoped>
.my-top{
    width: 100%;
    height: 220px;
    background: url('../public/home/side_bg.jpg') no-repeat;
    background-size: cover;
    background-position: 50%;
    overflow: hidden;
    position: relative;
    text-align: center;
    margin-bottom: 20px;
}
.avatar{
    width: 80px;
    height: 80px;
    background-image: url('../public/header/avatar_1.png');
    background-repeat: no-repeat;
    background-size: cover;
    background-position: 50%;
    border-radius: 50%;
    margin: 60px auto 0; 
    position: relative;
    z-index: 1;
}
.uname{
    font-size: 15px;
    margin-top:10px;
    color:#fff;
    font-weight: bold;
    letter-spacing: 0.2rem;
    position: relative;
    z-index: 1;
}
.c-ify{
    width:307px;
    margin:20px auto 0;
    color:#fff;
    position: relative;
    z-index: 1;
}
.c-ify ul{
    display: flex;
    justify-content: space-between;
    flex-wrap: nowrap;
}
.tj-card{
    width: 90vw;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}
.card-item{
    width: 160px;

}
.card-item img{
    width: 100%;
    border-radius: 4px;
    margin-bottom:8px;
    box-shadow: 0 0 5px #666;
}
.card-item p{
    width: 100%;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    font-size: 12px;
}
.card-item p:last-child{
    margin:2px 0 10px;
    color:#999;
}
.my-shadow{
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    background: rgba(0,0,0,0.5);
    z-index:0;
}
</style>

