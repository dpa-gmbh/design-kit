<template>
  <div class="cdk-Preview" v-on:click="zoom">
    <slot></slot>
    <p class="cdk-Preview-title">{{title}}</p>
  </div>
</template>
<script>
export default {
  props: {
    title: {
      type: String,
      default: () => '',
    }
  },
  methods: {
    zoom: function (event) {
      if (!this.$el.getElementsByTagName('img').length) {
        return;
      }
      let src = this.$el.getElementsByTagName('img')[0].src;
      window.location.href = src;
    }
  },
}
</script>
<style>
/** @define cdk-Tag */
.cdk-Preview {
  overflow: hidden;
  display: inline-block;
  width: 30%;
  padding-right: 3%;
}

.cdk-Preview p {
  display: block;
  margin-bottom: 0;
}

.cdk-Preview img {
  cursor: pointer;
  width: 100%;
  display: block;
  border: 1px solid #f1f1f1;
}

.cdk-Preview p.cdk-Preview-title {
  display: block;
  background: #f1f1f1;
  border: 1px solid #f1f1f1;
  margin-top: 0;
  padding: 8px 16px;
}
</style>