console.log("Double starting");
var val1 = require("./first");
var val2 = require("./second");

window.onload = function() {
  document.body.innerHTML = val1 === "first" && val2 === "second";
};
