<template>
  <li class="cdk-Tag" :class="classObj">
    <a :href="`/design-kit/browse-by-tag.html?${title}`">
      <span class="cdk-Tag-key" v-if="humanKey">{{humanKey}}</span>
      {{ humanTitle }}
    </a>
  </li>
</template>
<script>
export default {
  props: {
    title: {
      type: String,
      default: () => '',
    },
    isSelected: {
      type: Boolean,
      default: () => false,
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
      let classObj = {};
      classObj[`cdk-Tag--selected`] = this.isSelected;
      let parts = this.title.split(':');
      if (parts.length <= 1) {
        return classObj
      }
      classObj[`cdk-Tag--${parts[0]}`] = true;
      return classObj;
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

.cdk-Tag a {
  color: #444444;
}

.cdk-Tag a:hover {
  color: #2294fe;
}

.cdk-Tag .cdk-Tag-key {
  opacity: 0.6;
}

.cdk-Tag--status {
  background-color: #ff4f5b;
}
.cdk-Tag--selected {
  border: 1px solid #2294fe;
}
</style>