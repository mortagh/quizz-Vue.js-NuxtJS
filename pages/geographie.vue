<template>
  <div class="p-geo">
    <h1> GEOGRAPHIE </h1>
    <h3>Choisis ta thématique</h3>
    <div class="container-thematique">
      <tile-thematique>
        <h2 class="thematiques">Capital</h2>
        <p class="desc-thematiques">Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem excepturi iste ad
          repudiandae iusto suscipit eum tempora asperiores hic minus soluta doloremque quidem dolorem est praesentium,
          doloribus a totam nesciunt.
        </p>
      </tile-thematique>
      <tile-thematique>
        <h2 class="thematiques">Population</h2>
        <p class="desc-thematiques">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam labore sed illo,
          facilis a id, ipsum aut, reiciendis consequuntur velit quisquam eos distinctio aperiam! Debitis expedita enim
          explicabo molestias illum.</p>
      </tile-thematique>
      <tile-thematique>
        <h2 class="thematiques">Superficie</h2>
        <p class="desc-thematiques">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Debitis autem error hic
          delectus. Blanditiis neque optio aliquid eius, fugiat debitis sit obcaecati excepturi adipisci? Nobis tempora
          exercitationem debitis repellendus! Minima?</p>
      </tile-thematique>
    </div>
  </div>
</template>

<style scoped>

  .p-geo {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    margin-top: 100px;
    gap: 50px;
  }

  .container-thematique {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
  }

</style>
