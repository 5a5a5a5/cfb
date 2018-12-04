<template>
    <div class="register">
        <div class="top mythem">
            <div @click="back" class="arrow"></div>
            <span>手机注册</span>
        </div>
        <div class="register-box">
            <p>
                <input @input="check" v-model="phone" type="number"  placeholder="输入你的手机号">
            </p>
             <p>
                <input v-model="upwd" maxlength="20" minlength="6" type="password" placeholder="输入你的密码（6-20位数字或英文）">
            </p>
            <p class="reg">
                <input type="text" placeholder="请输入验证码">
                <input @click="get_m" type="button" value="获取验证码">
            </p>
            <p class="ag">
                <input v-model="agree" type="checkbox" name="agree" id="agree">
                <span>同意《中国人民共和国网游用户协议》《隐私政策》</span>
            </p>
        </div>
        <button @click="register" class="mybtn">注册</button>
    </div>
</template>
<script>
export default {
    data(){
        return{
            phone:"",
            upwd:"",
            agree:false
        }
    },
    methods:{
        get_m(){
            this.$toast({
                message: '功能暂未实现请直接注册',
                position: 'top',
                duration: 1000,
            })
        },
        check(){
            if(this.phone.length>11){
                this.$toast({
                    message: '手机号不合法',
                    position: 'top',
                    duration: 1000,
                })
            }
        },
        register(){
            if(this.phone.length!==11){
                this.$toast({
                    message: '手机号格式不正确',
                    position: 'top',
                    duration: 1000,
                })
            }else
            if(this.upwd.length<6||this.upwd.length>20){
                this.$toast({
                    message: '密码格式不正确',
                    position: 'top',
                    duration: 1000,
                })
            }else if(!this.agree){
                this.$toast({
                    message: '同意条约后才能注册',
                    position: 'top',
                    duration: 1000,
                })
            }else{
                var phone=this.phone;
                var upwd=this.upwd;
                var url="http://localhost:3000/sign/register";
                this.$http.post(url,{phone,upwd}).then(response=>{
                    var code=response.body.code;
                    if(code==-2){
                        this.$toast({
                            message: '手机号已注册',
                            position: 'top',
                            duration: 1000,
                        })
                    }else if(code==-1){
                        this.$toast({
                            message: '请检查网络',
                            position: 'top',
                            duration: 1000,
                        })
                    }else if(code==1){
                        this.$toast({
                            message: '注册成功',
                            position: 'top',
                            duration: 1000,
                        })
                        setTimeout(()=>{
                            this.$router.push({path:"login"});
                        },1000)
                    }
                })
            }
        },
        back(){
            this.$router.push({path:"login"});
        }
    }
    
}
</script>

<style scoped>
    .top{
        width: 100%;
        padding: 10px 0;
        box-sizing: border-box;
        position: relative;
        text-align: center;
    }
    .top>div{
        position: absolute;
        left: 6vw;
        top:15px;
    }
    .top span{
        color: #fff;
        font-size: 16px;
        
    }
    input{
        width: 100%;
        border:2px solid #ff8095;
        font-size: 16px;
        padding: 10px;
        border-radius: 6px;
    }
    .register-box{
        width: 90vw;
        margin: 16vw auto 0;
    }
    .register-box p{
        margin-bottom:12px;
        display: flex;
        justify-content: space-between;
    }
    .register-box .reg input:nth-child(1){
        width: 58vw;
    }
    .register-box .reg input:nth-child(2){
        width: 20vw;
        font-size: 12px;
        padding: 0;
        color: #fff;
        background: #ff8095;
    }
    .ag{
        margin-top: 20px;
        display: block !important;
    }
    .ag input{
        width: 20px;
        height: 20px;
        float: left;
    }
    .ag span{
        font-size: 13px;
        float: left;
        margin:1px 0 0 5px;
    }
</style>
