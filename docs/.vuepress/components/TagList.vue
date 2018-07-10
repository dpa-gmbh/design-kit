<template>
  <div class="cdk-TagList">
    <ul>
      <cdk-tag v-for="item, index in items" :title="item" :key="index" />
    </ul>
  </div>
</template>
<script>
import CdkTag from './CdkTag';
export default {
  components: {
    CdkTag,
  },
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

.content:not(.custom) .cdk-TagList + h1 {
  padding-top: 2.6rem;
}

.cdk-TagList ul {
  padding-left: 0;
}

</style>