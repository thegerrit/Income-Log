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
          <input class="mdl-textfield__input" type="text" v-model="athlete.Cedula"><!-- onkeypress="return onlyNumbers(event)"-->
          <label class="mdl-textfield__label">Cédula</label>
        </label>
        <label class="mdl-textfield mdl-js-textfield">
          <input class="mdl-textfield__input" type="text" v-model="athlete.Nombre">
          <label class="mdl-textfield__label">Nombre</label>
        </label>
      </div>

      <div class="row">
        <label class="mdl-textfield mdl-js-textfield">
          <input class="mdl-textfield__input" type="text" v-model="athlete.Apellidos">
          <label class="mdl-textfield__label">Apellidos</label>
        </label>
        <label class="mdl-textfield mdl-js-textfield">
          <input class="mdl-textfield__input" type="text" v-model="athlete.Correo">
          <label class="mdl-textfield__label">Correo Electrónico</label>
        </label>
      </div>

      <div class="row">
        <v-select class="small-select" v-model="athlete.selectedDiscipline" :options="disciplines" placeholder="Deporte"></v-select>
        <v-select class="small-select" v-model="athlete.selectedProgram" :options="programs" placeholder="Paquete"></v-select>
      </div>

      <div class="row">
        <v-select v-model="athlete.selectedCoach" :options="coaches" placeholder="Entrenador"></v-select>
      </div>

      <div class="save-or-clear" v-bind:class="{ visible : athlete.Cedula }"> <!--TODO: bind class to cedula so buttons are visible and enabled when cedula has a value-->
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect save-button"
        title="Guardar atleta" :disabled="athlete.Cedula == ''">
          <i class="material-icons">save</i>
        </button>
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect clear-button"
        title="Borrar atleta" :disabled="athlete.Cedula == ''">
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
    },
    coaches: {
      type: Array,
      required: true
    },
    athlete: {
      type: Object
    }
  },
  data () {
    return {
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
        setTimeout(function(){ panel.style.overflow = "visible"; }, 500);
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
      opacity: 0;
      transition: opacity 1s ease-in;
      margin: 15px 0px 15px 0px;
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
