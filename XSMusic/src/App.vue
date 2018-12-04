<template>
  <div id="app">
      <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  overflow-x: hidden;
}
body,h1,h2,h3,h4,h5,p,dl,dd,ul,ol,form,input,textarea,th,td,select{
  margin:0;padding:0;
}
li{
    list-style:none;
}
a{
    text-decoration:none;
}
img{
    border:none;
    vertical-align:top;
}
input,textarea,button{
    outline:none;
}
.mythem{
  background: #222;
}
button.mybtn{
  width:68vw;
  height: 12vw;
  border-radius: 13.33vw;
  font-size: 18px;
  color:#fff;
  background: #fc70aa;
  position: absolute;
  bottom:45vw;
  border:0;
  left: calc(50% - 34vw);
} 

.arrow{
  width:10px;
  height: 10px;
  border-top:2px solid #fff;
  border-right:2px solid #fff;
  transform: rotate(-135deg);
}
::-webkit-input-placeholder { 
    color :#ccc;
}
    :-moz-placeholder {
    color: #ccc;
}
::-moz-placeholder { 
    color: #ccc;
}
:-ms-input-placeholder {
    color:#ccc;
}
 .el-slider__button{
    width: 8px !important;
    height: 8px  !important;
    margin-top:-3px;
}
.el-slider__runway,.el-slider__bar{
    height: 3px !important;
}
[v-cloak]{
    display: none;
}
</style>
