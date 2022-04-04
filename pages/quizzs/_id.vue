<template>
<div class="container">
  <h2> {{ thematiques[i].title }}</h2>
  <Quizz :questions="questions" :reponses="reponses" :color="thematiques[i].id_categorie"/>
</div>
</template>
<script>
 let i = ""
export default {
  data() {
    return{
    }
  },
  async asyncData({ params }) {
    // Récupération de l'api thematique
    let thematiques = await fetch('http://localhost:3001/thematique')
    .then(res => {
      return res.json()
    })
    console.log(thematiques.id_categorie)
    // Récupération de l'api questions
    let table = await fetch('http://localhost:3001/questions')
    .then(res => {
      return res.json()
    })
    // Récupération de l'api reponses
    let reponses = await fetch('http://localhost:3001/reponses')
    .then(res => {
      return res.json()
    })
    // console.log(table_q)
    const questions = table.filter(table => table.id_thematique == params.id)
    i = params.id - 1
      return{
       thematiques, questions, i, reponses

    }
  }
}
</script>
<style scoped>
  .container{
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap: 16px;
  }
  .h2{
    font-size: 2rem;
    font-weight: 700
  }
</style>
