<template>
  <div class="cdk-User">
    <div class="cdk-User-image" :style="{ width: `${size}px`, height: `${size}px` }">
      {{ abbr }}
    </div>
    <div class="cdk-User-data">
      {{ firstName }}
      {{ lastName }}
    </div>
  </div>
</template>
<script>
export default {
  props: {
    firstName: {
      type: String,
      default: '',
    },
    lastName: {
      type: String,
      default: '',
    },
    src: {
      type: String,
      default: '',
    },
    abbr: {
      type: String,
      default: '',
    },
    size: {
      type: Number,
      default: 48,
    }
  },
};
</script>
<style>
/** @define cdk-User */

.cdk-User-image {
  background-color: #ccc;
  border-radius: 100%;
}

</style>
