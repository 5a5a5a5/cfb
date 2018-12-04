<template>
    <div class="detail">
        <div class="detail-left">
            <div :style="{backgroundImage:'url('+d_music.picture+')'}" class="m-img"></div>
            <div class="m-desc">
                <p :class="an">{{d_music.m_name}}</p>
                <p>{{d_music.auther}}</p>
            </div>
        </div>
        <div class="detail-right">
            <img @click="play_m" :src="changeimg" alt="">
            <img @click="next" src="../../public/music/next.png" alt="">
            <img @click="list" src="../../public/music/list.png" alt="">
        </div>
        <audio id="audio" :src="d_music.m_address" loop></audio>
    </div>
</template>
<script>
export default {
    data(){
        return{
            changeimg:"/static/image/play.png",
            an:""
        }
        
    },
    methods:{
        play_m(){
            if(this.changeimg=="/static/image/play.png"){
                this.changeimg="/static/image/pause.png"
                this.an="an";
                audio.play()
            }else{
                this.changeimg="/static/image/play.png";
                this.an="";
                audio.pause()
            }
        },
        list(){
            this.$emit("showlist",1)
        },
        next(){
            this.$emit("next",1)
        }
    },
    props:["d_music"],
    watch:{
        d_music(){
            this.changeimg="/static/image/play.png";
            this.an="";
            audio.pause();
            audio.currentTime=0;
        }
    }
}
</script>
<style scoped>
    .detail{
        width: 100%;
        height: 60px;
        background: #222;
        position: fixed;
        bottom:0;
        left: 0;
        display: flex;
        flex-wrap: nowrap;
        justify-content: center;
        align-items: center;
        box-shadow: 5px 0 10px #222;
    }
    .detail>div{
        width: 50%;
        height: 100%;
        display: flex;
        flex-wrap: nowrap;
        justify-content: left;
        align-items: center;
    }
    .m-img{
        width: 50px;
        height: 50px;
        margin-left:4vw;
        background-position: 50%;
        background-size: cover;
        background-repeat: no-repeat;
        box-shadow: 0 0 6px #999;
    }
    .m-desc{
        font-size: 14px;
        color:#fff;
        margin-left: 15px;
        width: 90px;
        overflow: hidden;
    }
    .m-desc>p{  
       white-space: nowrap; 
    }
    .m-desc>p:last-child{
        color:#999;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    .detail-right{
        justify-content: flex-end !important;
    }
    .detail-right img{
        width: 30px;
        height: 30px;
    }
    .detail-right img:nth-child(2){
        margin:0 20px;
        width: 25px;
        height: 25px;
    }
    .detail-right img:nth-child(3){
        margin-right: 4vw;
    }
    .an{
        animation: donghua 10s linear infinite;
    }
    @keyframes donghua{
        0%{
            transform: translate(0);
        }
        50%{
            transform: translate(-100%);
        }
        50.01%{
            transform: translate(100%);
        }
        100%{
            transform: translate(0);
        }
    }
</style>


