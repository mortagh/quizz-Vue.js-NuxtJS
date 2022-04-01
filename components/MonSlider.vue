<template>
  <div class="slider">
    <img :src="require('~/assets/img/'+images[active].src)" :alt="images[active].alt">
    <div class="controls">
      <h2>{{images[active].title}}</h2>
      <span class="previous" @click="previous()">précédent</span>
      <span class="next" @click="next()">suivant</span>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    images: Array,
  },
  data() {
    return {
      active: 0
    }
  },
  methods: {
    previous() {
      if (this.active == 0) {
        this.active = this.images.length - 1;
      } else {
        this.active--;
      }
    },
    next() {
      if (this.active == this.images.length - 1) {
        this.active = 0;
      } else {
        this.active++;
      }
    },
  
  },
  // mounted() {
  //   setInterval(this.next, 10000);
  // }
}
</script>

<style scoped>
  *, *::before, *::after {
    box-sizing: border-box;
  }
  .slider {
    position: relative;
    width: 500px;
  }
  .slider img {
    width: 100%;
  }
  i {
    font-size: 2rem;
    color: #fff;
  }
  .controls {
    display: flex;
    align-items: center;
    justify-content: space-between;
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    left: 0;
    padding: 1.5rem;
  }
  .controls h2 {
    position: absolute;
    top: 0;
    left: 50%;
    transform: translateX(-50%);
    color: blue;
    font-size: 2.5rem;
  }
  .next, .previous{
    cursor: pointer;
    background-color: blue;
    padding: 8px 24px;
    border-radius: 5px;
  }
</style>