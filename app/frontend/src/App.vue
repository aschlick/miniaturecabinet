<template>
  <div>
    <TitleBar :loggedIn="loggedIn"/>
    <router-view></router-view>
  </div>
</template>

<script>
import TitleBar from './components/TitleBar'
import auth from './services/auth'

export default {
  name: "App",
  components: {
    TitleBar
  },
  data: () => {
    return {
      loggedIn: !!auth.token
    }
  }
}
</script>