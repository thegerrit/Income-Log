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
        <md-radio v-model="sponsor.tipoPat" name="patrocinador" value="1">Organización</md-radio>
        <md-radio v-model="sponsor.tipoPat" name="patrocinador" value="2">Individuo</md-radio>
      </div>
      <md-field>
        <label>Nombre</label>
        <md-input v-model="sponsor.Nombre"></md-input>
      </md-field>
      <md-field>
        <label>Correo Electrónico</label>
        <md-input v-model="sponsor.Correo"></md-input>
      </md-field>
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
import Vue from "vue";
import { MdRadio } from "vue-material/dist/components";

Vue.use(MdRadio);

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
      for (var i=0; i<nom.length;i++){
        /* charcodes for reference:
          ü-252; é-233; á-225; í-237; ó-243; ú-250; ñ-241; Ñ-209; Á-193; É-201;
          Í-205; Ó-211; Ú-218; Ü-220
        */
        var p = nom.charCodeAt(i);
        if (p > 122 && p != 193 && p != 201 && p != 205 && p != 209 && p != 211
          && p != 218 && p != 220 && p != 225 && p != 233 && p != 237 &&
          p != 241 && p != 243 && p != 250 && p != 252||
          p < 97 && p > 90 ||
          p < 65 && p != 32){
          alert("El signo '" + nom[i] + "' es inválido para el nombre del atleta.")
          return
        };
      };

      var cor = this.sponsor.Correo;
      if (cor === ''){
        alert("Porfavor, inserte el correo electrónico del patrocinador.")
        return
      };
      var atpos = cor.indexOf("@");
      var dotpos = cor.lastIndexOf(".");
      if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 > cor.length){
        alert("El correo electrónico del patrocinador es inválido.")
      }
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
