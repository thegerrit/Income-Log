<template>
  <div class="app">
    <AppHeader v-bind:showSidebar="isSidebarVisible" v-on:toggle-drawer="onTogglerDrawer" />
    <ContentArea v-bind:isDetailsExpanded="isSidebarVisible" />
    <!-- <img src="./assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/> -->
  </div>
</template>

<script>
import AppHeader from "./components/AppHeader.vue";
import ContentArea from "./components/ContentArea.vue";

export default {
  name: "app",
  components: {
    AppHeader,
    ContentArea
  },
  data () {
    return {
      isSidebarVisible: true
    }
  },
  methods: {
    onTogglerDrawer: function() {
      this.isSidebarVisible = !this.isSidebarVisible;
    }
  },
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
.app {
  height: calc(100vh - var(--header-height));
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
  max-height: 0px;
}
</style>
