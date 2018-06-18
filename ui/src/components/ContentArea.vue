<template>
  <div id="app-main">
    <aside id="details" class="expanded">
    </aside>
    <main id="overview">
      <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
        <div class="mdl-tabs__tab-bar">
          <a href="#search-panel" class="mdl-tabs__tab">Búsqueda</a>
          <a href="#reports-panel" class="mdl-tabs__tab is-active">Reportes</a>
        </div>
      </div>
    </main>
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
#details {
  max-width: 500px;
}

#details.expanded {
  width: var(--aside-width);
  transition: width 0.3s;
  overflow: auto;
}

#details.expanded > * {
  opacity: 1;
  transition: opacity 0.3s ease 0.2s;
}

#details.collapsed {
  width: 0;
  transition: width 0.3s ease-in 0.2s;  /* wait for elements to fade in */
}

#details.collapsed > * {
  opacity: 0;
  transition: opacity 0.2s;
}

#overview {
  flex: 1;
  overflow: hidden;
}
</style>
