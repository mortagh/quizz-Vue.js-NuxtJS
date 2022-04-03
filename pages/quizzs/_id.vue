<template>
<div>
  <h1> {{ thematiques[i].title }}</h1>
  <div class="question" v-for="(question,index) in questions" :key="index">
    <p>{{ question.question }}</p>
      <div class="reponses" v-for="(reponse,index) in reponses" :key="index" v-show="reponse.id_question == question.id">
        <p>{{reponse.reponse}}</p>
  </div>
  </div>
  <Quizz :questions="questions" :reponses="reponses"/>
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
 

</style>
