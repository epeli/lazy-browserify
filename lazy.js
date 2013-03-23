
window.onload = function() {
  head.js("bundle/first.js", function() {
    console.log("Lazy bundle loaded. Requiring now.");
    var val = require("./first");
    document.body.innerHTML = val === "first";
  });
};
