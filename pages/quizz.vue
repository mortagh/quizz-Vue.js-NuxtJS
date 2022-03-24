<template>
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
    padding: 32px;
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
