<template>
    <div class="detail">
        <div class="top mythem">
            <div class="arrow"></div>
            <span>余妻熟剧情版</span>
        </div>
        <div class="CD">
            
        </div>
        <div class="lyric">
            <div class="shadow"></div>
            <span></span>
        </div>
        <div class="control">
            <img src="../public/home/left.png" alt="">
            <img src="../public/home/play.png" alt="">
            <img src="../public/home/right.png" alt="">
        </div>
        <div class="control_bottom">
            <img src="../public/home/loop.png" alt="">
            <img src="../public/home/list.png" alt="">
        </div>
        <div class="time">
            <div class="block">
                <el-slider :format-tooltip="formatTooltip" v-model="value" :show-tooltip="false"></el-slider>
            </div>
        </div>
        <div class="bottom-item">
            <img src="../public/home/collect.png" alt="">
            <img src="../public/home/forum.png" alt="">
            <img src="../public/home/download.png" alt="">
            <img src="../public/home/share.png" alt="">
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            value:0
        }
    },
    methods:{
        formatTooltip(val) {
            return val / 100;
        }
    }
}
</script>
<style scoped>
    .detail{
        width: 100vw;
        height: 100vh;
        background: url("../public/home/bg.jpg") no-repeat;
        background-size: cover;
        background-position: 50%;
        overflow: hidden;
    }
    .top{
    width: 100%;
    padding: 10px 0;
    box-sizing: border-box;
    position: relative;
    text-align: center;
    }
    .top>div{
        position: absolute;
        left: 6vw;
        top:15px;
    }
    .top span{
        color: #fff;
        font-size: 16px;
        
    }
    .lyric{
        width: 100%;
        height: 100px;
        position: relative;
        margin-top:30px;
    }
     .lyric .shaodw{
        width: 100%;
        height: 100%;
        position: absolute;
        top:0;
        left: 0%;
        background-image: linear-gradient(to bottom,rgba())
     }
     .control{
         width: 100%;
         display: flex;
         flex-wrap: nowrap;
         justify-content: center;
         margin-top: 30px;
     }
     .control img{
         width: 30px; 
         height: 30px;

     }
     .control img:nth-child(2){
         margin:0 50px;
     }
      .control_bottom{
        width:calc(90vw - 20px);
        margin:10px  auto;
        display: flex;
        flex-wrap: nowrap;
        justify-content: space-between;
        
      }
      .control_bottom img{
        width: 20px;
        height: 20px;
      }
      .time{
        width:calc(90vw - 20px);
        margin: 9px auto;
      }
      .bottom-item{
        width:calc(90vw - 20px);
        margin:30px  auto;
        display: flex;
        flex-wrap: nowrap;
        justify-content: space-between;
      }
      .bottom-item img{
          width: 22px;
          height: 22px;
      }
</style>



