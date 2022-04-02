<template>
  <div class="matiere">
    <h1> {{ categories[test].matiere }}</h1>
    <h3>Choisis ta thématique</h3>
    <div class="container-thematique">
      <tile-thematique v-for="thematique in thematiques" :key="thematique.title">
        <h2>{{ thematique.title }}</h2>
        <p>{{ thematique.description }}</p>
      </tile-thematique>
    </div>
  </div>
</template>

<script>
let test = ""
console.log(test)
export default {
  
  
  data() {
    return{
      thematiques: [],
      categories: [],
    }
  },
  async asyncData({ params }) {
    // Récupération de l'api thematique
    let table = await fetch('http://localhost:3001/thematique')
    .then(res => {
      return res.json()
    })
    // Récupération de l'api thematique
    let categories = await fetch('http://localhost:3001/categories')
    .then(res => {
      return res.json()
    })
    const thematiques = table.filter(table => table.id_categorie == params.id)
    test = params.id - 1
    console.log(params.id)
      return{
      thematiques, categories,test
    }
    
  }
}
</script>

<style>

</style>