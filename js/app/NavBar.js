// Generated by CoffeeScript 1.6.3
var NavBar;

NavBar = (function() {
  function NavBar(parent) {
    this.parent = parent;
    console.log('creating ...');
    this.initLayout();
  }

  NavBar.prototype.initLayout = function() {
    var myParent;
    myParent = this.parent;
    return $.ajax({
      url: "navBar.html",
      async: false,
      mimeType: "text/plain",
      success: function(data) {
        return myParent.append(data);
      }
    });
  };

  return NavBar;

})();
