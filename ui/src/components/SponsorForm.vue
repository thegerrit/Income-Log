<template>
  <section>
    <header>
      <button class="accordion-button mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect" v-on:click="accordion">
        <i class="material-icons">keyboard_arrow_down</i>
      </button>
      <h3>Sponsor</h3>
      <div class="actions">
        <button class="mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect"
        title="Añadir Patrocinador"  v-on:click="clearSponsorForm">
          <i class="material-icons">group_add</i>
        </button>
      </div>

    </header>
    <div class="accordion">
    <div class="content"> <!--form action="#" -->
      <div class="pat-checkboxes">
      <label>
        <input type="radio" name="patrocinador" value="1" v-model="sponsor.tipoPat">
        <span>Organización</span>
      </label>
      <label>
        <input type="radio" name="patrocinador" value="2" v-model="sponsor.tipoPat">
        <span>Individuo</span>
      </label>
    </div>

      <div class="mdl-textfield mdl-js-textfield">
        <input class="mdl-textfield__input" type="text" v-model="sponsor.Nombre">
        <label class="mdl-textfield__label">Nombre</label>
      </div>
      <!--<md-field>
        <label>Nombre</label>
        <md-input v-model="sponsor.Nombre"></md-input>
      </md-field>-->
      <div class="mdl-textfield mdl-js-textfield">
        <input class="mdl-textfield__input" type="text" v-model="sponsor.Correo">
        <label class="mdl-textfield__label">Correo Electrónico</label>
      </div>
      <!--<md-field>
        <label>Nombre</label>
        <md-input v-model="sponsor.Correo"></md-input>
      </md-field>-->
    <div class="save-or-clear">

      <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect save-button"
      title="Guardar" v-on:click="validateSponsorForm">
        <i class="material-icons">save</i>
      </button>
      <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect clear-button"
      title="Borrar">
        <i class="material-icons">clear</i>
      </button>
    </div>
  </div>
</div>
  </section>

</template>

<script>
export default {
  name: "SponsorForm",
  props: {
    sponsor: {
      type: Object
    }
  },
  data () {
    return {

    }
  },
  methods: {
    accordion: function () {
      var panel= event.target.parentElement.parentElement.nextElementSibling;
      if (panel.style.maxHeight !== "0px"){
        panel.style.maxHeight = 0;
      }
      else {
        panel.style.maxHeight = panel.scrollHeight + "px";
      }
    },
    clearSponsorForm: function () {
      this.sponsor.Nombre = '';
      this.sponsor.Correo = '';
      this.sponsor.tipoPat = '';
    },
    validateSponsorForm: function () {
      var tip = this.sponsor.tipoPat;
      if (tip === ''){
        alert("Porfavor, indique el tipo de patrocinador.")
        return
      };

      var nom = this.sponsor.Nombre;
      if (nom === ''){
        alert("Porfavor, inserte el nombre del patrocinador.")
        return
      };

      var cor = this.sponsor.Correo;
      if (cor === ''){
        alert("Porfavor, inserte el correo electrónico del patrocinador.")
        return
      };
    }
  }
};

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">

//Shared styles
section {
  overflow: hidden;
  header{
    background-color: var(--color-section-title);
    box-shadow: 0px 2px 4px grey;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    color: white;
    h3 {
      font-size: 1.2rem;
      margin: 0 0 0 20px;
      text-transform: uppercase;
      margin-right: auto;
    }
    .actions {
    margin-right: 20px;
    margin-left: auto;
    }
    .accordion-button {
      margin-left: 10px;
    }
  }
  .content {
    padding-top: 0;
    padding: 0px 20px 0px 20px;
    transition: max-height 0.5s ease-out;
    overflow: hidden;
    .row {
      clear: both;
      .mdl-textfield {
        float: left;
        width: 46%;
      }
      .mdl-textfield + .mdl-textfield {
        float: right;
      }
    }
    .mdl-textfield {
    width: 85%;
    }
    .save-or-clear {
      text-align: right;
      display: block;
      margin: 15px 0px 15px 0px;
      .clear-button {
        background-color: var(--color-cancel-button);
        color: white;
        margin-left: 10px;
        &:hover{
          background-color: var(--color-cancel-button-hover);
        }
      }
      .save-button {
        background-color: #207d7d;
        color: white;
        align-self: flex-end;
        &:hover {
          background-color:#2bbbca;
        }
      }
    }
    .pat-checkboxes { /*only in SponsorForm */
      margin-top: 10px;
    }
  }
  .accordion {
    max-height: 550px;
    overflow: hidden;
    transition: max-height 0.5s ease-out;
  }
}
</style>
