<template>
    <div class="tile">
        <slot></slot>
    </div>
</template>

<style scoped>
    .tile{
        background-color: rgb(12, 90, 235);
        border-radius: 10px;
        padding: 32px;
        max-width: 400px;
        margin: 20px;
        cursor: pointer;
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 16px;
    }
    
</style>