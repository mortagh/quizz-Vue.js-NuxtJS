<template>
<div>
  <div class="container">
    <h1>La question</h1>
    <div class="QCM">
      <div class="row">
        <div class="reponse">
          <div class="checkbox">
            <input type="checkbox" id="scales" name="scales">
            <label for="scales">réponse 1</label>
          </div>
        </div>
        <div class="reponse">
          <div class="checkbox">
            <input type="checkbox" id="scales" name="scales">
            <label for="scales">réponse 2</label>
          </div>

        </div>
      </div>
      <div class="row">
        <div class="reponse">
          <div class="checkbox">
            <input type="checkbox" id="scales" name="scales">
            <label for="scales">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum, quae eius adipisci
              fugiat,
              quam reiciendis inventore illum recusandae totam temporibus quisquam odio, sit ullam doloremque in quas
              explicabo. Aspernatur, velit.</label>
          </div>
        </div>
        <div class="reponse">
          <div class="checkbox">
            <input type="checkbox" id="scales" name="scales">
            <label for="scales">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum, quae eius adipisci
              fugiat,
              quam reiciendis inventore illum recusandae totam temporibus quisquam odio, sit ullam doloremque in quas
              explicabo. Aspernatur, velit</label>
          </div>
        </div>
      </div>
    </div>
    <button class="valider">valider</button>
    
  </div>
  <quizz></quizz>
  </div>
</template>

<style scoped>
  .container {
    background-color: white;
    color: black;
    border-radius: 16px;
    width: 800px;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    padding: 32px 32px 64px 32px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translateX(-50%) translateY(-50%);
  }

  .checkbox {
    display: flex;
    gap: 8px;
  }

  label {
    height: 100%;
  }

  h1 {
    display: inline;
    margin: 32px;
  }

  .QCM {
    width: 100%;
  }

  input {
    margin-top: 4px;
  }

  .valider {
    position: absolute;
    right: 0;
    bottom: 0;
    margin: 16px;
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
    font-weight: 400;
    color: white;
  }

  .reponse {
    margin-bottom: 16px;
    margin-right: 16px;
    display: flex;
    flex-direction: column;
    flex-basis: 100%;
    flex: 1;
    gap: 8px;
  }

  .row {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    width: 100%;
  }

</style>
