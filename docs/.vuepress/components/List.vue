<template>
  <div class="cdk-List">
    <p>{{ title }}</p>
    <ul>
      <li class="cdk-List-item" v-for="item in items">{{ item }}</li>
    </ul>
  </div>
</template>
<script>
export default {
  props: {
    items: {
      type: Array,
      default: () => [],
    },
    title: {
      type: String,
      default: '',
    },
  }
}
</script>
<style>
/** @define cdk-List */

.cdk-List {
}

.cdk-List-item {
  font-size: .8em;
  display: inline-block;
}

.cdk-List-item::after {
  content: "•";
  padding: 0 4px;
}

.cdk-List-item:last-child::after {
  content: none;
}
</style>