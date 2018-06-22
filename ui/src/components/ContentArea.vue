<template>
  <div id="content-area">
    <aside class="expanded" id="details">
      <AthleteForm></AthleteForm>
      <SponsorForm></SponsorForm>
      <PaymentForm></PaymentForm>
    </aside>
    <main>
      <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
        <div class="mdl-tabs__tab-bar">
          <a href="#search-panel" class="mdl-tabs__tab" v-on:click="panel1=false, panel2=true">Búsqueda</a> <!--v-on:click="panel2=true"-->
          <a href="#reports-panel" class="mdl-tabs__tab is-active" v-on:click="panel2=false, panel1=true">Reportes</a>  <!--v-on:click="panel2=false"-->
        </div>
      </div>
      <SearchPanel v-bind:class={hidden:panel1}></SearchPanel><!--v-if="panel2"-->
      <ResultsPanel v-bind:class={hidden:panel2}></ResultsPanel><!--v-else-->
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
  },
  data () {
    return {
      panel1: true,
      panel2: false
    }
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
  /* expanded and collapsed are defined styled in App.vue */
}

main {
  flex: 1;
  overflow: hidden;
}

</style>
