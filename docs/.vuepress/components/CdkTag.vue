<template>
  <li class="cdk-Tag" :class="classObj">
    <span class="cdk-Tag-key" v-if="humanKey">{{humanKey}}</span>
    {{ humanTitle }}
  </li>
</template>
<script>
export default {
  props: {
    title: {
      type: String,
      default: () => '',
    }
  },
  computed: {
    humanKey () {
      let parts = this.title.split(':');
      if (parts.length <= 1) {
        return null
      }
      return parts[0]
    },
    humanTitle () {
      let parts = this.title.split(':');
      return parts.pop();
    },
    classObj () {
      let parts = this.title.split(':');
      if (parts.length <= 1) {
        return {}
      }
      return [
        `cdk-Tag--${parts[0]}`
      ]
    }
  }
}
</script>
<style>
/** @define cdk-Tag */
.cdk-Tag {
  color: #444444;
  font-size: .8em;
  display: inline-block;
  margin: 0;
  padding: .4em .8em .4em .8em;
  border-radius: .25rem;
  background-color: #f1f1f1;
  margin-right: 10px;
  text-transform: uppercase;
}

.cdk-Tag .cdk-Tag-key {
  opacity: 0.6;
}

.cdk-Tag--status {
  background-color: #ff4f5b;
}
</style>