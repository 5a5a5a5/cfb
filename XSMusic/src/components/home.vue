<template>
    <div :style="stop" class="con">  
        <Search @music="music" :change="change" @close="close" :style="showSearch" class="search"></Search>   
        <Header @search="search" @sendnum="getnum"  @side="side"></Header>
        <Footer class="footer" :style="top_tran" @get="get"></Footer>  
        <Footera class="footer" :style="top_tran" @get_1="get_1"></Footera>
        <div  :style="tran_2" class="bigbox">
            <div class="forum_box">
                <div class="forum-item" :style="for_tran">
                    <Forum  :class="jump[0]"></Forum>
                    <Active :class="jump[1]"></Active>                
                </div>
            </div>
            <div  class="index_box">      
                 <div :style="tran" class="box">
                    <Index @music="music" :class="jump[2]" class="index"></Index>
                    <Rank @music="music" :class="jump[3]" class="block"></Rank>
                    <Radio @music="music" :class="jump[4]" class="radio"></Radio>
                </div>
            </div>
            <div class="my_box">
                <div class="my-item">
                    <Profile :class="jump[5]"></Profile>
                </div>
            </div>
        </div>
        <Side class="side" :style="tran_1"></Side>
        <div @click.stop="hidden" class="d_shadow" :style="sh"></div>
        <Music @next="next" @showlist="showlist" :d_music="d_music" :style="showMusic" class="music"></Music>
        <Playlist @music="music"  :style="list_style" class="playlist" @list_hidden="list_hidden"></Playlist>
        
    </div>
