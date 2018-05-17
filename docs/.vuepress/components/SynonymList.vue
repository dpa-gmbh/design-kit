<template>
  <div class="cdk-SynonymList">
    <ul>
      <li class="cdk-SynonymList-item">auch bezeichnet als:&nbsp;</li>
      <li class="cdk-SynonymList-item" v-for="item in items">{{ item }}</li>
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

.cdk-SynonymList {

}

.cdk-SynonymList ul {
  padding-left: 0;
}

.cdk-SynonymList-item {
  font-size: .8em;
  display: inline-block;
  margin: 0;
}

.cdk-SynonymList-item::after {
  content: "•";
  padding: 0 4px;
}

.cdk-SynonymList-item:first-child::after {
  content: none;
}

.cdk-SynonymList-item:last-child::after {
  content: none;
}
</style>