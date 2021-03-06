import Vue from 'vue'
import Router from 'vue-router'
import Login from './views/Login.vue'
import Home from './views/Home.vue'

Vue.use(Router)

export default new Router({
	mode:'history',
    routes: [
        {
            path: '/',
            name: 'Login',
            component: Login,
            hidden: true
        }, 
		{
            path: '/home',
            name: 'Home',
            component: Home,
            hidden: true,
            meta: {
                roles: ['admin', 'user']
            }
             
        }, {
            path: '*',
            redirect: '/home'
        }
    ]
})