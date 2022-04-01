<!-- faire le css du quizz
remplacer le slider
gérer avec une seule page les matières de façon dynamique
gérer le score
rajouter une encre pour le slider
déjà la tu seras un bon! -->
<template>
<div>
  {{categories[0].matiere}}
  {{ thematiques }}
  {{ quizzs }}
</div>
</template>

<script>
    export default {
        data() {
        },
        async asyncData({ $axios }) {
            const categories = await $axios.$get('http://localhost:3001/categories')
            const thematiques = await $axios.$get('http://localhost:3001/thematique')
            const quizzs = await $axios.$get('http://localhost:3001/quizz')
            return { categories, thematiques, quizzs }

        }
    }
</script>

<style>

</style>