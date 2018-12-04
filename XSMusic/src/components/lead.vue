<template>
    <div>
        <mt-swipe class="swiper" :auto="0" :continuous="false" :showIndicators="false" >
            <mt-swipe-item  class="swiper-item">
                <div>
                    <span>零距离的音乐艺术</span>
                </div>
            </mt-swipe-item>
            <mt-swipe-item  class="swiper-item">
                <div>
                    <span>随时随地乐享全球最新音乐</span>
                </div>
            </mt-swipe-item>
            <mt-swipe-item  class="swiper-item">
                <div>
                    <button @click="btn" class="mybtn">Go</button>
                    <span>你是这个城市的温度</span>
                </div>
            </mt-swipe-item>
        </mt-swipe>
    </div>
</template>
<script>
export default {
    data(){
        return{

        }
    },
    methods:{
        btn(){
            var storage=window.localStorage;
            var uname=storage.getItem("uname");
            if(uname==undefined){
                 this.$router.push({path:"login"});  
            }else{
                 this.$router.push({path:"home"});  
            }
        }
    }
}
</script>

<style scoped>
    .swiper,.swiper-item{
        width: 100%;
        height: 100vh;
    }
    .swiper-item>div{
        width: 100%;
        height: 100%;
        background: url(../public/lead/lead_1.jpg) no-repeat;
        background-size: cover;
        background-position: 50%;
        position: relative;
        display: flex;
        justify-content: center;
    }
    .swiper-item:nth-child(2)>div{
        background-image: url(../public/lead/lead_2.jpg) !important;
    }
    .swiper-item:nth-child(3)>div{
        background-image: url(../public/lead/lead_3.jpg) !important;
    }
    .swiper-item span{
        color: #333333;
        position: absolute;
        bottom:15vh;
        margin: 0 auto;
    }
</style>


