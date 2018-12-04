<template>
    <div class="playlist">
        <div>
            <p class="list-top">播放列表</p>
            <ul>
                <li  v-for="(item,i) in list" :key="i" @click="music(item.m_id)">
                    <p v-cloak>{{item.m_name}}</p>
                    <p v-cloak>{{item.auther}}</p>
                </li>
            </ul>
            <div @click="hidden" class="colse">
                <span>关闭</span>
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
        getlist(){
            var url="http://localhost:3000/main/musiclist"
            this.$http.get(url).then(res=>{
                this.list=res.body;
            })
        },
        hidden(){
            this.$emit("list_hidden",1)
        },
        music(data){
            this.$emit("music",data)
        }
    },
    created(){
        this.getlist()
    }

}
</script>
<style scoped>
   .playlist{
       width: 100vw;
       height: 55vh;
       position: fixed;
       background: #222;
       bottom:0;
       left: 0;
       z-index:500;
       padding:10px 5vw;
       box-sizing: border-box;
   } 
   .list-top{
        color:#fff;
        font-size: 15px;
        border-bottom: 1px solid #ccc;
        padding:5px 0 10px;
        display: inline-block;
   }
   .playlist ul{
       width: 100%;
       height: 40vh;
       overflow-y:auto;
   }
   .playlist li{
       color: #999;
       font-size: 13px;
       padding:5px 0;
       border-bottom: 1px solid #444;
       position: relative;
   }
   .playlist li p:first-child{
       color: #fff;
       margin-bottom:5px;
   }
   .colse{
       text-align: center;
       color: #fff;
       width: 40vw;
       margin: 10px auto;
       border:3px solid #fff;
       border-radius: 20px;
       font-size: 14px;
       padding: 3px 0;
   }
</style>


