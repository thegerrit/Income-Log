<template>
  <section>
    <header>
      <button class="accordion-button mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect" v-on:click="accordion">
        <i class="material-icons">keyboard_arrow_down</i>
      </button>
      <h3>PAGO</h3>
    </header>
    <div class="content accordion">
    <div class="toggle_year">
      <button class="mdl-button mdl-js-button mdl-button--icon mdl-js-ripple-effect">
          <i class="material-icons">arrow_back</i>
        </button> 2018
      <button class="mdl-button mdl-js-button mdl-button--icon mdl-js-ripple-effect">
          <i class="material-icons">arrow_forward</i>
        </button>
    </div>

    <table class="tg">
      <tr>
        <th><span>Fecha de Pago</span></th>
        <th> Monto</th>
        <th> Diferencia</th>
        <th>
          <md-checkbox v-model="masterbox" id="c_inactivo" v-on:change="checkAll()">Inactivo</md-checkbox>
        </th>
      </tr>
      <tr>
        <td><md-datepicker class="i_date"></md-datepicker></td>
        <td><input type="text" class="i_text" v-model="eneMonto"></td>
        <td><span class="i_diferencia"><!--TODO: replace this something like: {{eneMonto}} - Precio_Paquete --></span></td>
        <td>
            <md-checkbox value="1" v-model="meses" name="c_mes">Enero</md-checkbox>
        </td>
      </tr>
      <tr>
        <td><md-datepicker class="i_date"></md-datepicker></td> <!--why doesn't language change here-->
        <td><input type="text" class="i_text" v-model="febMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
            <md-checkbox value="2" v-model="meses" name="c_mes">Febrero</md-checkbox>
        </td>
      </tr>
      <tr>
        <td><md-datepicker class="i_date"></md-datepicker></td>
        <td><input type="text" class="i_text" v-model="marMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <md-checkbox value="3" v-model="meses" name="c_mes">Marzo</md-checkbox>
        </td>
      </tr>
      <tr>
        <td><md-datepicker class="i_date"></md-datepicker></td>
        <td><input type="text" class="i_text" v-model="abrMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
            <md-checkbox value="4" v-model="meses" name="c_mes">Abril</md-checkbox>
        </td>
      </tr>
      <tr>
        <td><md-datepicker class="i_date"></md-datepicker></td>
        <td><input type="text" class="i_text" v-model="mayMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
            <md-checkbox value="5" v-model="meses" name="c_mes">Mayo</md-checkbox>
        </td>
      </tr>
      <tr>
        <td><md-datepicker class="i_date"></md-datepicker></td>
        <td><input type="text" class="i_text" v-model="junMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <md-checkbox value="6" v-model="meses" name="c_mes">Junio</md-checkbox>
        </td>
      </tr>
      <tr>
        <td><md-datepicker class="i_date"></md-datepicker></td>
        <td><input type="text" class="i_text" v-model="julMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <md-checkbox value="7" v-model="meses" name="c_mes">Julio</md-checkbox>
        </td>
      </tr>
      <tr>
        <td><md-datepicker class="i_date"></md-datepicker></td>
        <td><input type="text" class="i_text" v-model="agoMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
            <md-checkbox value="8" v-model="meses" name="c_mes">Agosto</md-checkbox>
        </td>
      </tr>
      <tr>
        <td><md-datepicker class="i_date"></md-datepicker></td>
        <td><input type="text" class="i_text" v-model="setMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <md-checkbox value="9" v-model="meses" name="c_mes">Setiembre</md-checkbox>
        </td>
      </tr>
      <tr>
        <td><md-datepicker class="i_date"></md-datepicker></td>
        <td><input type="text" class="i_text" v-model="octMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <md-checkbox value="10" v-model="meses" name="c_mes">Octubre</md-checkbox>
        </td>
      </tr>
      <tr>
        <td><md-datepicker class="i_date"></md-datepicker></td>
        <td><input type="text" class="i_text" v-model="novMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <md-checkbox value="11" v-model="meses" name="c_mes">Noviembre</md-checkbox>
        </td>
      </tr>
      <tr>
        <td><md-datepicker class="i_date"></md-datepicker></td>
        <td><input type="text" class="i_text" v-model="dicMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
            <md-checkbox value="12" v-model="meses" name="c_mes">Diciembre</md-checkbox>
        </td>
      </tr>
    </table>


    <div class="save-or-clear">
      <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect save-button" title="Guardar">
        <i class="material-icons">save</i>
      </button>
      <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect clear-button" title="Borrar Pago">
        <i class="material-icons">clear</i>
      </button>
    </div>
  </div>
  </section>
</template>

<script>
import Datepicker from 'vuejs-datepicker';
import {en, es} from 'vuejs-datepicker/dist/locale';

import Vue from "vue";
import { MdCheckbox, MdDatepicker } from "vue-material/dist/components";
Vue.use(MdCheckbox);
Vue.use(MdDatepicker);

export default {
  name: "PaymentForm",
  components: {
    Datepicker
  },
  props: {
    msg: String
  },
  data () {
    return {
      masterbox: false,
      meses: ["1"], //array values must be strings to work with md-checkboxes.
      eneMonto: '50000',
      febMonto: '50000',
      marMonto: '37000',
      abrMonto: '50000',
      mayMonto: '37000',
      junMonto: '50000',
      julMonto: '',
      agoMonto: '',
      setMonto: '40000',
      octMonto: '40000',
      novMonto: '40000',
      dicMonto: '45000',
      precioPaquete: '37000',
      en: en, /*languages for datepicker*/
      es: es
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
    },
    checkAll: function () {
      if(this.meses.length===12, this.masterbox === false){
        this.meses = [];
      }
      else {
        this.meses = ["1","2","3","4","5","6","7","8","9","10","11","12"];
      }
    }
  }/*,
  computed: {
    dicDiff: function () {
      return Number(dicMonto) - Number(precioPaquete);
    }
  }*/   /*TODO: add computed property to automatically calculate diferencia*/
};

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
    /*Not Shared Styles (start) */
    .toggle_year{
      display: block;
      margin-left: 35%;
      font-size: 16px;
    }
    .tg{
      border: 1px solid var(--tg-border);
      td {
        padding: 5px 0px 5px 0px;
      }
      th,
      td {
        width: 20%;
        font-size: 16px;
        font-family: Roboto, sans-serif;
      }
      tr:nth-child(even) {
        background-color:var(--color-table-even-row);
      }
    }
    .i_date {
      /* max-width: 150px; */
      border: 2px solid gray;
      border-radius: 4px;
      /*
      input[type="text"] {
        display: block;
        width: 140px;
      }
      */
    }
    .i_diferencia {
      width: 70%;
      border: none;
      border-bottom: 2px solid lightgray;
      margin-left:25%;
    }
    .i_text{
      width: 70%;
      border: 2px solid gray;
      border-radius: 4px;
      margin-left:15%;
      height: 22px;
    }
  /* Not Shared Styles (end) */
  }
  .accordion {
    max-height: 1500px;
    overflow: hidden;
    transition: max-height 0.5s ease-out;
  }
}
</style>
