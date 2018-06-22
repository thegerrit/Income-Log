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

        <div>
          <select>
            <option>Deporte</option>
            <option>Carrera de Fondo</option>
            <option>Ciclismo</option>
            <option>Triatlón</option>
          </select>
        </div>
        <div>
          <select>
            <option>Paquete</option>
            <option>Bronce</option>
            <option>Plata</option>
          </select>
        </div>
        <div>
          <select>
            <option>Entrenador</option>
            <option>Entrenador1</option>
            <option>Entrenador2</option>
            <option>Entrenador3</option>
          </select>
        </div>
        <!--<div class="row">
          <div class="mdl-textfield mdl-js-textfield getmdl-select">
            <input type="text" value="" class="mdl-textfield__input" id="Deporte-select" readonly>
            <input type="hidden" value="" name="Deporte-select">
            <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
            <label for="Deporte-select" class="mdl-textfield__label">Disciplina</label>
            <ul for="Deporte-select" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                <li class="mdl-menu__item" data-val="CAR">Carrera de Fondo</li>
                <li class="mdl-menu__item" data-val="CIC">Ciclismo</li>
                <li class="mdl-menu__item" data-val="TRI">Triatlón</li>
            </ul>
        </div>

        <div class="mdl-textfield mdl-js-textfield getmdl-select">
            <input type="text" value="" class="mdl-textfield__input" id="Paquete-select" readonly>
            <input type="hidden" value="" name="Paquete-select">
            <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
            <label for="Paquete-select" class="mdl-textfield__label">Paquete</label>
            <ul for="Paquete-select" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                <li class="mdl-menu__item" data-val="BRO">Bronce</li>
                <li class="mdl-menu__item" data-val="PLA">Plata</li>
            </ul>
        </div>
      </div>
      <div class="mdl-textfield mdl-js-textfield getmdl-select">
          <input type="text" value="" class="mdl-textfield__input" id="Entrenador-select" readonly>
          <input type="hidden" value="" name="Entrenador-select">
          <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
          <label for="Entrenador-select" class="mdl-textfield__label">Entrenador</label>
          <ul for="Entrenador-select" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
              <li class="mdl-menu__item" data-val="1">Entrenador1</li>
              <li class="mdl-menu__item" data-val="2">Entrenador2</li>
              <li class="mdl-menu__item" data-val="3">Entrenador3</li>
          </ul>
      </div>-->
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
export default {
  name: "AthleteForm",
  props: {
    msg: String
  },
  data () {
    return {
      Cedula: '',
      Nombre: '',
      Apellidos: '',
      Correo: ''
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
/* BUG: adding this makes pago go blank*/
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
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
