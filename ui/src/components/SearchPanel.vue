<template>
  <section class="mdl-tabs__panel" id="search-panel">
    <form action="#" class="content">
      <div class="flex-container">
        <div class="flex-filter">
          <md-field>
            <!-- <label for="movie">Movie</label> -->
            <md-select v-model="selectedFilter" :options="filters" placeholder="Buscar atleta por">
              <md-option v-for="filter in filters"
                         v-bind:value="filter.value"
                         v-bind:key="filter.value">{{ filter.label }}</md-option>
            </md-select>
          </md-field>
        </div>

        <div class="flex-search">
          <div id="buscar-atleta" v-if="selectedFilter === 'NOM'">
            <label class="mdl-textfield mdl-js-textfield">
              <input class="mdl-textfield__input" type="text" v-model="buscarAtleta">
              <span class="mdl-textfield__label">Buscar Atleta</span>
            </label>
            <button class="mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect" title="Buscar">
              <i class="material-icons">search</i>
            </button>
          </div>

          <div id="buscar-patrocinador" v-else-if="selectedFilter === 'PAT'">
            <label class="mdl-textfield mdl-js-textfield">
              <input class="mdl-textfield__input" type="text" v-model="buscarPatrocinador">
              <span class="mdl-textfield__label" >Buscar Patrocinador</span>
            </label>
            <button class="mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect" title="Buscar">
              <i class="material-icons">search</i>
            </button>
          </div>

          <div v-else>
            <!-- TODO: replace with md-select -->
            <span>Select coach</span>
            <!-- <v-select v-model="selectedCoach" :options="coaches" placeholder="Entrenador"></v-select> -->
          </div>
        </div>
      </div>
    </form>
    <div class="flex-container">
    <DataTable :vheader="vheader" :rows="rows"></DataTable>
    </div>
  </section>
</template>

<script>
import Vue from "vue";
import DataTable from "./DataTable.vue";
import { MdField, MdMenu, MdList } from "vue-material/dist/components";

Vue.use(MdField);
Vue.use(MdMenu);
Vue.use(MdList);

export default {
  name: "SearchPanel",
  props: {
    coaches: {
      type: Array,
      required: true
    }
  },
  components: {
    DataTable
  },
  data () {
    return {
      buscarAtleta: 'Navas',
      buscarPatrocinador: '',
      selectedFilter: 'NOM',
      filters: [
        {
          label: 'Nombre',
          value: 'NOM'
        },
        {
          label: 'Entrenador',
          value: 'ENT'
        },
        {
          label: 'Patrocinador',
          value: 'PAT'
        }
      ],
      vheader: [
        { text: 'Cédula' },
        { text: 'Nombre' },
        { text: 'Correo Electrónico' }
      ],
      rows: [
        [
          { text: '123456789' },
          { text: 'Kaylor Navas' },
          { text: 'navas@sele.com' }
        ],
        [
          { text: '234567891' },
          { text: 'Bryan Ruiz' },
          { text: 'ruiz@sele.com' }
        ]
      ],
      hideNOM: false,
      hideENT: true,
      hidePAT: true,
      selectedCoach: 'Oscar Ramírez',
      movie: 'godfather'
    }
  },
  methods: {}
};

</script>

<style lang="scss" scoped>
#search-panel{
  .content{
    padding-top: 20px;
  }
  .flex-filter{
    display:block;
    margin-left: 25%
  }
  .flex-search{
    margin-left: 25%;
  }
  .table-container{
    max-width: 450px;
    overflow:hidden;
    margin: 30px 0 0 20%;
    th{ width: 150px;}
    td{ width: 150px;}
  }
}

/*Shared Style*/
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
