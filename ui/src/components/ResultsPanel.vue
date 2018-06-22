<template>
  <section class="mdl-tabs__panel is-active" id="reports-panel">
    <form class="controls">
      <div class="report-type">
        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect block">
          <input type="radio" class="mdl-radio__button" name="report-type" value="1" v-model="atletaFiltros">
          <span class="mdl-radio__label">Todos los atletas</span>
        </label>
        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect block">
          <input type="radio" class="mdl-radio__button" name="report-type" value="2" v-model="atletaFiltros">
          <span class="mdl-radio__label">Atletas al día</span>
        </label>
        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect block">
          <input type="radio" class="mdl-radio__button" name="report-type" value="3" v-model="atletaFiltros">
          <span class="mdl-radio__label">Atletas morosos</span>
        </label>
      </div>

      <div class="filters">
        <div class="row">
          <div>
            <select value="" v-model="ventrenadorfiltro">
              <option disabled>Entrenador</option>
              <option>Entrenador1</option>
              <option>Entrenador2</option>
              <option>Entrenador3</option>
            </select>
          </div>
          <!--<div class="mdl-textfield mdl-js-textfield getmdl-select">
              <input type="text" value="" class="mdl-textfield__input" id="Entrenador-filter" readonly>
              <input type="hidden" value="" name="Entrenador-filter">
              <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
              <label for="Entrenador-filter" class="mdl-textfield__label">Entrenador</label>
              <ul for="Entrenador-filter" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                  <li class="mdl-menu__item" data-val="1">Entrenador1</li>
                  <li class="mdl-menu__item" data-val="2">Entrenador2</li>
                  <li class="mdl-menu__item" data-val="3">Entrenador3</li>
              </ul>
          </div>-->
          <div class="inactive">
            <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
              <input type="checkbox" class="mdl-checkbox__input" v-model="inactivos">
              <span class="mdl-checkbox__label">Incluir Inactivos</span>
            </label>
            <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
              <input type="checkbox" class="mdl-checkbox__input" v-model="retirados">
              <span class="mdl-checkbox__label">Incluir Retirados</span>
            </label>
          </div>
        </div>

        <div class="row">
          <div class="date-filter">
            <span>Desde</span>
            <!--<div class="mdl-textfield mdl-js-textfield getmdl-select">
                <input type="text" value="" class="mdl-textfield__input" id="desde-mes" readonly>
                <input type="hidden" value="" name="desde-mes">
                <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
                <label for="desde-mes" class="mdl-textfield__label">Mes</label>
                <ul for="desde-mes" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                    <li class="mdl-menu__item" data-val="1">Enero</li>
                    <li class="mdl-menu__item" data-val="2">Febrero</li>
                    <li class="mdl-menu__item" data-val="3">Marzo</li>
                    <li class="mdl-menu__item" data-val="4">Abril</li>
                    <li class="mdl-menu__item" data-val="5">Mayo</li>
                    <li class="mdl-menu__item" data-val="6">Junio</li>
                    <li class="mdl-menu__item" data-val="7">Julio</li>
                    <li class="mdl-menu__item" data-val="8">Agosto</li>
                    <li class="mdl-menu__item" data-val="9">Setiembre</li>
                    <li class="mdl-menu__item" data-val="10">Octubre</li>
                    <li class="mdl-menu__item" data-val="11">Noviembre</li>
                    <li class="mdl-menu__item" data-val="12">Diciembre</li>
                </ul>
            </div>-->
            <div>
              <select value="" v-model="vdesdemes">
                <option disabled>Mes</option>
                <option>Enero</option>
                <option>Febrero</option>
                <option>Marzo</option>
                <option>April</option>
                <option>Mayo</option>
                <option>Junio</option>
                <option>Julio</option>
                <option>Agosto</option>
                <option>Setiembre</option>
                <option>Octubre</option>
                <option>Noviembre</option>
                <option>Diciembre</option>
              </select>
            </div>

            <!--<div class="mdl-textfield mdl-js-textfield getmdl-select">
                <input type="text" value="" class="mdl-textfield__input" id="desde-año" readonly>
                <input type="hidden" value="" name="desde-año">
                <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
                <label for="desde-año" class="mdl-textfield__label">Año</label>
                <ul for="desde-año" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                    <li class="mdl-menu__item" data-val="2016">2016</li>
                    <li class="mdl-menu__item" data-val="2017">2017</li>
                    <li class="mdl-menu__item" data-val="2018">2018</li>
                    <li class="mdl-menu__item" data-val="2019">2019</li>
                    <li class="mdl-menu__item" data-val="2020">2020</li>
                    <li class="mdl-menu__item" data-val="2021">2021</li>
                    <li class="mdl-menu__item" data-val="2022">2022</li>
                    <li class="mdl-menu__item" data-val="2023">2023</li>
                    <li class="mdl-menu__item" data-val="2024">2024</li>
                    <li class="mdl-menu__item" data-val="2025">2025</li>
                </ul>
            </div>-->
            <div>
              <select value="" v-model="vdesdeano">
                <option disabled>Mes</option>
                <option>2016</option>
                <option>2017</option>
                <option>2018</option>
                <option>2019</option>
                <option>2020</option>
                <option>2021</option>
                <option>2022</option>
                <option>2023</option>
                <option>2024</option>
                <option>2025</option>
              </select>
            </div>
          </div>

          <div class="date-filter">
            <span>Hasta</span>
            <!--<div class="mdl-textfield mdl-js-textfield getmdl-select">
                <input type="text" value="" class="mdl-textfield__input" id="hasta-mes" readonly>
                <input type="hidden" value="" name="hasta-mes">
                <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
                <label for="hasta-mes" class="mdl-textfield__label">Mes</label>
                <ul for="hasta-mes" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                    <li class="mdl-menu__item" data-val="1">Enero</li>
                    <li class="mdl-menu__item" data-val="2">Febrero</li>
                    <li class="mdl-menu__item" data-val="3">Marzo</li>
                    <li class="mdl-menu__item" data-val="4">Abril</li>
                    <li class="mdl-menu__item" data-val="5">Mayo</li>
                    <li class="mdl-menu__item" data-val="6">Junio</li>
                    <li class="mdl-menu__item" data-val="7">Julio</li>
                    <li class="mdl-menu__item" data-val="8">Agosto</li>
                    <li class="mdl-menu__item" data-val="9">Setiembre</li>
                    <li class="mdl-menu__item" data-val="10">Octubre</li>
                    <li class="mdl-menu__item" data-val="11">Noviembre</li>
                    <li class="mdl-menu__item" data-val="12">Diciembre</li>
                </ul>
            </div>-->
            <div>
              <select value="" v-model="vhastames">
                <option disabled default>Mes</option>
                <option>Enero</option>
                <option>Febrero</option>
                <option>Marzo</option>
                <option>April</option>
                <option>Mayo</option>
                <option>Junio</option>
                <option>Julio</option>
                <option>Agosto</option>
                <option>Setiembre</option>
                <option>Octubre</option>
                <option>Noviembre</option>
                <option>Diciembre</option>
              </select>
            </div>
            <div>
              <select value="" v-model="vhastaano">
                <option disabled>Mes</option>
                <option>2016</option>
                <option>2017</option>
                <option>2018</option>
                <option>2019</option>
                <option>2020</option>
                <option>2021</option>
                <option>2022</option>
                <option>2023</option>
                <option>2024</option>
                <option>2025</option>
              </select>
            </div>
            <!--<div class="mdl-textfield mdl-js-textfield getmdl-select">
                <input type="text" value="" class="mdl-textfield__input" id="hasta-año" readonly>
                <input type="hidden" value="" name="hasta-año">
                <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
                <label for="hasta-año" class="mdl-textfield__label">Año</label>
                <ul for="hasta-año" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                    <li class="mdl-menu__item" data-val="2016">2016</li>
                    <li class="mdl-menu__item" data-val="2017">2017</li>
                    <li class="mdl-menu__item" data-val="2018">2018</li>
                    <li class="mdl-menu__item" data-val="2019">2019</li>
                    <li class="mdl-menu__item" data-val="2020">2020</li>
                    <li class="mdl-menu__item" data-val="2021">2021</li>
                    <li class="mdl-menu__item" data-val="2022">2022</li>
                    <li class="mdl-menu__item" data-val="2023">2023</li>
                    <li class="mdl-menu__item" data-val="2024">2024</li>
                    <li class="mdl-menu__item" data-val="2025">2025</li>
                </ul>
            </div>-->
          </div>
        </div>
      </div>
      <div class="actions">
        <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--primary">Generar Reporte</button>
      </div>
    </form>
    <DataTable />
  </section>
