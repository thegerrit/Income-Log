<template>


    <div class="table-container">
      <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp">
        <tr>
          <th v-for="vcells0 in vheader"> {{vcells0.text}}</th>
        </tr>
        <tr>
          <td v-for="vcells1 in vrow1"> {{vcells1.text}}</td>
        </tr>
        <tr>
          <td v-for="vcells2 in vrow2"> {{vcells2.text}}</td>
        </tr>
      </table>
    </div>
</template>
<script>
export default {
  name: "DataTable",
  props: {
    msg: String
  },
  data () {
    return {
      vheader: [
        { text: 'Apellidos' },
        { text: 'Nombre' },
        { text: 'Cédula' },
        { text: 'Email' },
        { text: 'Patrocinador_nombre' },
        { text: 'Organización' },
        { text: 'Patrocinador_email' },
        { text: 'Deporte' },
        { text: 'Paquete' },
        { text: 'Entrenador_apellidos' },
        { text: 'Entrenador_nombre' }
      ],
      vrow1: [
        { text:'Alexander' },
        { text: 'Jason' },
        { text: 567891234 },
        { text: 'jason@sample' },
        { text: 'Cobie Smolders' },
        { text: false },
        { text: 'cobie@sample.com' },
        { text: 'Carrera de Fondo' },
        { text: 'Bronce' },
        { text: 'Cox' },
        { text: 'Courtney' }
      ],
      vrow2: [
        { text: 'David' },
        { text: 'Larry' },
        { text: 345678912 },
        { text: 'larry@sample' },
        { text: 'How I Met Your Mother' },
        { text: true },
        { text: 'HIMYM@sample.com' },
        { text: 'Carrera de Fondo' },
        { text: 'Plata' },
        { text: 'Aniston' },
        { text: 'Jennifer' }
      ]
    }
  }
};

</script>


<style scoped lang="scss">
  .table-container{
    width: 96%;
    overflow: auto;
    margin-left: 2%;
    table{
      width: 100%;
    }
  }
  /*Shared Styles*/
  .mdl-data-table {
    th{
      background-color: var(--color-table-header);
      color: var(--text-color-table-header);
      border-bottom: 2px solid var(--border-table-header);
    }
    tr{
      &:nth-child(even){
        background-color: var(--color-table-even-row);
      }
      &:hover{
        background-color: var(--color-table-hover);
      }
    }

  }
  .table-container{ /*search-table and spreadsheet in overview.css*/
    border: 5px solid #207d7d;
    border-radius: 4px;
    box-shadow: 2px 2px 4px #2196f3;
    overflow-x: auto;
    padding: 0;
    max-height: 56vh;
  }
</style>
