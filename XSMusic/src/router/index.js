import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/home.vue'
import Lead from '@/components/Lead.vue'
import Login from '@/components/login.vue'
import Register from '@/components/register.vue'
import Detail from '@/components/detail'
import Forum from '@/components/forum'
import Active from '@/components/active'
import Forget from '@/components/forget.vue'
Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",component:Lead},
    {path:"/home",component:Home},
    {path:"/login",component:Login},
    {path:"/register",component:Register},
    {path:"/detail",component:Detail},
    {path:"/forum",component:Forum},
    {path:"/active",component:Active},
    {path:"/forget",component:Forget},
  ]
})