</template>
<script>
export default {
  name: "ResultsPanel",
  components: {
    DataTable,
  },
  props: {
    msg: String
  },
  data () {
    return {
      atletaFiltros: '1',
      inactivos: false,
      retirados: false,
      ventrenadorfiltro: '',
      vdesdemes: '',
      vdesdeano: '',
      vhastames: '',
      vhastaano: ''
    }
  },
};
import DataTable from "./DataTable.vue";

</script>


<style scoped lang="scss">
  .controls{
    display: grid;
    grid-template-columns: 1fr 3fr;
    grid-template-areas:
      'report-type     filters-row-1'
      'report-type     filters-row-2'
      '.               report-actions';
    justify-content: center;
    .report-type {
      min-width: 170px;
      grid-area: report-type;
      label {
        display: block;
        margin-bottom: 5px;
      }
    }
    .filters{
      .row {
        display: flex;
        & > * {
          flex: 1;
        }
        &:nth-of-type(1) {
          grid-area: filters-row-1;
        }
        &:nth-of-type(2) {
          grid-area: filters-row-2;
          .date-filter{ /*previously start-date and end-date*/
            & > span{
              display: block;
              font-weight: bold;
              margin: 10px 0 0 8px;
            }
            & > div{
              float: left;
              width: 45%;
            }
          }
        }
      }
    }
    label{
      margin: 0 0 5px 20px;
    }
    .actions {
      grid-area: report-actions;
      margin: 10px 0 20px;
    }
  }
  /* TODO: add max-height to container once ui is complete*/
  .table-container{
    width: 96%;
    overflow: auto;
    margin-left: 2%;
    table{
      width: 100%;
    }
  }
  /*Shared Styles*/
  .mdl-data-table {
    th{
      background-color: var(--color-table-header);
      color: var(--text-color-table-header);
      border-bottom: 2px solid var(--border-table-header);
    }
    tr{
      &:nth-child(even){
        background-color: var(--color-table-even-row);
      }
      &:hover{
        background-color: var(--color-table-hover);
      }
    }

  }
  .table-container{ /*search-table and spreadsheet in overview.css*/
    border: 5px solid #207d7d;
    border-radius: 4px;
    box-shadow: 2px 2px 4px #2196f3;
    overflow-x: auto;
    padding: 0;
  }
</style>
