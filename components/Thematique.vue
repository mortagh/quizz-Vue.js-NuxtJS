<template>
  <div class="matière">
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

}
</script>

<style>

</style>