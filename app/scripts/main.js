function hideDrawer () {
  var drawer = document.getElementById('details');
  var showButton = document.querySelector('#app-header .show-drawer');
  var hideButton = document.querySelector('#app-header .hide-drawer');

  drawer.className = 'collapsed';
  hideButton.classList.add('hidden');
  showButton.classList.remove('hidden');
};

function showDrawer(){
  var drawer = document.getElementById('details');
  var showButton = document.querySelector('#app-header .show-drawer');
  var hideButton = document.querySelector('#app-header .hide-drawer');

  drawer.className = 'expanded';
  showButton.classList.add('hidden');
  hideButton.classList.remove('hidden');
};

function checkAll (source) {
  var checkboxes = document.getElementsByName('c_mes');
  for (var i = 0, n = checkboxes.length; i < n; i++) {
    checkboxes[i].checked = source.checked;
    var labelMes = document.getElementsByName('l_mes');
    if (checkboxes[i].checked === true) {
      labelMes[i].classList.add("is-checked");
    }
    else {
      labelMes[i].classList.remove("is-checked");
    }
  }
}

function showEntrenador(val){
  var entr = document.getElementById('entrenador-select');
  var patr = document.getElementById('buscar-patrocinador');
  var atle = document.getElementById('buscar-atleta');
  if (val === '0'){
    patr.classList.add('hidden');
    entr.classList.add('hidden');
    atle.classList.remove('hidden');
  } else if (val === '1') {
    entr.classList.remove('hidden');
    patr.classList.add('hidden');
    atle.classList.add('hidden');
  } else if (val === '2'){
    entr.classList.add('hidden');
    patr.classList.remove('hidden');
    atle.classList.add('hidden');
  }

}

function onlyNumbers(evt){
  var charCode = (evt.which) ? evt.which : event.keyCode
  if (charCode > 31 && charCode < 48 || charCode > 57){
    return false;
  }

return true;
}

function selectMenu(){
  var m = document.getElementById('options');
  m.classList.toggle("hidden");
}

function chooseOption(){
  var s = document.getElementById('selected');
  s.replace("Dropdown","Option 1");
}

function darkenText(){
  var box = event.target;
  box.style.color = "#805b5b";
}
