<template>
    <div>
        <div class="search">
            <div class="search-top">
                <input v-model="res" :style="change" type="text" placeholder="搜索关键词">
                <div @click="close" class="close">
                    <span>X</span>
                </div>
            </div>
            <div @click="close" class="close-bottom">
                <span>关闭</span>
            </div>

            <div class="result">
               <div v-if="hidden" :style="change" class="res-tip">
                   <p>热门搜索</p>
                   <ul>
                       <li>李荣浩</li>
                       <li>昨日青空王一博</li>
                       <li>金庸</li>
                       <li>张杰新歌</li>
                       <li>少年音乐大战</li>
                       <li>光年之外</li>
                       <li>花粥</li>
                       <li>不染</li>                  
                   </ul>
               </div>
               <div v-if="!hidden" class="mlist">
                   <ul>
                       <li v-for="(item,i) in list" :key="i" @click="music(item.m_id)">
                            <img :src="item.picture" alt="">
                            <div>
                                <p v-cloak>{{item.m_name}}</p>
                                <P v-cloak>{{item.auther}}</P>
                            </div>
                       </li>
                   </ul>
               </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            res:"",
            hidden:true,
            list:[]
        }
    },
    methods:{
        close(){
            this.$emit("close",1)
        },
        music(id){
            this.$emit("music",id)
        }
    },
    props:["change"],
    watch:{
        res(){
            if(this.res.trim().length>0){
                this.hidden=false;
                var url="http://localhost:3000/main/selectlist?m_name="+this.res+"&auther="+this.res;
                this.$http.get(url).then(res=>{ 
                    this.list=res.body
                })
            }else{
                 this.hidden=true;
            }
        }
    }
}
</script>
<style scoped>
.search{
    width:100vw;
    height: 100vh;
    position: fixed;
    top: 0;
    left: 0;
    background: #222;
}
.search-top{
    width: 100%;
    height: 44px;
    background: #333;
    display: flex;
    flex-wrap: nowrap;
    justify-content: space-between;
    padding:4px 10px;
    box-sizing: border-box;
    align-items: center;
}
.search-top .close{
    width: 22px;
    height: 22px;
    border:2px solid #fff;
    border-radius: 50%;
    text-align: center;
    line-height: 23px;
    color: #fff;
}
.search-top input{
    width: calc(100% - 40px);
    height: 30px;
    border-radius: 30px;
    outline: none;
    border:none;
    padding-left:20px;
    box-sizing: border-box;
    color: #fff;
    background: #666;
    transition: transform 0.8s;
}
.close-bottom{
    width: 50vw;
    position: absolute;
    bottom: 20px;
    left:25vw;
    height: 30px;
    border:3px solid #fff;
    border-radius: 30px;
    text-align: center;
}
.close-bottom span{
    line-height: 30px;
    color: #fff;
}
.result{
    width: 90vw;
    margin:30px 5vw;
    
}
.res-tip{
    transition: transform 0.8s;
}
.res-tip p{
    color:#666;
    margin-bottom: 20px;
}
.res-tip ul li{
    float: left;
    padding: 2px 10px;
    border:1px solid #aaa;
    color: #aaa;
    border-radius: 15px;
    margin-right: 10px;
    margin-bottom: 10px;
    font-size: 14px;
}
.mlist{
    color:#fff;
    font-size: 13px;
}
.mlist li{
    margin-bottom:15px;
    display: flex;
    flex-wrap: nowrap;
    justify-content: left;
    align-items: center;
}
.mlist li img{
    width: 40px;
    height: 40px;
    margin-right: 15px;
}
.mlist li div p:last-child{
    color: #666;
    margin-top:4px;
}
</style>


