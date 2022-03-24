<template>
     <NuxtLink to="/quizz"><div class="tile">
        <slot></slot>
    </div></NuxtLink>
</template>

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
    }
    a{
        text-decoration: none;
        color: white;
    }
    
</style>