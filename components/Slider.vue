<template>
    <div class="slider">
      <button @click="prev" class="btn btn-left" :style="{display:`${lshow}`}">
            <span>Geographie</span>
      </button>
        <div class="container-slides" :style="{transform: `translateX(${index}px)`, transition:`${transition}`}">
            <img src="https://picsum.photos/500/501" alt="img-histoire" class="img-slider">
            <img src="https://picsum.photos/500/500" alt="img-quizz" class="img-slider" :style="{display:`${hide}`}" >
            <img src="https://picsum.photos/500/502" alt="img-geographie" class="img-slider">
        </div>
        <button @click="next" class="btn btn-right" :style="{display:`${rshow}`}">
            <span>Histoire</span>
      </button>
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
            lshow:"flex"
        }
    },
    methods: {
        
        next(){
            this.hide = "none"
            this.rshow = "none"
            this.lshow = "flex"
            this.index = -500
        },
        prev(){
            this.hide = "none"
            this.rshow = "flex"
            this.lshow = "none"
            this.index = 0
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
</style>