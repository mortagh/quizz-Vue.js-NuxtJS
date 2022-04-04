<template>
  <div class="slider">
    <h2 :class="'matiere' + images[active].id">{{images[active].matiere}}</h2>
    <img :src="require('~/assets/img/'+images[active].img)" :alt="images[active].matiere">
    <div class="controls">
      
      <span class="previous" @click="previous()">précédent</span>
      <span class="next" @click="next()">suivant</span>
    </div>
      <NuxtLink class="go" :to="'/matieres/' + images[active].id">
      <p class="go" :class="'matiere' + images[active].id">Let's Go (Oui il faut cliquer ici)<p/>
      </NuxtLink>
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
}
</script>

<style scoped>
  *, *::before, *::after {
    box-sizing: border-box;
  }
  a{
    color: white;
    text-decoration: none;
  }
  .slider {
    position: relative;
    width: 500px;
    display: flex;
    flex-direction: column;
    align-items: center;
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
  h2{
    font-size: 2rem;
    width: 100%;
    text-align: center;
    border-top-left-radius: 8px;
    border-top-right-radius: 8px;
  }
  .next, .previous{
    cursor: pointer;
    background-color: #6a80ca;
    padding: 8px 24px;
    border-radius: 5px;
  }
  .go{
    pointer-events: all;
    position: relative;
    cursor: pointer;
    font-size: 2rem;
    width: 100%;
    text-align: center;
    border-bottom-left-radius: 8px;
    border-bottom-right-radius: 8px;
    font-weight: 700;
  }
  .matiere1{
    background-color: green;
  }
  .matiere2{
    background-color: #0c5aeb;
  }
</style>