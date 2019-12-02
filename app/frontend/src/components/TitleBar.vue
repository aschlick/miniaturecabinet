<template>
  <nav class="navbar is-light is-fixed-top" role="navigation" arai-label="main navigation">
    <div class="container">
      <div class="navbar-brand">
        <a class="navbar-item" href="/">
          Miniature Cabinet
        </a>

        <a role="button" 
          class="navbar-burger burger" 
          aria-label="menu" 
          aria-expanded="false"
          data-target="navbar-options">
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>  
        </a>
      </div>

      <div id="navbar-options" class="navbar-menu">
        <template v-if="loggedIn">

          <div class="navbar-start">
            <a class="navbar-item" 
              v-for="item in routes" 
              v-bind:key="item.name"
              :href="item.url">
              {{item.name}}
            </a>
          </div>
        </template>
        <template v-else>
          <div class="navbar-end">
            <router-link to="/login"
              class="navbar-item">
              Log In
            </router-link>
          </div>
        </template>
      </div>
    </div>
  </nav>
</template>

<script>
 
  const routes = [
    {
      name: 'Collection',
      url: '/collection'
    }
  ]

  document.getElementsByTagName('html')[0]
    .classList.add('has-navbar-fixed-top')

  export default {
    name: 'TitleBar',
    components: {},
    props: {
      loggedIn: Boolean
    },
    data: () => {
      return {
        routes
      }
    }
  }
</script>