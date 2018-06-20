<template>
  <section class="mdl-tabs__panel" id="search-panel">
    <form action="#" class="content">
      <div class="flex-container">
        <div class="flex-filter">
          <div class="mdl-textfield mdl-js-textfield getmdl-select">
              <input type="text" value="" class="mdl-textfield__input" id="Buscar-por" readonly>
              <input type="hidden" value="" name="Buscar-por" onchange="showEntrenador(data-val)">
              <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
              <label for="Buscar-por" class="mdl-textfield__label">Buscar atleta por</label>
              <ul for="Buscar-por" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                  <li class="mdl-menu__item" data-val="NOM">Nombre</li>
                  <li class="mdl-menu__item" data-val="ENT">Entrenador</li>
                  <li class="mdl-menu__item" data-val="PAT">Patrocinador</li>
              </ul>
          </div>
        </div>
        <div class="flex-search">
          <div id="buscar-atleta">
          <label class="mdl-textfield mdl-js-textfield">
            <input class="mdl-textfield__input" type="text">
            <span class="mdl-textfield__label">Buscar Atleta</span>
            </label>
          <button class="mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect" title="Buscar">
            <i class="material-icons">search</i>
          </button>
        </div>

          <div id="buscar-patrocinador" class="hidden">
          <label class="mdl-textfield mdl-js-textfield">
            <input class="mdl-textfield__input" type="text">
            <span class="mdl-textfield__label" >Buscar Patrocinador</span>
            </label>
          <button class="mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect" title="Buscar">
            <i class="material-icons">search</i>
          </button>
        </div>

          <div id="buscar-entrenador" class="mdl-textfield mdl-js-textfield getmdl-select hidden">
              <input type="text" value="" class="mdl-textfield__input" id="Entrenador-bt" readonly>
              <input type="hidden" value="" name="Entrenador-bt">
              <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
              <label for="Entrenador-bt" class="mdl-textfield__label">Entrenador</label>
              <ul for="Entrenador-bt" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                  <li class="mdl-menu__item" data-val="1">Entrenador1</li>
                  <li class="mdl-menu__item" data-val="2">Entrenador2</li>
                  <li class="mdl-menu__item" data-val="3">Entrenador3</li>
              </ul>
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
