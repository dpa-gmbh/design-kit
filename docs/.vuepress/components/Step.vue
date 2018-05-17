<template>
  <div class="cdk-Step">
    {{ number }}
  </div>
</template>
<script>
export default {
  props: {
    number: {
      type: String,
      default: '1',
    },
  }
}
</script>
<style>
/** @define cdk-List */

.cdk-Step {
  width: 1.4em;
  height: 1.4em;
  border-radius: .7em;
  color: #FFF;
  background-color: #f06e6f;
  position: relative;
  margin-top: -0.1em;
  margin-right: 0.5em;
  font-weight: bold;
  line-height: 1.4em;
  text-align: center;
  display: inline-block;
  float: left;
}
</style>