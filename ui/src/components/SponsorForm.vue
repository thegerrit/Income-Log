<template>
  <section>
    <header>
      <button class="accordion-button mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect"  onclick="accordion()">
        <i class="material-icons">keyboard_arrow_down</i>
      </button>
      <h3>Sponsor</h3>
      <div class="actions">
        <button class="mdl-button--icon mdl-button mdl-js-button mdl-js-ripple-effect" title="Añadir Patrocinador">
          <i class="material-icons">group_add</i>
        </button>
      </div>

    </header>
    <div class="accordion">
    <form action="#" class="content">
      <div class="pat-checkboxes">
      <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
        <input type="radio" class="mdl-radio__button" name="patrocinador" value="1">
        <span class="mdl-radio__label">Organización</span>
      </label>
      <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
        <input type="radio" class="mdl-radio__button" name="patrocinador" value="2">
        <span class="mdl-radio__label">Individuo</span>
      </label>
    </div>

      <div class="mdl-textfield mdl-js-textfield">
        <input class="mdl-textfield__input" type="text">
        <label class="mdl-textfield__label">Nombre</label>
      </div>
      <div class="mdl-textfield mdl-js-textfield">
        <input class="mdl-textfield__input" type="text">
        <label class="mdl-textfield__label">Correo Electrónico</label>
      </div>
    <div class="save-or-clear">

      <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect save-button" title="Guardar">
        <i class="material-icons">save</i>
      </button>
      <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect clear-button"  title="Borrar">
        <i class="material-icons">clear</i>
      </button>
    </div>
  </form>
</div>
  </section>

</template>

<script>
export default {
  name: "SponsorForm",
  props: {
    msg: String
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
      margin: 5px 20px 5px 0px;
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
