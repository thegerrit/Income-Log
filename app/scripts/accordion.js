function accordion() {
  var panel= event.target.parentElement.parentElement.nextElementSibling;
  if (panel.style.maxHeight !== "0px"){
    panel.style.maxHeight = 0;
  }
  else {
    panel.style.maxHeight = panel.scrollHeight + "px";
  }
};
