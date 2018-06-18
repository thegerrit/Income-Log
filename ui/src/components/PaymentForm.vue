<template>
  <section>
    <header>
      <button class="accordion-button mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect"  onclick="accordion()">
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
          <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="c_inactivo">
              <span class="mdl-checkbox__label">Inactivo</span>
              <input type="checkbox" id="c_inactivo" class="mdl-checkbox__input" onclick="checkAll(this)">
            </label>
        </th>
      </tr>
      <tr>
        <td><input type="date" class="i_date"></td>
        <td><input type="text" class="i_text"></td>
        <td><span class="i_diferencia">7.000</span></td>
        <td>
          <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="c_enero" name="l_mes">
              <span class="mdl-checkbox__label">Enero</span>
              <input type="checkbox" id="c_enero" class="mdl-checkbox__input" name="c_mes">
            </label>
        </td>
      </tr>
      <tr>
        <td><input type="date" class="i_date"></td>
        <td><input type="text" class="i_text"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="c_febrero" name="l_mes">
              <span class="mdl-checkbox__label">Febrero</span>
              <input type="checkbox" id="c_febrero" class="mdl-checkbox__input" name="c_mes">
            </label>
        </td>
      </tr>
      <tr>
        <td><input type="date" class="i_date"></td>
        <td><input type="text" class="i_text"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="c_marzo" name="l_mes">
              <span class="mdl-checkbox__label">Marzo</span>
              <input type="checkbox" id="c_marzo" class="mdl-checkbox__input" name="c_mes">
            </label>
        </td>
      </tr>
      <tr>
        <td><input type="date" class="i_date"></td>
        <td><input type="text" class="i_text"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="c_abril" name="l_mes">
              <span class="mdl-checkbox__label">Abril</span>
              <input type="checkbox" id="c_abril" class="mdl-checkbox__input" name="c_mes">
            </label>
        </td>
      </tr>
      <tr>
        <td><input type="date" class="i_date"></td>
        <td><input type="text" class="i_text"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="c_mayo" name="l_mes">
              <span class="mdl-checkbox__label">Mayo</span>
              <input type="checkbox" id="c_mayo" class="mdl-checkbox__input" name="c_mes">
            </label>
        </td>
      </tr>
      <tr>
        <td><input type="date" class="i_date"></td>
        <td><input type="text" class="i_text"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="c_junio" name="l_mes">
              <span class="mdl-checkbox__label">Junio</span>
              <input type="checkbox" id="c_junio" class="mdl-checkbox__input" name="c_mes">
            </label>
        </td>
      </tr>
      <tr>
        <td><input type="date" class="i_date"></td>
        <td><input type="text" class="i_text"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="c_julio" name="l_mes">
              <span class="mdl-checkbox__label">Julio</span>
              <input type="checkbox" id="c_julio" class="mdl-checkbox__input" name="c_mes">
            </label>
        </td>
      </tr>
      <tr>
        <td><input type="date" class="i_date"></td>
        <td><input type="text" class="i_text"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="c_agosto" name="l_mes">
              <span class="mdl-checkbox__label">Agosto</span>
              <input type="checkbox" id="c_agosto" class="mdl-checkbox__input" name="c_mes">
            </label>
        </td>
      </tr>
      <tr>
        <td><input type="date" class="i_date"></td>
        <td><input type="text" class="i_text"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="c_setiembre" name="l_mes">
              <span class="mdl-checkbox__label">Setiembre</span>
              <input type="checkbox" id="c_setiembre" class="mdl-checkbox__input" name="c_mes">
            </label>
        </td>
      </tr>
      <tr>
        <td><input type="date" class="i_date"></td>
        <td><input type="text" class="i_text"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="c_octubre" name="l_mes">
              <span class="mdl-checkbox__label">Octubre</span>
              <input type="checkbox" id="c_octubre" class="mdl-checkbox__input" name="c_mes">
            </label>
        </td>
      </tr>
      <tr>
        <td><input type="date" class="i_date"></td>
        <td><input type="text" class="i_text"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="c_noviembre" name="l_mes">
              <span class="mdl-checkbox__label">Noviembre</span>
              <input type="checkbox" id="c_noviembre" class="mdl-checkbox__input" name="c_mes">
            </label>
        </td>
      </tr>
      <tr>
        <td><input type="date" class="i_date"></td>
        <td><input type="text" class="i_text"></td>
        <td><span class="i_diferencia"></span></td>
        <td>
          <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="c_diciembre" name="l_mes">
              <span class="mdl-checkbox__label">Diciembre</span>
              <input type="checkbox" id="c_diciembre" class="mdl-checkbox__input" name="c_mes">
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
export default {
  name: "PaymentForm",
  props: {
    msg: String
  }
};

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">

