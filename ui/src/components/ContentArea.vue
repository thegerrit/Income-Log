<template>
  <div class="content-area">
    <aside v-bind:class="[isDetailsExpanded ? 'expanded' : 'collapsed']" id="details">
      <AthleteForm :disciplines="disciplines" />
      <SponsorForm></SponsorForm>
      <PaymentForm></PaymentForm>
    </aside>
    <main>
      <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
        <div class="mdl-tabs__tab-bar">
          <a href="#search-panel" class="mdl-tabs__tab" v-on:click="panel2=true, panel1=false">Búsqueda</a> <!--v-on:click="panel2=true"-->
          <a href="#reports-panel" class="mdl-tabs__tab is-active" v-on:click="panel2=false, panel1=true">Reportes</a>  <!--v-on:click="panel2=false"-->
        </div>
      </div>
      <SearchPanel v-bind:class={hidden:panel1}></SearchPanel>
      <ResultsPanel v-bind:class={hidden:panel2}></ResultsPanel>
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
    isDetailsExpanded: {
      type: Boolean,
      required: true
    }
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
      panel2: false,
      panel1: true,
      disciplines: [
        {
          label: 'Carrera de Fondo',
          value: 1,
        },
        {
          label: 'Ciclismo',
          value: 2,
        },
        {
          label: 'Triatlón',
          value: 3,
        }
      ],
    }
  }
};
</script>

<style scoped lang="scss">
.content-area {
  height: calc(100vh - var(--header-height));
  display: flex;

  aside {
    max-width: 500px;
    height: calc(100vh - var(--header-height));
    overflow: auto;
    box-shadow: 1px 0px 6px grey;

    &.collapsed {
      width: 0;
      transition: width 0.3s ease-in 0.2s;  /* wait for elements to fade in */
      & > * {
        opacity: 0;
        transition: opacity 0.2s;
      }
    }

    &.expanded {
      width: var(--aside-width);
      transition: width 0.4s;
      overflow: auto;
      & > * {
        opacity: 1;
        transition: opacity 0.3s ease 0.2s;
      }
    }
  }

  main {
    flex: 1;
    overflow: hidden;
  }
}
</style>
