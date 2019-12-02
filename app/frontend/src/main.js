import Vue from "vue";
import App from "./App.vue";
import Buefy from "buefy";
import "buefy/dist/buefy.css";
import "./registerServiceWorker";
import VueRouter from "vue-router";
import LogIn from './components/LogIn';

Vue.config.productionTip = false;
Vue.use(Buefy);
Vue.use(VueRouter);

const routes = [
  { path: '/login', component: LogIn }
]

const router = new VueRouter({
  mode: 'history',
  routes,
  linkExactActiveClass: 'is-active'
});

new Vue({
  render: h => h(App),
  router
}).$mount("#app");
