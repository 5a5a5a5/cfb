<template>
   <div class="act_box">
        <div v-for="(item,i) in message" :key="i" class="active-item">
            <div :style="{backgroundImage:'url('+item.picture+')'}" class="a-img"></div>
            <div class="desc">
                <span v-cloak>{{item.title}}</span>
                <span v-cloak>{{item.content}}</span>
            </div>
            <div class="num">
                <span v-cloak>{{item.c_num}}/{{item.s_mun}}</span>
                <span v-cloak>{{item.c_num/item.s_mun*100}}%</span>
            </div>
            <div class="progress">
                <div :style="{width:item.c_num/item.s_mun*92+'vw'}"></div>
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
            message:[]
        }
    },
    methods:{
        getMessage(){
            var url="http://localhost:3000/main/active";
            this.$http.get(url).then(res=>{
                this.message=res.body
            })
        }
    },
    components:{
        Loading
    },
    created(){
        this.getMessage();
    }
}
</script>
<style scoped>
.act_box{
    width: 100vw;
}
.active-item{
    width: 100vw;
    margin:20px 0 40px;
    border-bottom: 1px solid #ccc;
}
.active-item .a-img{
    width: 92vw;
    margin:0 auto;
    height: 170px;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: 50%;
    box-shadow: 0 0 5px #444;
}
.desc{
    width: 100%;
    display:flex;
    flex-direction: column;
    padding:0 4vw;
    box-sizing: border-box;
}
.desc span:nth-child(1){
    font-size: 14px;
    margin-top: 15px;
}
.desc span:nth-child(2){
    font-size:12px;
    color:#666;
    margin: 15px 0;
}
.num{
    display: flex;
    justify-content: space-between;
    font-size: 12px;
    width: 100%;
    padding:0 4vw;
    box-sizing: border-box;
    color: #222;
}
.progress{
    width: 92vw;
    height: 6px;
    border-radius: 6px;
    border:2px solid #666;
    margin: 10px auto 20px;
    position: relative;
}
.progress div{
    position: absolute;
    left: 0;
    top: 0;
    width: calc(92vw * 0.25);
    height: 100%;
    background: #666;
}
</style>