</template>
<script>
import Footer from './subcomponents/footer.vue'
import Footera from './subcomponents/footer_a.vue'
import Header from './subcomponents/header.vue'
import Playlist from './subcomponents/playlist.vue'
import Index from './subcomponents/index.vue'
import Block from './subcomponents/block.vue'
import Rank from './subcomponents/rank.vue'
import Side from './subcomponents/side.vue'
import Radio from './subcomponents/radio.vue'
import Search from './subcomponents/search.vue'
import Music from './subcomponents/playmusic.vue'
import Profile from './profile.vue'
import Forum from './forum.vue'
import Active from './active.vue'
export default {
    data(){
        return{
            num:0,
            tran:"transform:translate(0)",
            tran_1:"transform:translate(-100%)",
            sh:"",
            tran_2:"transform:translate(-100vw)",
            top_tran:"transform:translate(-100vw)",
            for_tran:"transform:translate(0)",
            jump:["jump","jump","","jump","jump","jump"],
            one:[2,0,5],
            showSearch:"",
            change:"transform:translateY(10px)",
            showMusic:"",
            d_music:{},
            list_style:"",
            stop:"",
            m_id:0
        }
    },
    methods:{
        getnum(data){   //顶部导航
            if(data==0){
                for(var i=0;i<this.jump.length;i++){
                    if(i==this.one[1]){
                        this.jump[i]=""
                    }else{
                        this.jump[i]="jump"
                    }
                }
            }else if(data==1){
                 for(var i=0;i<this.jump.length;i++){
                    if(i==this.one[0]){
                        this.jump[i]=""
                    }else{
                        this.jump[i]="jump"
                    }
                }
            }else if(data==2){
                 for(var i=0;i<this.jump.length;i++){
                    if(i==this.one[2]){
                        this.jump[i]=""
                    }else{
                        this.jump[i]="jump"
                    }
                }
            }
            this.top_tran="transform:translate("+data*-100+"vw)"  
            this.tran_2="transform:translate("+(data*-100)+"vw)" 
        },
        side(data){     //侧边栏
            this.tran_1="transform:translate(0)";
            this.sh="display:block;background:rgba(0,0,0,0.8)";
        },
        hidden(){
           this.tran_1="transform:translate(-100%)";
           this.sh="display:block;background:rgba(0,0,0,0)";
           setTimeout(()=>{
               this.sh="display:none";
           },500)
        },
        get(data){      //次导航1
            this.tran="transform:translate("+(data*-100)+"vw)"
             if(data==0){
                this.jump=["jump","jump","","jump","jump","jump"]
                this.one[0]=2;
            }else if(data==1){
                this.jump=["jump","jump","jump","","jump","jump"]
                this.one[0]=3;
            }else if(data==2){
                this.jump=["jump","jump","jump","jump","","jump"]
                this.one[0]=4;
            }
        },
        get_1(data){    //次导航2
            if(data==0){
                this.jump=["","jump","jump","jump","jump","jump"]
                this.one[1]=0;
            }else if(data==1){
                 this.jump=["jump","","jump","jump","jump","jump"]
                 this.one[1]=1;
            }
            this.for_tran="transform:translate("+(data*-100)+"vw)"
        },
        search(data){
            this.showSearch="z-index:2000;opacity:1";
            this.change="transform:translateY(0)"
        },
        close(data){
            this.showSearch="";
            this.change="transform:translateY(10px)"
        },
        music(id){
            this.showMusic="z-index:100;opacity:1";
            this.m_id=id;
            this.list_style="";
            this.sh="display:block;background:rgba(0,0,0,0)";
            setTimeout(()=>{
                this.sh="display:none";
            },500)
            var url="http://localhost:3000/main/music?m_id="+id;
            this.$http.get(url).then(res=>{
                this.d_music=res.body[0];
            });
            this.showSearch="";
            this.change="transform:translateY(10px)";
        },
        list_hidden(){
            this.list_style="";
            this.sh="display:block;background:rgba(0,0,0,0)";
            setTimeout(()=>{
                this.sh="display:none";
            },500)
        },
        showlist(){
            this.list_style="transform:translate(0)";
            this.sh="display:block;background:rgba(0,0,0,0.8)";
        },
        next(){
            this.m_id++;
            if(this.m_id>1832){
                this.m_id=1801
            }
             var url="http://localhost:3000/main/music?m_id="+this.m_id;
            this.$http.get(url).then(res=>{
                this.d_music=res.body[0];
            })
        }
    },
    components:{
        Header,
        Footer,
        Index,
        Block,
        Rank,
        Side,
        Radio,
        Profile,
        Footera,
        Forum,
        Active,
        Search,
        Music,
        Playlist
    },
    created(){
     
    }
}
</script>
<style scoped>
.bigbox{
    width: 300vw;
    display:flex;
    flex-wrap: nowrap;
    transform: translate(-100vw);
    position: relative;
    transition: all 0.5s;
}
.bigbox>div{
    width: 100vw;
    overflow: hidden;
}
.con{
    position: relative;
}
.box{
    width: 300vw;
    margin-top:100px;
    display: flex;
    flex-wrap: nowrap;
    transition: all 0.5s;
}
.index,.block,.radio{
    width: 100vw;
    overflow: hidden;
}
.side{
    transition: all 0.5s;
}
.d_shadow{
    height: 100vh;
    width: 100vw;
    position: fixed;
    left: 0;
    top:0px;
    z-index: 300;
    background:rgba(0,0,0,0);
    transition:all 0.5s;
    display: none;
}
.my-item{
    width: 100vw;
    margin-top: 60px;
}
.footer{
    transition: all 0.5s;
}
.forum-item{
    width: 200vw;
    display: flex;
    flex-wrap: nowrap;
    transition: all 0.5s;
    margin-top:100px;
}
.jump{
    height:calc(100vh - 100px) !important;
    overflow: hidden !important;
}
.search{
    z-index: -10;
    opacity: 0;
    transition: all 0.5s;
}
.music{
    z-index: -10;
    opacity: 0;
    transition: all 0.1s;
}
.playlist{
    transform: translatey(100%);
    transition: all 0.5s;
}
</style>



