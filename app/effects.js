function hideDrawer () {
  document.getElementById('left-drawer').style.width = '0px'
};

 function checkAll (source) {
  var checkboxes = document.getElementsByName('c_mes');
  for (var i = 0, n = checkboxes.length; i < n; i++) {
    checkboxes[i].checked = source.checked
  }
}
