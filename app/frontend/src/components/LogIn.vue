<template>
  <div class="level">
    <div class="level-item">
      <div class="card" id="login-card">
        <div class="card-content">
          <div class="field">
            <label for="user-email" class="label">Email</label>
            <div class="control">
              <input class="input" type="email" id="user-email">
            </div>
          </div>
          <div class="field">
            <label for="user-password" class="label">Password</label>
            <div class="control">
              <input class="input" type="password" id="user-password">
            </div>
          </div>
        </div>
        <div class="card-footer">
          <router-link class="button is-info card-footer-item"
            to="/register">
            Register
          </router-link>
          <button class="button is-primary card-footer-item">
            Submit
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data: () => {
    return {
      username: '',
      password: ''
    }
  },
  methods: {
    login: () => {
      let {username, password} = this;

    } 
  }
}
</script>

<style>
#login-card {
  margin-top: 1rem;
}
</style>