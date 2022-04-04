<template>
  <div class="matiere">
    <h1> {{ categories[i].matiere }}</h1>
    <h3>Choisis ta thématique</h3>
    <div class="container-thematique">
      <tile-thematique :thematique="thematique" v-for="thematique in thematiques" :key="thematique.title">
        <h2>{{ thematique.title }}</h2>
        <p>{{ thematique.description }}</p>
      </tile-thematique>
    </div>
  </div>
</template>

<script>
let i = ""
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
    // Récupération de l'api categories
    let categories = await fetch('http://localhost:3001/categories')
    .then(res => {
      return res.json()
    })
    const thematiques = table.filter(table => table.id_categorie == params.id)
    i = params.id - 1
    console.log(params.id)
      return{
      thematiques, categories,i
    }
    
  }
}
</script>

<style>
  .matiere {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      margin-top: 100px;
      gap: 50px;
    }
  .container-thematique {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: center;
    }
</style>