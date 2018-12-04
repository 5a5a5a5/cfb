<template>
    <div class="header mythem">
        <div @click.stop="show" class="avatar">
            <img :src="avatar" alt="">
        </div>
        <div @click.stop="btn($event)" class="nav">
            <img class="active" :src="img1" alt="">
            <img :src="img2" alt="">
            <img :src="img3" alt="">
        </div>
        <div @click="search" class="search">
            <img  src="../../public/header/search.png" alt="">
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            active:"",
            data:0,
            img1:"http://localhost:3000/image/dongtai.png",
            img2:"http://localhost:3000/image/music_1.png",
            img3:"http://localhost:3000/image/my.png",
            avatar:"",
            uname:""
        }
    },
    methods:{
        btn(e){
            if(e.target.nodeName=="IMG"){
                var father=e.path[1];
                 for(var i=0;i<3;i++){
                    father.children[i].className="";
                    this.img1="http://localhost:3000/image/dongtai.png";
                    this.img2="http://localhost:3000/image/music.png";
                     this.img3="http://localhost:3000/image/my.png";
                }  
                e.target.className="active"
                for(var i=0;i<3;i++){
                    if(e.path[1].children[i].className=="active"){
                        if(i==0){
                            this.img1="http://localhost:3000/image/dongtai_1.png"
                        }else if(i==1){
                            this.img2="http://localhost:3000/image/music_1.png"
                        }else if(i==2){
                            this.img3="http://localhost:3000/image/my_1.png"
                        }
                        this.$emit("sendnum",i)
                    }
                }
            }
        },
        show(){
            this.$emit("side",this.data)
        },
        search(){
            this.$emit("search",this.data)
        }
        
    },
    created(){
        var storage=window.localStorage;
        this.uname=storage.getItem("uname");
        this.avatar=storage.getItem("uimg");
    }
}
</script>
<style scoped>
   .header{
    width: 100%;
    display: flex;
    height: 60px;
    flex-wrap: nowrap;
    justify-content: space-between;
    align-items: center;
    position: fixed;
    top:0px;
    left: 0;
    z-index: 100;
    box-sizing: border-box;
   }
   .header .avatar>img{
       width: 40px;
       height: 40px;
       border-radius: 50%;
       margin:3px 0 0 3vw;
   }
   .header .nav{
       display: flex;
       flex-wrap: nowrap;
       width: 170px;
       justify-content: space-around;
       position: absolute;
       left:calc(50% - 85px)
   }
   .nav img{
       width: 25px;
       height: 25px;
   }
   .nav img:nth-child(2){
       width: 27px;
   }
   .header .search>img{
       width: 16px;
       margin-right: 3vw;
   }
   .active{
       color:#fff;
   }
</style>

