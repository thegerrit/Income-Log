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
  /*var panel = event.target.parentElement.parentElement.nextElementSibling;
  panel.classList.toggle("hidden");
  if (panel.style.maxHeight){
    panel.style.maxHeight = null;
  } else {
    panel.style.maxHeight = 600;
  }*/
  var panel= document.getElementById('accordion');
  if (panel.style.maxHeight !== 0){
    panel.style.maxHeight = 0;
  }
  else if(panel.style.maxHeight === 0){
    panel.style.maxHeight = panel.scrollHeight + "px";
  }
};
