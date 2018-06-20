<template>
  <div id="content-area">
    <aside class="expanded">
      <AthleteForm></AthleteForm>
      <SponsorForm></SponsorForm>
      <PaymentForm></PaymentForm>
    </aside>
    <main>
      <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
        <div class="mdl-tabs__tab-bar">
          <a href="#search-panel" class="mdl-tabs__tab">Búsqueda</a>
          <a href="#reports-panel" class="mdl-tabs__tab is-active">Reportes</a>
        </div>
      </div>
      <SearchPanel></SearchPanel>
      <ResultsPanel></ResultsPanel>
    </main>
  </div>
</template>

<script>
import AthleteForm from "./AthleteForm.vue";
import SponsorForm from "./SponsorForm.vue";
import PaymentForm from "./PaymentForm.vue";
import SearchPanel from "./SearchPanel.vue";
import ResultsPanel from "./ResultsPanel.vue";

export default {
  name: "ContentArea",
  props: {
    msg: String
  },
  components: {
    AthleteForm,
    SponsorForm,
    PaymentForm,
    SearchPanel,
    ResultsPanel
  }
};

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
#content-area {
  height: calc(100vh - var(--header-height));
  display: flex;
}
aside {
  max-width: 500px;
  height: calc(100vh - var(--header-height));
  overflow: auto;
  box-shadow: 1px 0px 6px grey;
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
