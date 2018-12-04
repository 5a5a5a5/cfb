<template>
    <div class="rank-list">
        <div class="title">
            <span>官方榜</span>
        </div>
        <div v-for="(item,i) in list" :key="i" class="rank_item">
            <div @click="music(item[0].m_id)" :style="{backgroundImage:'url('+item[0].picture+')'}"></div>
            <div>
                <span @click="music(item[0].m_id)">{{item[0].m_name}}</span>
                <span @click="music(item[1].m_id)" class="middle">{{item[1].m_name}}</span>
                <span @click="music(item[2].m_id)">{{item[2].m_name}}</span>
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
            list:[]
        }
    },
    methods:{
        getRankList(){
            var url="http://localhost:3000/main/rank";
            this.$http.get(url).then(res=>{
                for(var i=0;i<res.body.length/3;i++){
                    var arr=[];
                    for(var j=0;j<3;j++){
                        arr.push(res.body[j+i*3])
                    }
                    this.list.push(arr);
                }
            })
        },
        music(id){
            this.$emit("music",id)
        }
    },
    created(){
        this.getRankList()
    },
    components:{
        Loading
    }
}
</script>
<style scoped>
    .rank-list{
        width: 90vw;
        margin:19px auto;
    }
    .title{
        color: #222;
        font-size:16px;
        font-weight: bold;
        position: relative;
        
    }
    .title span{
        margin-left: 10px;
    }
    .title::before{
        content: "";
        width: 3px;
        height: 17px;
        background: #222;
        position: absolute;
        left:0px;
        bottom: 1px;
    }
    .rank_item{
        display: flex;
        flex-wrap: nowrap;
        justify-content:space-between;
        margin:20px 0;
    }
    .rank_item>div:first-child{
        width: 100px;
        height: 100px;
        background-size:cover;
        background-position: 50%;
        box-shadow: 0 0 6px #999;
    }
    .rank_item>div:last-child{
        width: calc(100% - 120px);
        display:flex;
        flex-direction: column;
        justify-content: center;
        align-items: left;
        border-bottom:1px solid #ccc;
        color:#222;
        font-size: 14px;
    }
    .middle{
        margin:13px 0;
    }
</style>


