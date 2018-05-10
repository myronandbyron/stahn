/* global Vue, VueRouter, axios */

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
      errors: []
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
      fabrics: []
    };
  },
  created: function() {
  },
  methods: {
    // setCurrentItem: function(inputItem) {
    //   this.currentItem = inputItem;
    // },
    // setCurrentFabric: function(inputFabric) {
    //   this.currentFabric = inputFabric;
    // },
    showAllItems: function() {
      axios.get("/items/").then(function(response){
        this.items = response.data;
      }.bind(this));
    },
    showAllFabrics: function() {
      axios.get("/fabrics").then(function(response){
        this.fabrics = response.data;
      }.bind(this));
    }
  }
};

var ItemShowPage = {
  template: "#show-item-page",
  data: function() {
    return {
      item: {}
    };
  },
  created: function(){
    axios.get("/items/" + this.$route.params.id).then(function(response) {
      this.item = response.data;
    }.bind(this));
  }
};

var FabricShowPage = {
  template: "#show-fabric-page",
  data: function() {
    return {
      fabric: {}
    };
  },
  created: function(){
    axios.get("/fabrics/" + this.$route.params.id).then(function(response) {
      this.fabric = response.data;
    }.bind(this));
  }
};

var MeasurementsNewPage = {
  template: "#measurements-new-page",
  data: function() {
    return {
      neck: "",
      full_chest: "",
      full_shoulder: "",
      right_sleeve: "",
      left_sleeve: "",
      right_full_sleeve: "",
      left_full_sleeve: "",
      bicep: "",
      wrist: "",
      waist_stomach: "",
      hips_seat: "",
      front_jacket: "",
      front_chest: "",
      back_width: "",
      half_shoulder_right: "",
      half_shoulder_left: "",
      full_back_length: "",
      half_back_length: "",
      trouser_waist: "",
      trouser_outseam: "",
      trouser_inseam: "",
      crotch: "",
      thigh: "",
      knee: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        neck: this.neck,
        full_chest: this.full_chest,
        full_shoulder: this.full_shoulder,
        right_sleeve: this.right_sleeve,
        left_sleeve: this.left_sleeve,
        right_full_sleeve: this.right_full_sleeve,
        left_full_sleeve: this.left_full_sleeve,
        bicep: this.bicep,
        wrist: this.wrist,
        waist_stomach: this.waist_stomach,
        hips_seat: this.hips_seat,
        front_jacket: this.front_jacket,
        front_chest: this.front_chest,
        back_width: this.back_width,
        half_shoulder_right: this.half_shoulder_right,
        half_shoulder_left: this.half_shoulder_left,
        full_back_length: this.full_back_length,
        half_back_length: this.half_back_length,
        trouser_waist: this.trouser_waist,
        trouser_outseam: this.trouser_outseam,
        trouser_inseam: this.trouser_inseam,
        crotch: this.crotch,
        thigh: this.thigh,
        knee: this.knee,
      };
      axios
        .post("/measurements", params)
        .then(function(response) {
          router.push("/");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

var router = new VueRouter({
  routes: [
    { path: "/", component: HomePage },
    { path: "/items/:id", component: ItemShowPage },
    { path: "/fabrics/:id", component: FabricShowPage},
    { path: "/signup", component: SignupPage },
    { path: "/login", component: LoginPage },
    { path: "/measurements/new", component: MeasurementsNewPage}
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

