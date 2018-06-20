<template>
  <div id="app">
    <AppHeader />
    <ContentArea></ContentArea>
    <img src="./assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/>
  </div>
</template>

<script>
import AppHeader from "./components/AppHeader.vue";
import ContentArea from "./components/ContentArea.vue";

import HelloWorld from "./components/HelloWorld.vue";

export default {
  name: "app",
  components: {
    AppHeader,
    ContentArea,
    HelloWorld
  }
};
</script>

<style lang="scss">
:root {
  --header-height: 48px;
  --aside-width: 32vw;

  --color-section-title: #207d7d;
  --color-table-header: white;
  --border-table-header: #135c6d;
  --text-color-table-header: #614545;
  --color-table-even-row: #f2f2f2;
  --color-table-hover: #dcdede;

  --color-cancel-button: #de6666;
  --color-cancel-button-hover: #e61111;

  --tg-border: #76efef;
}

body {
  color: #5b5b5b;
  font-family: "Roboto", sans-serif;
}

button.mdl-button--icon {
  height: 48px;
  width: 48px;
}

.mdl-button--primary {
  background-color: var(--color-section-title);
}

.hidden {
  /*display: none !important;*/
  max-height: 0px;
}

/* width */
::-webkit-scrollbar {
  width: 10px;
  height: 10px;
}

/* Track */
::-webkit-scrollbar-track {
  background: #f1f1f1;
}

/* Handle */
::-webkit-scrollbar-thumb {
  background: #135c6d;
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: #0cd2c9;
}

/* Datepicker */
::-webkit-datetime-edit,
::-webkit-datetime-edit-fields-wrapper,
::-webkit-datetime-edit-text,
::-webkit-datetime-edit-month-field,
::-webkit-datetime-edit-day-field,
::-webkit-datetime-edit-year-field,
::-webkit-inner-spin-button,
::-webkit-calendar-picker-indicator {
  font-family: Roboto, sans-serif;
}
</style>
