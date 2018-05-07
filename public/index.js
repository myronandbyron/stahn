var SignupPage = {
  template: "#signup-page",
  data: function() {
    return {
      name: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        name: this.name,
        email: this.email,
        password: this.password,
        password_confirmation: this.passwordConfirmation
      };
      axios
        .post("/buyers", params)
        .then(function(response) {
          router.push("/login");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

var LoginPage = {
  template: "#login-page",
  data: function() {
    return {
      email: "",
      password: "",
      errors: [],
      message: "First test message"
    };
  },
  methods: {
    submit: function() {
      var params = {
        auth: { email: this.email, password: this.password }
      };
      axios
        .post("/buyer_token", params)
        .then(function(response) {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          router.push("/");
        })
        .catch(
          function(error) {
            this.errors = ["Invalid email or password."];
            this.email = "";
            this.password = "";
          }.bind(this)
        );
    }
  }
};

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      items: [],
      fabrics: [],
      currentItem: {id: "", item_type: "", price: "", image: ""}
    };
  },
  created: function() {
  },
  methods: {
    setCurrentItem: function(inputItem) {
      this.currentItem = inputItem;
    },
    showAllItems: function() {
      axios.get("/items").then(function(response){
        this.items = response.data;
      }.bind(this));
    },
    showAllFabrics: function() {
      axios.get("/fabrics").then(function(response){
        this.fabrics = response.data;
      }.bind(this));
    },
    // popUpItem: function() {
    //   var params = {
    //     id: this.currentItem.id,
    //     item_type: this.currentItem.item_type,
    //     price: this.currentItem.price_per_yard,
    //     image: this.currentItem.image
    //   };
    //   axios.get("/items/" + this.currentItem.id, params).then(function(response){
    //     this.items = response.data;
    //   }.bind(this));
    // },
    // popUpFabric: function() {
    //   axios.get("/fabrics/:id").then(function(response){
    //     this.fabrics = response.data;
    //   }.bind(this));
    // }
  }
};

var router = new VueRouter({
  routes: [
    { path: "/", component: HomePage },
    { path: "/items/:id", component: HomePage },
    { path: "fabrics/:id", component: HomePage},
    { path: "/signup", component: SignupPage },
    { path: "/login", component: LoginPage }
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router,
  created: function() {
    var jwt = localStorage.getItem("jwt");
    if (jwt) {
      axios.defaults.headers.common["Authorization"] = jwt;
    }
  }

});

