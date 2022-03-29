<template>
  <div class="p-hist">
    <h1> Histoire</h1>
    <h3>Choisis ta thématique</h3>
    <div class="container-thematique">
      <tile-thematique v-for="thematique in thematiques" :key="thematique.titre">
        <h2>{{ thematique.titre }}</h2>
        <p>{{ thematique.description }}</p>
      </tile-thematique>
    </div>
  </div>
</template>

<script>
export default {
  name: 'histoire',
  data() {
      return{ 
          thematiques:[
            {titre: "Bataille",
            description:"Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem excepturi iste ad  repudiandae iusto suscipit eum tempora asperiores hic minus soluta doloremque quidem dolorem est praesentium,doloribus a totam nesciunt."},
            {titre: "Politique",
             description:"Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem excepturi iste adepudiandae iusto suscipit eum tempora asperiores hic minus soluta doloremque quidem dolorem est praesentium,doloribus a totam nesciunt."},
            {titre: "Inventions",
             description:"Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem excepturi iste ad repudiandae iusto suscipit eum tempora asperiores hic minus soluta doloremque quidem dolorem est praesentium,       doloribus a totam nesciunt."},
          ]}
        
      }
    }

</script>

<style scoped>
  .p-hist {
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
