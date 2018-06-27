<template>
  <section class="athlete" id="vAthleteForm">
    <header>
      <button class="accordion-button mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect" v-on:click="accordion">
        <i class="material-icons">keyboard_arrow_down</i>
      </button>
      <h3>Atleta</h3>
      <div class="actions">
        <button class="mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect" title="Archivar">
            <i class="material-icons">archive</i>
          </button>
        <button class="mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect" title="Añadir Atleta">
          <i class="material-icons">person_add</i>
        </button>
      </div>
    </header>
    <div class="accordion">
    <form action="#" class="content">

      <div class="row">
        <label class="mdl-textfield mdl-js-textfield">
          <input class="mdl-textfield__input" type="text" v-model="Cedula" v-on:keypress="buttonShow"><!-- onkeypress="return onlyNumbers(event)"-->
          <label class="mdl-textfield__label">Cédula</label>
        </label>
        <label class="mdl-textfield mdl-js-textfield">
          <input class="mdl-textfield__input" type="text" v-model="Nombre">
          <label class="mdl-textfield__label">Nombre</label>
        </label>
      </div>

      <div class="row">
        <label class="mdl-textfield mdl-js-textfield">
          <input class="mdl-textfield__input" type="text" v-model="Apellidos">
          <label class="mdl-textfield__label">Apellidos</label>
        </label>
        <label class="mdl-textfield mdl-js-textfield">
          <input class="mdl-textfield__input" type="text" v-model="Correo">
          <label class="mdl-textfield__label">Correo Electrónico</label>
        </label>
      </div>

      <div class="row">
        <v-select class="small-select" v-model="selectedDiscipline" :options="disciplines" placeholder="Deporte"></v-select>
        <v-select class="small-select"v-model="selectedProgram" :options="programs" placeholder="Paquete"></v-select>
      </div>

      <div class="row">
        <v-select v-model="selectedCoach" :options="coaches" placeholder="Entrenador"></v-select>
      </div>

      <div class="save-or-clear" id="a_save-or-clear"> <!--TODO: bind class to cedula so buttons are visible and enabled when cedula has a value-->
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect save-button"
        title="Guardar atleta" disabled>
          <i class="material-icons">save</i>
        </button>
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect clear-button"
        title="Borrar atleta" disabled>
          <i class="material-icons">clear</i>
        </button>
      </div>
    </form>
  </div>
  </section>
</template>

<script>
import Vue from "vue";
import VueSelect from "vue-select";

Vue.component('v-select', VueSelect);

export default {
  name: "AthleteForm",
  props: {
    disciplines: {
      type: Array,
      required: true
    }
  },
  data () {
    return {
      Cedula: '123456789',
      Nombre: 'Kaylor',
      Apellidos: 'Navas',
      Correo: 'kaylor@sample',
      selectedDiscipline: 'Carrerra de Fondo',
      selectedProgram: 'Bronce',
      selectedCoach: 'Oscar Ramírez',
      programs: [
        {
          label: 'Bronze',
          value: 10,
        },
        {
          label: 'Silver',
          value: 20,
        },
        {
          label: 'Gold',
          value: 30,
        },
      ]
    }
  },
  methods: {
    accordion: function () {
      var panel= event.target.parentElement.parentElement.nextElementSibling;
      if (panel.style.maxHeight !== "0px"){
        panel.style.overflow = "hidden";
        panel.style.maxHeight = 0;
      }
      else {
        /*function makeVisible(){
          panel.style.overflow = "visible";
        };*/
        panel.style.maxHeight = panel.scrollHeight + "px";
        setTimeout(function(){ panel.style.overflow = "visible"; }, 500);;
      }
    },
    buttonShow: function () {
      var d = document.getElementById('a_save-or-clear');
      d.classList.add('visible');
      for (var i=0; i<d.childNodes.length; i++){
        d.childNodes[i].disabled=false;
      }
    }
  }
}
</script>


<style scoped lang="scss">
/*Shared styles*/
section {
  header{
    background-color: var(--color-section-title);
    box-shadow: 0px 2px 4px grey;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    color: white;
    h3 {
      font-size: 1.2rem;
      margin: 0 0 0 20px;
      text-transform: uppercase;
      margin-right: auto;
    }
    .actions {
    margin-right: 20px;
    margin-left: auto;
    }
    .accordion-button {
      margin-left: 10px;
    }
  }
  .content {
    padding-top: 0;
    padding: 0px 20px 0px 20px;
    transition: max-height 0.5s ease-out;
    .row {
      clear: both;
      .mdl-textfield {
        float: left;
        width: 46%;
      }
      .mdl-textfield + .mdl-textfield {
        float: right;
      }
      .small-select {
        float: left;
        width: 46%;
        input{
          .form-control{
            display: inline;
          }
        }
      }
      .small-select + .small-select {
        float: right;
      }
    }
    .mdl-textfield {
    width: 85%;
    }
    .save-or-clear {
      text-align: right;
      display: block;
      margin: 5px 20px 5px 0px;
      opacity: 0;
      transition: opacity 1s ease-in;
      .clear-button {
        background-color: var(--color-cancel-button);
        color: white;
        margin-left: 10px;
        &:hover{
          background-color: var(--color-cancel-button-hover);
        }
      }
      .save-button {
        background-color: #207d7d;
        color: white;
        align-self: flex-end;
        &:hover {
          background-color:#2bbbca;
        }
      }
    }
    .visible{
      opacity: 1 !important;
    }
  }

  .accordion {
    max-height: 550px;
    overflow: visible;
    transition: max-height 0.5s ease-out;
  }
}


</style>
