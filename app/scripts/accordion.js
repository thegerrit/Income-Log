/*var acc = document.getElementsByClassName("accordion-header");
var i;

for (i=0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    var panel = document.getElementById("accordion-content");
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    }
  });
}*/
function accordion() {
  var panel = document.getElementById("accordion-content");
  panel.classList.add("hidden");
};
