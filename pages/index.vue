<template>
  <div class="quizz">
    <h1>QUIZZ</h1>
    <div class="score">
      <h2>Score</h2>
      <p>t'es vraiment une merde</p>
    </div>
    <slider />
  </div>
</template>

<script>
  import Slider from '../components/Slider.vue'
  export default {
    name: 'IndexApp',
    components: {
      Slider
    },
  }

</script>

<style scoped>
  .quizz {
    display: flex;
    align-items: center;
    flex-direction: column;
    margin-top: 100px;
    gap: 50px;
  }

  .score {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 16px;
  }

</style>
