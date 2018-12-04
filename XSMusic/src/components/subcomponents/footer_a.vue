<template>
    <div class="footer mythem">
        <div  @click="btn1" class="footer-item" :style="arr[0]">
            <span>广场</span>
        </div>
        <div  @click="btn2" class="footer-item" :style="arr[1]">
            <span>活动</span>
        </div>
        <div class="line" :style="line"></div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            arr:["color:#ccc","color:#ccc"],
            line:"transform: translate(34vw)"
        }
    },
    methods:{
       btn1(){
           this.arr=["color:#fff","color:#ccc"];
           this.line="transform: translate(34vw)";
           this.$emit("get_1",0)
       },
        btn2(){
           this.arr=["color:#ccc","color:#fff"];
           this.line="transform: translate(58vw)";
           this.$emit("get_1",1)
       }
    }
}
</script>
<style scoped>
    .footer{
        width: 100%;
        height: 40px;
        display: flex;
        position: fixed;
        top:60px;
        left: 0;
        z-index: 100;
        justify-content: center; 
        align-items: center;
        padding: 5px 0;
        box-sizing: border-box;
    }
     .footer-item{
        display: flex;
        flex-direction: column;
        text-align: center;
        position: relative;
        align-items: center;
        width:24%;
     }
     .footer-item>span{ 
        font-size:12px;
        margin-top:-10px;
     }
     .line{
         position: absolute;
         width: 30px;
         height: 2px;
         background: #fff;
         left:0;
         bottom:8px;
         transition:all 0.5s;
         transform:translate(22vw)
     }
     .active{
         color: #fff !important;
     }
</style>

