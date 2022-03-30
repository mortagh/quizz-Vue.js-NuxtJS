<template>
  <div class="quizz">
    <h1>QUIZZ</h1>
    <div class="score">
      <h2>Score</h2>
      <p>t'es vraiment une merde</p>
    </div>
    <div class="container-slider">
      <MonSlider :images="images"/>
      <div class="explain" :style="{display:`${none}`}">
        <h2>Choisie ta thematique!</h2>
        <p> Lance le mode rapide en haut à droite de ton écran pour faire plus de point! <br> Une bonne réponse en moin de 5 secondes c'est 2 points et en moin de 10sec 1,5 points <br> GOOD LUCK </p>
        <button @click="hideExplain()">GO</button>
      </div>
    </div>
  </div>
</template>

<script>
import MonSlider from '../components/MonSlider.vue'
  export default {
    name: 'IndexApp',
    components: {
        MonSlider
    },
    methods: {
      hideExplain() {
        this.none = "none";
      }
    },
    data() {
    return {
      none: "",
      images: [
        {
          src: "dessinHistoire.png",
          alt: "Image histoire"
        },
        {
          src: "geo1.webp",
          alt: "Image géographie"
        }
      ]
    }
  }
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

  .container-slider{
    position: relative;
  }

  .explain {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: #121212;
    display: flex;
    align-items: center;
    flex-direction: column;
    border: solid 2px red;
  }

  .explain > h2{
    color: blue;
  }

</style>
