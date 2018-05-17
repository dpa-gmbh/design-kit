<template>
  <div class="cdk-TagList">
    <ul>
      <li class="cdk-TagList-item" v-for="item in items">{{ item }}</li>
    </ul>
  </div>
</template>
<script>
export default {
  props: {
    items: {
      type: Array,
      default: () => [],
    }
  }
}
</script>
<style>
/** @define cdk-List */

.cdk-TagList {

}

.content:not(.custom) .cdk-TagList + h1 {
  padding-top: 2.6rem;
}

.cdk-TagList ul {
  padding-left: 0;
}

.cdk-TagList-item {
  color: #2294fe;
  font-size: .8em;
  display: inline-block;
  margin: 0;
}

.cdk-TagList-item::after {
  content: "•";
  padding: 0 4px;
}

.cdk-TagList-item:last-child::after {
  content: none;
}
</style>