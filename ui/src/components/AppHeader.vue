<template>
  <header>
    <nav>
      <button class="mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect hidden show-drawer" title="Mostrar detalles"
        onclick="showDrawer()">
        <i class="material-icons">menu</i>
      </button>
      <button class="mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect hide-drawer" title="Ocultar detalles"
        onclick="hideDrawer()">
        <i class="material-icons">arrow_back_ios</i>
      </button>
    </nav>
    <h1>Income Log</h1>
  </header>
</template>

<script>
export default {
  name: "AppHeader",
  props: {
    msg: String
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
header {
  display: flex;
  background-color: rgb(33, 150, 243);
  color: white;
  box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2),
    0 1px 5px 0 rgba(0, 0, 0, 0.12);
  padding: 0 20px;
}

header h1 {
  font-size: 1.8rem;
  margin: 0;
  flex: 1;
  text-align: right;
  line-height: var(--header-height);
}
</style>
