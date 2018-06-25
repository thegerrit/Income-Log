<template>
  <section class="mdl-tabs__panel" id="search-panel">
    <form action="#" class="content">
      <div class="flex-container">
        <div class="flex-filter">
          <v-select v-model="selectedFilter" :options="filters" placeholder="Buscar atleta por" v-on:change="onChange"></v-select>
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
    <div class="table-container">
      <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp">
        <tr>
          <th>Cédula</th>
          <th>Nombre</th>
          <th>Correo Electrónico</th>
        </tr>
        <tr>
          <td>123456789</td>
          <td>Kaylor Navas</td>
          <td>navas@sele.com</td>
        </tr>
        <tr>
          <td>234567891</td>
          <td>Bryan Ruiz</td>
          <td>ruiz@sele.com</td>
        </tr>
      </table>
    </div>
    </div>
  </section>
</template>

<script>

export default {
  name: "SearchPanel",
  props: {
    msg: String
  },
  data () {
    return {
      buscarAtleta: '',
      buscarPatrocinador: '',
      selectedFilter: '',
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
      hideNOM: false,
      hideENT: true,
      hidePAT: true,
      selectedCoach: '',
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
    onChange: function (chosen) {
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
