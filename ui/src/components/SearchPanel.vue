<template>
  <section class="mdl-tabs__panel" id="search-panel">
    <form action="#" class="content">
      <div class="flex-container">
        <div class="flex-filter">
          <v-select v-model="selectedFilter" :options="filters" placeholder="Buscar atleta por" @change="hideFilters"></v-select>
        </div>
        <div class="flex-search">
          <div id="buscar-atleta" v-bind:class={hidden:hideNOM}>
          <label class="mdl-textfield mdl-js-textfield">
            <input class="mdl-textfield__input" type="text" v-model="buscarAtleta">
            <span class="mdl-textfield__label">Buscar Atleta</span>
            </label>
          <button class="mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect" title="Buscar">
            <i class="material-icons">search</i>
          </button>
        </div>

          <div id="buscar-patrocinador" v-bind:class={hidden:hidePAT}>
          <label class="mdl-textfield mdl-js-textfield">
              <input class="mdl-textfield__input" type="text" v-model="buscarPatrocinador">
              <span class="mdl-textfield__label" >Buscar Patrocinador</span>
              </label>
            <button class="mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect" title="Buscar">
              <i class="material-icons">search</i>
            </button>
          </div>
          <div v-bind:class={hidden:hideENT}>
            <v-select v-model="selectedCoach" :options="coaches" placeholder="Entrenador"></v-select><!--hide me-->
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
import DataTable from "./DataTable.vue";
export default {
  name: "SearchPanel",
  props: {
    msg: String
  },
  components: {
    DataTable
  },
  data () {
    return {
      buscarAtleta: 'Navas',
      buscarPatrocinador: '',
      selectedFilter: 'Nombre',
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
      selectedCoach: 'Oscar Ramírez'
    }
  },
  methods: {
    hideFilters: function (chosen) {
      if (chosen==='ENT'){
        hideNOM= true,
        hideENT= false,
        hidePAT= true
      }
      else if (chosen==='PAT'){
        hideNOM= true,
        hideENT= true,
        hidePAT= false
      }
      else {
        hideNOM= false,
        hideENT= true,
        hidePAT= true
      }
    }
  }
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
