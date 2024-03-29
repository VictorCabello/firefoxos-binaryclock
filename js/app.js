// Generated by CoffeeScript 1.6.3
(function() {
  requirejs.config({
    baseUrl: 'js/lib',
    paths: {
      app: '../app'
    }
  });

  requirejs(['jquery', 'foundation.min', 'app/NavBar'], function() {
    var App, myApp;
    App = (function() {
      function App(parent) {
        this.parent = parent;
        console.log('creating ...');
        this.navBar = new NavBar(this.parent);
      }

      return App;

    })();
    myApp = new App($('body'));
    return $(document).foundation();
  });

}).call(this);
