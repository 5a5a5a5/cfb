<template>
    <div class="login">
        <img class="logo" src="../public/login/logo.png" alt="">
        <div class="user_login">
            <div>
                <img src="../public/login/uname.png" alt="">
                <input v-model="uname" name="uname" type="text" placeholder="用户名/邮箱/手机号">
            </div>
            <div>
                <img src="../public/login/upwd.png" alt="">
                <input v-model="upwd" name="upwd" type="password" placeholder="密码">
            </div>
        </div>
        <button @click="sign" class="mybtn">登录</button>
        <div class="forget">
            <div @click="register">立即注册</div>
            <div @click="forget">忘记密码</div>
        </div>
        <div class="or">
            <span>或</span>
        </div>
        <div class="icon">
            <img src="../public/login/wechat.png" alt="">
            <img src="../public/login/weibo.png" alt="">
            <img src="../public/login/facebook.png" alt="">
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            uname:"",
            upwd:""
        }
    },
    methods:{
        sign(){
            var uname=this.uname;
            var upwd=this.upwd;
            var url="http://localhost:3000/sign/login";
            this.$http.post(url,{uname,upwd}).then(response=>{
                var code=response.body.code;
                var msg=response.body.msg;
                if(code==1){
                    this.$toast({
                        message: '登录成功',
                        position: 'top',
                        duration: 3000,
                    });
                    var storage=window.localStorage;
                    storage.setItem("uname",this.uname);
                    storage.setItem("uimg",msg)
                    setTimeout(() => {
                      this.$router.push({path:"home"});  
                    }, 3000);
                }else{
                    this.$toast({
                        message: '用户名或密码错误',
                        position: 'top',
                        duration: 3000,
                    });
                }
            })
        },
        register(){
            this.$router.push({path:"register"});
        },
        forget(){
             this.$router.push({path:"forget"});
        }
    }
}
</script>

<style scoped>
    .login{
        width: 100%;
        height: 100vh;
        text-align:center;
        overflow: hidden;
        position: relative;
    }
    .login .logo{
        width: 45%;
        display: block;
        margin: 13% auto 6%;
    }
    .user_login{
        width: 100%;
    }
    .user_login>div{
        display: flex;
        justify-content: space-around;
        width: 100%;
        position: relative;
    }
    .user_login>div>img{
        position: absolute;
        width: 20px;
        left:calc(15vw + 20px);
        bottom:8px;
    }
    .user_login>div>input{
        width: 60vw;
        border:0;
        border-bottom:1px solid #333;
        height: 30px;
        text-indent: 2rem;
        margin-top:14px;
        font-size:15px;
    }
    .forget{
        width: 100%;
        display: flex;
        justify-content: center;
        position: absolute;
        bottom:37vw;
    }
    .forget>div{
        padding:0 20px;
        font-size:12px;
        color: #1e1e1e;
    }
    .or{
        width: 100%;
        position: absolute;
        bottom:23vw;
    }
    .or>span::before{
        content: "";
        width: 40px;
        height: 1px;
        background: #000;
        position: absolute;
        left:30vw;
        top:50%;
    }
    .or>span::after{
        content: "";
        width: 40px;
        height: 1px;
        background: #000;
        position: absolute;
        right:30vw;
        top:50%;
    }
    .icon{
        width: 100%;
        display: flex;
        justify-content: center;
        position: absolute;
        bottom: 12vw;
    }
    .icon img{
        width: 30px;
        height: 30px;
    }
    .icon img:nth-child(2){
        margin: 0 30px;
    }
</style>

