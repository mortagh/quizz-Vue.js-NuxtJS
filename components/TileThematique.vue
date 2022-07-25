<template>
    <NuxtLink :to="'/quizzs/' + thematique.id">
        <div class="tile" :class="'matiere' + thematique.id_categorie">
            <slot></slot>
        </div>
    </NuxtLink>
</template>

<script>
export default {
  props: {
    thematique: Object,
  },
}
</script>

<style scoped>
    .tile{
        border-radius: 10px;
        padding: 32px;
        max-width: 400px;
        min-width: 300px;
        min-height: 300px;
        margin: 0 auto;
        cursor: pointer;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        gap: 16px;
        transition: transform .5s;
        
    }

    .tile:hover{
        transform: scale(1.05);
    }

    a{
        text-decoration: none;
        color: white;
        flex: 1 1 0;
    }
    .matiere1{
    background-color: green;
    }
    .matiere2{
        background-color: #0c5aeb;
    }
</style>