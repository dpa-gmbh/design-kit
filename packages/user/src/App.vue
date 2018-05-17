<template>
  <div
    class="cdk-User"
    :class="{ 'is-dpa': isDpa }"
    :style="{ width: `${size + 16}px`, height: `${size}px` }"
  >
    <div class="cdk-User-dot"></div>
    <div
      class="cdk-User-image"
      :style="{ width: `${size}px`, height: `${size}px` }"
    >
      <img v-if="src" :src="src" alt="">
      <template v-else>{{ abbr }}</template>
    </div>
    <div v-if="notifications" class="cdk-User-notifications">
      {{ notifications }}
    </div>
  </div>
</template>
<script>
export default {
  props: {
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
    },
    isDpa: {
      type: Boolean,
      default: false,
    },
    notifications: {
      type: Number,
      required: false,
    },
  },
};
</script>
<style>
/** @define cdk-User */

.cdk-User {
  position: relative;
}

.cdk-User-dot {
  position: absolute;
  border-radius: 100%;
  background-color: #2294fe;
  width: 8px;
  height: 8px;
  top: 50%;
  transform: translateY(-50%);
}

.cdk-User.is-dpa .cdk-User-dot {
  background-color: #a3f2a5;
}

.cdk-User-image {
  align-items: center;
  background-color: #444444;
  border-radius: 100%;
  color: #f1f1f1;
  display: flex;
  font-size: 12px;
  justify-content: center;
  margin-left: 16px;
  overflow: hidden;
}

.cdk-User-image > img {
  display: block;
  width: 100%;
}

.cdk-User-notifications {
  position: absolute;
  top: 0;
  right: 0;
  width: 16px;
  height: 16px;
  color: #f1f1f1;
  background-color: #ff4f5b;
  border-radius: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 12px;
}
</style>
