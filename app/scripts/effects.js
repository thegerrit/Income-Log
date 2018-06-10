function hideDrawer () {
  var drawer = document.getElementById('details');
  var showButton = document.getElementById('show-button');
  drawer.classList.add('hidden');
  showButton.classList.remove('hidden');
};
function showDrawer(){
  var drawer = document.getElementById('details');
  var showButton = document.getElementById('show-button');
  drawer.classList.remove('hidden');
  showButton.classList.add('hidden');
};

 function checkAll (source) {
  var checkboxes = document.getElementsByName('c_mes');
  for (var i = 0, n = checkboxes.length; i < n; i++) {
    checkboxes[i].checked = source.checked;
    var labelMes = document.getElementsByName('l_mes');
    if (checkboxes[i].checked == true) {
      labelMes[i].classList.add("is-checked");
    }
    else {
      labelMes[i].classList.remove("is-checked");
    }
  }
}
