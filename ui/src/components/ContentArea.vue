<template>
  <div class="content-area">
    <aside v-bind:class="[isDetailsExpanded ? 'expanded' : 'collapsed']" id="details">
      <!--<md-content class="md-scrollbar">-->
        <AthleteForm :disciplines="disciplines" :coaches="coaches" :athlete="athlete"/>
        <SponsorForm :sponsor="sponsor"></SponsorForm>
        <PaymentForm></PaymentForm>
      <!--</md-content>-->
    </aside>
    <main class="mdl-layout__content">
      <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
        <div class="mdl-tabs__tab-bar">
          <a href="#search-panel" class="mdl-tabs__tab">Búsqueda</a>
          <a href="#reports-panel" class="mdl-tabs__tab is-active">Reportes</a>
        </div>

          <SearchPanel id="search-panel" :coaches="coaches"></SearchPanel>
          <ResultsPanel id="reports-panel" :coaches="coaches"></ResultsPanel>

      </div>
    </main>
  </div>
</template>

<script>
import AthleteForm from "./AthleteForm.vue";
import SponsorForm from "./SponsorForm.vue";
import PaymentForm from "./PaymentForm.vue";
import SearchPanel from "./SearchPanel.vue";
import ResultsPanel from "./ResultsPanel.vue";
import { MdContent } from "vue-material/dist/components";

/*Vue.use(MdContent);*/

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
    ResultsPanel,
  },
  data () {
    return {
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
      ],
      athlete: {
        Cedula: '123456789',
        Nombre: 'Kaylor',
        Apellidos: 'Navas',
        Correo: 'kaylor@sample',
        selectedDiscipline: 'Carrerra de Fondo',
        selectedProgram: 'Bronce',
        selectedCoach: 'Oscar Ramírez'
      },
      sponsor: {
        Nombre: 'Selección Nacional',
        Correo: 'lasele@sample.com',
        tipoPat: '1'
      }
    }
  }
};
</script>

<style scoped lang="scss">
.content-area {
  height: calc(100vh - var(--header-height));
  display: flex;
.md-content{
  max-height: calc(100vh - var(--header-height));
  max-width: 500px;
  overflow: auto;
}
  aside {
    max-width: 500px;
    height: calc(100vh - var(--header-height));
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
