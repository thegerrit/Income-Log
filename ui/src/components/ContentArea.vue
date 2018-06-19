<template>
  <div id="content-area">
    <aside class="expanded">
    </aside>
    <main>
      <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
        <div class="mdl-tabs__tab-bar">
          <a href="#search-panel" class="mdl-tabs__tab">Búsqueda</a>
          <a href="#reports-panel" class="mdl-tabs__tab is-active">Reportes</a>
        </div>
      </div>
    </main>
  </div>
</template>

<script>
export default {
  name: "ContentArea",
  props: {
    msg: String
  }
};

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
#app-main {
  height: calc(100vh - var(--header-height));
  display: flex;
}
aside {
  max-width: 500px;
  .expanded {
    width: var(--aside-width);
    transition: width 0.3s;
    overflow: auto;
    & > * {
      opacity: 1;
      transition: opacity 0.3s ease 0.2s;
    }
  }
  .collapsed {
    width: 0;
    transition: width 0.3s ease-in 0.2s;  /* wait for elements to fade in */
    & > * {
      opacity: 0;
      transition: opacity 0.2s;
    }
  }
}

main {
  flex: 1;
  overflow: hidden;
}
</style>
