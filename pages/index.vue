<template>
  <div class="quizz">
    <h1>Quizz</h1>
    <div class="score">
      <h3>Score</h3>
      <p>{{ score }}</p>
      <label class="switch">
        <input type="checkbox" v-model="speedy"> <!-- speedy -->
        <span class="slider-btn round"></span>
      </label>
    </div>
    <div class="container-slider">
      <MonSlider :images="categories"/>
      <div class="explain" :style="{display:`${none}`}">
        <h2>Choisis ta catégorie!</h2>
        <p> Lance le mode rapide en haut à droite de ton écran pour faire plus de points!</p>
        <p> Une bonne réponse en moins de 5 secondes c'est 2 points et en moins de 10sec 1,5 points</p>
        <p>GOOD LUCK </p>
        <button @click="hideExplain()">Let's Go</button>
      </div>
    </div>
  </div>
</template>

<script>
import MonSlider from '../components/MonSlider.vue'
  export default {
    name: 'IndexApp',
    
    data(){
      return{
        categories:[],
        speedy: true, // speedy
        none: ""
      }
    },

    async asyncData() {
      let categories = await fetch('http://localhost:3001/categories')
      .then(res => {
        return res.json()
      })
      return{
        categories
      }
    },
    components: {
        MonSlider
    },
    methods: {
      hideExplain() {
        this.none = "none";
      }
    },
    
    computed: {
      score() {
        return this.$store.state.score
      },
      score() {
        return this.$store.state.speedy
      },
    }
  }

</script>

<style scoped>
  h1{
    font-family: "Shadows Into Light";
    letter-spacing: .5rem;
    font-size: 3rem;
  }
  .switch {
    position: relative;
    display: inline-block;
    width: 60px;
    height: 34px;
  }

  .switch input {
    opacity: 0;
    width: 0;
    height: 0;
  }

  .slider-btn {
    position: absolute;
    cursor: pointer;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: #ccc;
    -webkit-transition: .4s;
    transition: .4s;
  }

  .slider-btn:before {
    position: absolute;
    content: "";
    height: 26px;
    width: 26px;
    left: 4px;
    bottom: 4px;
    background-color: white;
    -webkit-transition: .4s;
    transition: .4s;
  }

  input:checked + .slider-btn {
    background-color: #6a80ca;
  }

  input:focus + .slider-btn {
    box-shadow: 0 0 1px #6a80ca;
  }

  input:checked + .slider-btn:before {
    -webkit-transform: translateX(26px);
    -ms-transform: translateX(26px);
    transform: translateX(26px);
  }

  .slider-btn.round {
    border-radius: 34px;
  }

  .slider-btn.round:before {
    border-radius: 50%;
  }
  .quizz {
    display: flex;
    align-items: center;
    flex-direction: column;
    margin-top: 20px;
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
  }
  .explain > h2{
    margin: 16px;
  }
  .explain > button{
    background-color: #6a80ca;
    padding: 8px 24px;
    border-radius: 5px;;
  }
  .score{
    position: fixed;
    top: 20px;
    right: 20px;
  }
  
</style>
