// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
Vue.config.productionTip = false
/* eslint-disable no-new */
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
Vue.use(ElementUI)
import Mint from 'mint-ui';
import 'mint-ui/lib/style.css'
Vue.use(Mint)
import VueResource from "vue-resource"
Vue.use(VueResource)
Vue.http.options.emulateJSON =  true;


//过滤器
Vue.filter("dateFormat",function(datestr,pattern="YYYY-MM-DD"){
  return new Date(datestr).toLocaleString();
});
Vue.filter("sliceStr",function(data,length){
  var str=data.slice(0,length)+"..."
  return str
})

new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
