const express = require('express')
const app = express()
const cors = require('cors')

const questionsRouter = require("./routes/questions");
const categoriesRouter = require("./routes/categories");
const thematiqueRouter = require("./routes/thematique");
const reponsesRouter = require("./routes/reponses");
app.use(cors())
app.use('/questions', questionsRouter);
app.use('/reponses', reponsesRouter);
app.use('/categories', categoriesRouter);
app.use('/thematique', thematiqueRouter);

const port = 3001;
app.listen(port, () => {
    console.log(`App listening at http://localhost:${port}`)
  });