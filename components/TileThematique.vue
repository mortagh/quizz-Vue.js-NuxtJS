<template>
    <NuxtLink :to="'/quizzs/' + thematique.id">
        <div class="tile">
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
        background-color: rgb(12, 90, 235);
        border-radius: 10px;
        padding: 32px;
        max-width: 400px;
        min-width: 300px;
        min-height: 300px;
        margin: 20px;
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
    }
    
</style>