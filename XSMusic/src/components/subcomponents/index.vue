<template>
    <div>
       <div class="bg"></div>  
       <mt-swipe class="swiper" :show-indicators="false" :speed="800" :auto="5000">
            <mt-swipe-item v-for="(item,i) in imglist" :key="i" class="swiper-item">
                <img :src="item.picture" alt="">
            </mt-swipe-item>
        </mt-swipe>
        <Moblock @music="music" :list="newlist"></Moblock>
        <Moblock @music="music" :list="oldlist"></Moblock>
        <Loading :loading="loading"></Loading>
    </div>
</template>
<script>
import Moblock from './mo_block'
import Loading from './loading'
export default {
    data(){
        return{
            imglist:[],
            newlist:[],
            oldlist:[],
            loading:""
        }
    },
    methods:{
        getImgList(){
            var url="http://localhost:3000/main/swiper?p_class=1";
            this.$http.get(url).then(res=>{
                this.imglist=res.body
            })
        },
        getNewList(){
            var url="http://localhost:3000/main/list?title=最新音乐";
            this.$http.get(url).then(res=>{
                this.newlist=res.body
            })
        },
        getOldList(){
            var url="http://localhost:3000/main/list?title=经典";
            this.$http.get(url).then(res=>{
                this.oldlist=res.body
            })
        },
        music(id){
            this.$emit("music",id);
            this.loading="margin-bottom:60px"
        }
    },
    components:{
     Moblock,
     Loading
    },
    created(){
        this.getImgList();
        this.getNewList();
        this.getOldList();
    }
}
</script>

<style scoped>
    .bg{
        width: 100vw;
        height: 130px;
        position: absolute;
        top:0;
        left: 0;
        background: #222;
        z-index: -1;
    }
    .swiper,.swiper-item{
        width: 100%;
        height: 200px;
        box-sizing: border-box;
        overflow: auto !important;
    }
    .swiper-item{
        padding: 10px;
        overflow:auto !important;
    }
    .swiper-item img{
        width: 100%;
        height: 100%;
        box-shadow: 0 0 10px #000;
        border-radius: 4px;
    }
</style>