#details .i_date{
  max-width: 150px;
  border: 2px solid gray;
  border-radius: 4px;
}

.toggle_year{
  display: block;
  margin-left: 35%;
  font-size: 16px;
}
#details .tg{
  border: 1px solid var(--tg-border);
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
#details .tg th,
#details .tg td{
  width: 20%;
  font-size: 16px;
  font-family: Roboto, sans-serif;
}
#details .tg td{
  padding: 5px 0px 5px 0px;
}

#details tr:nth-child(even){
  background-color: var(--color-table-even-row);
}

/*Shared styles*/
#details {
 overflow: hidden;
 box-shadow: 1px 0px 6px grey;
}

#details section .content {
  padding: 0px 20px 0px 20px;
  transition: max-height 0.5s ease-out;
  overflow: hidden;
}

#details section header {
  background-color: var(--color-section-title);
  box-shadow: 0px 2px 4px grey;
  display: flex;
  justify-content: flex-start;
  align-items: center;
  color: white;

}

#details section header h3 {
  font-size: 1.2rem;
  margin: 0 0 0 20px;
  text-transform: uppercase;
  margin-right: auto;
}

#details section header .actions {
  margin-right: 20px;
  margin-left: auto;
}

#details section .content .row {
  clear: both;
}

#details section .content .row .mdl-textfield {
  float: left;
  width: 46%;
}

#details section .content .row .mdl-textfield + .mdl-textfield {
  float: right;
}

#details .search .content .mdl-textfield {
  width: 85%;
}

#details .athlete .content {
  padding-top: 0;
}
#details .save-or-clear{
  text-align: right;
  display: block;
  margin: 5px 20px 5px 0px;
}
#details .save-or-clear .clear-button{
  background-color: var(--color-cancel-button);
  color: white;
  margin-left: 10px;
  #details .save-or-clear .clear-button:hover{
    background-color: var(--color-cancel-button-hover);
  }
  .save-button{
    background-color: #207d7d;
    color: white;
    align-self: flex-end;
  }
  .save-button:hover{
    background-color:#2bbbca;
  }
  #details .accordion-button{
    margin-left: 10px;
  }
  #details .accordion{
    max-height: 550px;
    overflow: hidden;
    transition: max-height 0.5s ease-out;
  }
  .small-select,
  .big-select{
    position: relative;
    display: inline-block;
    font-family: Helvetica, Roboto, sans-serif;
    font-size: 16px;
    color: #bdbdbd;
    font-style: normal;
    padding: 20px 0px;
  }

  .small-select{
    width: 46%;
    max-width: 300px;
  }
  .small-select select{
    width: 100%;
  }
  .big-select{
    width: 95%;
  }
  .big-select select{
    width: 106%;
  }
  .small-select select,
  .big-select select{
    border: none;
        border-bottom: 1px solid rgba(0,0,0,.12);
        display: block;
        font-size: 16px;
        font-family: "Helvetica","Arial",sans-serif;
        margin: 0;
        padding: 4px 0;
        /*width: 100%;*/
        background: 0 0;
        text-align: left;
        color: inherit;
  }
  .small-select select:focus,
  .big-select select:focus{
    outline: none;
    box-shadow: 2px 2px 4px gray;
  }

  #details .small-select + .small-select {
    float: right;
  }
</style>
