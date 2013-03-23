

window.onload = function() {
  var val1 = require("./first");

  head.js("bundle/second.js", function() {
    console.log("Lazy bundle loaded. Requiring now.");
    var val2 = require("./second");
    document.body.innerHTML = val1 === "first" && val2 === "second";
  });
};
