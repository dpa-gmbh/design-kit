<template>
 <div class="cdk-Pantone" >
    <p>
      {{ name }}
    </p>
    <p>
      {{ color }}
    </p>
    <div class="cdk-Pantone-color" :style="{ background: color}"></div>
  </div>
</template>

<script>
export default {
  props: {
    color: {
      type: String,
      default: '#dbdbdb',
    },
    name: {
      type: String,
      default: 'farbe',
    },
  },
};
</script>
<style>
/** @define cdk-Pantone */

.cdk-Pantone {
  width: 140px;
  display: inline-block;
  margin: 24px 16px 24px  0;
  text-align: center;
}

.cdk-Pantone p{
  margin: 0;
  padding: 0;
}

.cdk-Pantone p:first-child{
  font-weight: bold;
}

.cdk-Pantone-color {
  width: 80px;
  height: 80px;
  -webkit-border-radius: 40px;
  -moz-border-radius: 40px;
  border-radius: 40px;
  margin:24px auto 0;
}

</style>
