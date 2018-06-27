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
          <label for="c_inactivo">
              <span>Inactivo</span>
              <input type="checkbox" id="c_inactivo" v-on:click="checkAll()"> <!-- TODO: add  v-on:change="checkAll" once you figure event handlers-->
            </label>
        </th>
      </tr>
      <tr>
        <td><!--<input type="date" class="i_date">--><datepicker :language="es" class="i_date"></datepicker></td>
        <td><input type="text" class="i_text" v-model="eneMonto"></td>
        <td><span class="i_diferencia"><!--TODO: replace this something like: {{eneMonto}} - Precio_Paquete --></span></td>
        <td>
          <label for="c_enero" name="l_mes">
              <span>Enero</span>
              <!--set month values to numbers to match their values in the database-->
              <input type="checkbox" id="c_enero" name="c_mes" value="1" v-model="meses">
            </label>
        </td>
      </tr>
      <tr>
        <td><datepicker :language="es" class="i_date"></datepicker></td> <!--why doesn't language change here-->
        <td><input type="text" class="i_text" v-model="febMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label for="c_febrero" name="l_mes">
              <span>Febrero</span>
              <input type="checkbox" id="c_febrero" name="c_mes" value="2" v-model="meses">
            </label>
        </td>
      </tr>
      <tr>
        <td><datepicker :language="es" class="i_date"></datepicker></td>
        <td><input type="text" class="i_text" v-model="marMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label for="c_marzo" name="l_mes">
              <span>Marzo</span>
              <input type="checkbox" id="c_marzo" name="c_mes" value="3" v-model="meses">
            </label>
        </td>
      </tr>
      <tr>
        <td><datepicker :language="es" class="i_date"></datepicker></td>
        <td><input type="text" class="i_text" v-model="abrMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label for="c_abril" name="l_mes">
              <span>Abril</span>
              <input type="checkbox" id="c_abril" name="c_mes" value="4" v-model="meses">
            </label>
        </td>
      </tr>
      <tr>
        <td><datepicker :language="es" class="i_date"></datepicker></td>
        <td><input type="text" class="i_text" v-model="mayMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label for="c_mayo" name="l_mes">
              <span>Mayo</span>
              <input type="checkbox" id="c_mayo" name="c_mes" value="5" v-model="meses">
            </label>
        </td>
      </tr>
      <tr>
        <td><datepicker :language="es" class="i_date"></datepicker></td>
        <td><input type="text" class="i_text" v-model="junMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label for="c_junio" name="l_mes">
              <span>Junio</span>
              <input type="checkbox" id="c_junio" name="c_mes" value="6" v-model="meses">
            </label>
        </td>
      </tr>
      <tr>
        <td><datepicker :language="es" class="i_date"></datepicker></td>
        <td><input type="text" class="i_text" v-model="julMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label for="c_julio" name="l_mes">
              <span>Julio</span>
              <input type="checkbox" id="c_julio" name="c_mes" value="7" v-model="meses">
            </label>
        </td>
      </tr>
      <tr>
        <td><datepicker :language="es" class="i_date"></datepicker></td>
        <td><input type="text" class="i_text" v-model="agoMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label for="c_agosto" name="l_mes">
              <span>Agosto</span>
              <input type="checkbox" id="c_agosto" name="c_mes" value="8" v-model="meses">
            </label>
        </td>
      </tr>
      <tr>
        <td><datepicker :language="es" class="i_date"></datepicker></td>
        <td><input type="text" class="i_text" v-model="setMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label for="c_setiembre" name="l_mes">
              <span>Setiembre</span>
              <input type="checkbox" id="c_setiembre" name="c_mes" value="9" v-model="meses">
            </label>
        </td>
      </tr>
      <tr>
        <td><datepicker :language="es" class="i_date"></datepicker></td>
        <td><input type="text" class="i_text" v-model="octMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label for="c_octubre" name="l_mes">
              <span>Octubre</span>
              <input type="checkbox" id="c_octubre" name="c_mes" value="10" v-model="meses">
            </label>
        </td>
      </tr>
      <tr>
        <td><datepicker :language="es" class="i_date"></datepicker></td>
        <td><input type="text" class="i_text" v-model="novMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label for="c_noviembre" name="l_mes">
              <span>Noviembre</span>
              <input type="checkbox" id="c_noviembre" name="c_mes" value="11" v-model="meses">
            </label>
        </td>
      </tr>
      <tr>
        <td><datepicker :language="es" class="i_date"></datepicker></td>
        <td><input type="text" class="i_text" v-model="dicMonto"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label for="c_diciembre" name="l_mes">
              <span>Diciembre</span>
              <input type="checkbox" id="c_diciembre" name="c_mes" value="12" v-model="meses">
            </label>
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
      meses: [7,8],
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
      /*var masterbox = document.getElementById('c_inactivo')
      var checkboxes = document.getElementsByName('c_mes');
      for (var i = 0, n = checkboxes.length; i < n; i++) {
        checkboxes[i].checked = masterbox.checked;
      }*/
      var masterbox = document.getElementById('c_inactivo')
      if(this.meses.length===12, masterbox.checked===false){
        this.meses = [];
      }
      else {
        this.meses = [1,2,3,4,5,6,7,8,9,10,11,12];
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
      max-width: 150px;
      border: 2px solid gray;
      border-radius: 4px;
      input {
        width:140px;
      }
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
    max-height: 630px;
    overflow: hidden;
    transition: max-height 0.5s ease-out;
  }
}
</style>
