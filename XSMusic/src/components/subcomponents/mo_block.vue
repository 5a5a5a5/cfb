<template>
    <div>
        <div class="music">
            <div class="music-title">
                <span v-cloak>{{title}}</span>
            </div>
            <div class="music-item">
                <div v-for="(item,i) in list" :key="i" class="music-list"  @click="musiclist(item.m_id)">        
                    <img :src="item.picture" alt="">
                    <p v-cloak>{{item.m_desc}}</p>
                    <p v-cloak>播放量: {{item.p_num}}</p>  
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
           title:""
        }
    },
    methods:{
        musiclist(id){
            this.$emit("music",id)
        }
    },
    props:["list"],
    created(){  
    },
    updated(){
        this.title=this.list[0].title
    }

}
</script>

<style scoped>
    .music{
        width: 100vw;
        padding:10px 4vw;
        box-sizing: border-box;    
        background: #fff;  
    }
    .music-title{
        width: 100%;
        padding: 10px 0;
    }
    .music-title span{
        color: #222;
        font-size:16px;
        font-weight: bold;
        position: relative;
        margin-left: 10px;
    }
    .music-title span::before{
        content: "";
        width: 3px;
        height: 17px;
        background: #222;
        position: absolute;
        left:-10px;
        bottom: 0px;
    }
    .music-item{
        width: 100%;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    .music-list{
        color: #333;
        width: 43vw;
        font-size: 12px;
    }
    .music-list p{
        width: 100%;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    } 
    .music-list p:nth-child(3){
        color:#999;
    } 
    .music-list img{
        width: 43vw;
        height: 43vw !important;
        border-radius: 8px;
        margin:8px 0 10px;
        box-shadow: 0 0 6px #666;
    }
</style>
