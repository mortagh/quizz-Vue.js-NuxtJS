<template>
    <div class="slider">
      <button @click="prev" class="btn btn-left" :style="{display:`${lshow}`}">
            <span>Histoire</span>
      </button>
        <div class="container-slides" :style="{transform: `translateX(${index}px)`, transition:`${transition}`}">
            <img src="~assets/img/dessinHistoire.png" alt="img-histoire" class="img-slider">
            <img src="https://picsum.photos/500/300" alt="img-quizz" class="img-slider" :style="{display:`${hide}`}" >
            <img src="~assets/img/geo1.webp" alt="img-geographie" class="img-slider">
        </div>
        <button @click="next" class="btn btn-right" :style="{display:`${rshow}`}">
            <span>Geographie</span>
      </button>
      <NuxtLink :to="matiere"><button class="btn btn-cta" :style="{display:`${ctaShow}`}"> GO FOR IT</button></NuxtLink>
    </div>
</template>

<script>
export default {
    name: 'Slider',
    data() {
        return {
            index: -500,
            transition:"transform 0.2s ease",
            hide:"block",
            rshow:"flex",
            lshow:"flex",
            ctaShow:"none",
            matiere:""
        }
    },
    methods: {
        
        next(){
            this.hide = "none"
            this.rshow = "none"
            this.lshow = "flex"
            this.index = -500
            this.ctaShow = "block"
            this.matiere = "/geographie"
        },
        prev(){
            this.hide = "none"
            this.rshow = "flex"
            this.lshow = "none"
            this.index = 0
            this.ctaShow = "block"
            this.matiere = "/histoire"
        }
        
    }

}
</script>

<style scoped>
    .slider{
        width: 500px;
        height: 300x;
        margin: 100px auto 0;
        overflow: hidden;
        position: relative;
    }
    .container-slides{
        display: flex; 
    }
    .img-slider{
        width: 100%;
        height: auto;
    }
    .btn{
        outline: none;
        border: none;
        padding: 4px 8px;
        border-radius: 8px;
        position: absolute;
        z-index: 1;
        font-size: 20px;
        cursor: pointer;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #329EF4;
        font-weight:400;
        color: white;
    }
    .btn-left{
        top: 50%;
        transform: translateY(-50%);
        left: 5px;
    }
    .btn-right{
        top: 50%;
        transform: translateY(-50%);
        right: 5px;
    }
    .btn-cta{
        left: 50%;
        transform: translateX(-50%);
        bottom: 5px;
    }
</style>