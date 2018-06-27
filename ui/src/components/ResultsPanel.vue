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
            <div class="row">
              <v-select v-model="selectedCoach" :options="coaches" placeholder="Entrenador"></v-select>
            </div>
          </div>
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
            <v-select v-model="startMonth" :options="months" placeholder="Mes"></v-select>
            <v-select v-model="startYear" :options="years" placeholder="Año"></v-select>
          </div>

          <div class="date-filter">
            <span>Hasta</span>
            <v-select v-model="endMonth" :options="months" placeholder="Mes"></v-select>
            <v-select v-model="endYear" :options="years" placeholder="Año"></v-select>
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
import VueSelect from "vue-select";

export default {
  name: "ResultsPanel",
  components: {
    DataTable,
  },
  props: ['coaches'],
  data () {
    return {
      atletaFiltros: '1',
      inactivos: true,
      retirados: false,
      selectedCoach: 'Oscar Ramírez',
      startMonth: 'Enero',
      startYear: '2017',
      endMonth: 'Junio',
      endYear: '2018',
      months: [
        {
          label: 'Enero',
          value: 1
        },
        {
          label: 'Febrero',
          value: 2
        },
        {
          label: 'Marzo',
          value: 3
        },
        {
          label: 'Abril',
          value: 4
        },
        {
          label: 'Mayo',
          value: 5
        },
        {
          label: 'Junio',
          value: 6
        },{
          label: 'Julio',
          value: 7
        },{
          label: 'Agosto',
          value: 8
        },{
          label: 'Setiembre',
          value: 9
        },{
          label: 'Octubre',
          value: 10
        },{
          label: 'Noviembre',
          value: 11
        },{
          label: 'Diciembre',
          value: 12
        },
      ],
      years: [
        {
          label: '2016',
          value: 2016
        },{
          label: '2017',
          value: 2017
        },{
          label: '2018',
          value: 2018
        },{
          label: '2019',
          value: 2019
        },{
          label: '2020',
          value: 2020
        },{
          label: '2021',
          value: 2021
        },{
          label: '2022',
          value: 2022
        },{
          label: '2023',
          value: 2023
        },{
          label: '2024',
          value: 2024
        }
      ],
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
