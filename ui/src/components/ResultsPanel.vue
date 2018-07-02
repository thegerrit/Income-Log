<template>
  <section class="mdl-tabs__panel is-active" id="reports-panel">
    <form class="controls">
      <div class="report-type">
        <md-radio v-model="atletaFiltros" name="report-type" value="1">Todos los atletas</md-radio>
        <md-radio v-model="atletaFiltros" name="patrocinador" value="2">Atletas al día</md-radio>
        <md-radio v-model="atletaFiltros" name="patrocinador" value="3">Atletas morosos</md-radio>
      </div>

      <div class="filters">
        <div class="row">
          <div>
            <div class="row">
              <v-select v-model="selectedCoach" :options="coaches" placeholder="Entrenador"></v-select>
            </div>
          </div>
          <div class="inactive">
            <md-checkbox v-model="inactivos">Incluir inactivos</md-checkbox>
            <md-checkbox v-model="retirados">Incluir retirados</md-checkbox>
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
    <DataTable :vheader="vheader" :rows="rows" :rowClick="rowClick"></DataTable>
  </section>
</template>
<script>
import VueSelect from "vue-select";
import DataTable from "./DataTable.vue";
import Vue from "vue";
import { MdRadio, MdCheckbox } from "vue-material/dist/components";

Vue.use(MdRadio);
Vue.use(MdCheckbox);

export default {
  name: "ResultsPanel",
  components: {
    DataTable,
  },
  props: {
    coaches: {
      type: Array,
      required: true
    }
  },
  methods: {
    rowClick: function () {
      console.log("Row ___ was clicked.");
    }
  },
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
      vhastaano: '',
      vheader: [
        { index: 0 },
        { text: 'Apellidos' },
        { text: 'Nombre' },
        { text: 'Cédula' },
        { text: 'Email' },
        { text: 'Patrocinador_nombre' },
        { text: 'Organización' },
        { text: 'Patrocinador_email' },
        { text: 'Deporte' },
        { text: 'Paquete' },
        { text: 'Entrenador_apellidos' },
        { text: 'Entrenador_nombre' },
        { selected: false}
      ],
      rows: [
        [
          { index: 1 },
          { text:'Alexander' },
          { text: 'Jason' },
          { text: 567891234 },
          { text: 'jason@sample' },
          { text: 'Cobie Smolders' },
          { text: false },
          { text: 'cobie@sample.com' },
          { text: 'Carrera de Fondo' },
          { text: 'Bronce' },
          { text: 'Cox' },
          { text: 'Courtney' },
          { selected: false}
        ],
        [
          { index: 2 },
          { text: 'David' },
          { text: 'Larry' },
          { text: 345678912 },
          { text: 'larry@sample' },
          { text: 'How I Met Your Mother' },
          { text: true },
          { text: 'HIMYM@sample.com' },
          { text: 'Carrera de Fondo' },
          { text: 'Plata' },
          { text: 'Aniston' },
          { text: 'Jennifer' },
          { selected: false}
        ]
      ]
    }
  },
};

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
    padding-top: 20px;
    .report-type {
      min-width: 170px;
      grid-area: report-type;
      margin-left: 15px;
      label {
        display: block;
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
