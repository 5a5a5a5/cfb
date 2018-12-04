<template>
    <div>
        <div class="grid">
            <div v-for="(item,i) in list" :key="i" class="grid-item">
                <img src="" alt="">
                <span>{{item.title}}</span>
            </div>
        </div>
        <div class="popular">
            <div class="pop-item">
                <span>流行区</span>
            </div>
            <div v-for="item in 2" :key="item" class="pop-list">
                <div></div>
                <div>
                    <div class="list-name">编辑推荐</div>
                    <div>Lorem ipsum</div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            list:[]
        }
    },
    methods:{

    },
    components:{
    }
}
</script>
<style scoped>
    .grid{
        padding:30px 5vw;
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        background: #f6f6f6;
    }
    .grid-item{
        width: 25%;
        display:flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding:5px 0;

    }
    .grid-item img{
        width: 38px;
        height: 38px;
    }
    .grid-item span{
        margin-top:6px;
        font-size:13px;
    }
    .popular{
        padding: 19px 0 0;
    }
    .pop-item{
        width: 90vw;
        margin: 0 auto;
        color: #ec7085;
        font-size:16px;
        font-weight: bold;
        position: relative;
    }
    .pop-item span{
        margin-left: 10px;
    }
    .pop-item::before{
        content: "";
        width: 3px;
        height: 17px;
        background: #fc6d63;
        position: absolute;
        left:0px;
        bottom: 1px;
    }
     .pop-item::after{
        content:"";
        width:10px;
        height: 10px;
        position: absolute;
        border-top:2px solid #9f9f9f;
        border-right:2px solid #9f9f9f;
        transform: rotate(45deg);
        right: 10px;
        top: 0;
     }
      .pop-list{
        display: flex;
        flex-wrap: nowrap;
        padding:20px 5vw 12px;
        border-bottom:1px solid #ccc;
    }
     .pop-list>div:nth-child(1){
         background-repeat: no-repeat;
         background-size: cover;
         background-position: 50%;
         width: 60px;
         height: 60px;
     }
     .pop-list>div:nth-child(2){
         width: calc(100% - 80px);
         font-size:12px;
         color: #333;
         margin-left: 20px;
         display: flex;
         justify-content: center;
         align-items: left;
         flex-direction: column;
     }
     .pop-list>div:nth-child(2)>div:nth-child(1){
         margin-bottom:6px;
     }
     .pop-list .list-name{
        font-size:15px;
        font-weight: bold;
     }
</style>

