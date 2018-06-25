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
          <input class="mdl-textfield__input" type="text" onkeypress="return onlyNumbers(event)" v-model="Cedula">
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
        <v-select v-model="selectedDiscipline" :options="disciplines" placeholder="Deporte"></v-select>
      </div>

      <div class="row">
        <v-select v-model="selectedProgram" :options="programs" placeholder="Paquete"></v-select>
      </div>

      <div class="row">
        <v-select v-model="selectedCoach" :options="coaches" placeholder="Entrenador"></v-select>
      </div>

      <div class="save-or-clear">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect save-button" title="Guardar atleta">
          <i class="material-icons">save</i>
        </button>
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect clear-button" title="Borrar atleta">
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
      Cedula: '',
      Nombre: '',
      Apellidos: '',
      Correo: '',
      selectedDiscipline: '',
      selectedProgram: '',
      selectedCoach: '',
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
      ],
      coaches: [
        {
          label: 'Jorge Luis Pinto',
          value: 100
        },
        {
          label: 'Zinedine Zidane',
          value: 110
        },
        {
          label: 'Oscar Ramírez',
          value: 200
        },
        {
          label: 'Jurgen Klinsmann',
          value: 210
        },
        {
          label: 'Pepe Guardiola',
          value: 210
        }
      ]
    }
  },
  methods: {
    accordion: function () {
      var panel= event.target.parentElement.parentElement.nextElementSibling;
      if (panel.style.maxHeight !== "0px"){
        panel.style.maxHeight = 0;
      }
      else {
        panel.style.maxHeight = panel.scrollHeight + "px";
      }
    }
  }
}
</script>


<style scoped lang="scss">
/*Shared styles*/
section {
  overflow: hidden;
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
    overflow: hidden;
    .row {
      clear: both;
      .mdl-textfield {
        float: left;
        width: 46%;
      }
      .mdl-textfield + .mdl-textfield {
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
  }

  .accordion {
    max-height: 550px;
    overflow: hidden;
    transition: max-height 0.5s ease-out;
  }
}


</style>
