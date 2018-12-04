<template>
    <div class="boxr">
        <div class="block">
            <el-carousel trigger="click" height="160px" :interval="5000">
                <el-carousel-item v-for="(item,i) in imglist" :key="i">
                <img class="swiper-img" :src="item.picture" alt="">
                </el-carousel-item>
            </el-carousel>
        </div>
        <div class="rank_tip">
            <img src="../../public/home/radio.jpg" alt="">
            <img src="../../public/home/radio_2.jpg" alt="">
            <img src="../../public/home/radio_1.jpg" alt="">
        </div>
        <div class="tj-card">
            <div v-for="(item,i) in radio" :key="i" class="card-item" @click="music(item.m_id)">
                <img :src="item.picture" alt="">
                <p v-cloak>{{item.m_desc}}</p>
                <p v-cloak>{{item.auther}}</p>
            </div>
        </div>
        <Loading></Loading>
    </div>
</template>
<script>
import Loading from './loading'
export default {
    data(){
        return{
            imglist:[],
            radio:[]
        }
    },
    methods:{
         getImgList(){
            var url="http://localhost:3000/main/swiper?p_class=2";
            this.$http.get(url).then(res=>{
                this.imglist=res.body
            })
        },
        getRadio(){
            var url="http://localhost:3000/main/list?title=radio";
            this.$http.get(url).then(res=>{
                this.radio=res.body;
            })
        },
        music(id){
            this.$emit("music",id)
        }
    },
    created(){
        this.getImgList();
        this.getRadio();
    },
    components:{
        Loading
    }
}
</script>
<style scoped>
.boxr{
    width: 100vw;
    position: relative;
}
.block{
    width: 100%;
}
.el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    line-height: 150px;
    margin: 0;
  }

.el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
}
.swiper-img{
    width: 100%;
    height: 160px;
}

.tj-card{
    width: 90vw;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}
.card-item{
    width: 154px;

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
    font-size: 13px;
}
.card-item p:last-child{
    margin-bottom:10px;
    color: #999;
}
.rank_tip{
    width: 90vw;
    display: flex;
    flex-wrap: nowrap;
    justify-content: space-between;
    margin:30px auto;
}
.rank_tip img{
    width: 100px;
    height: 100px;
    box-shadow: 0 0 4px #999;
}
</style>


