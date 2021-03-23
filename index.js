const express = require('express')
const app = express()
const port = 80

app.get('/', (req, res) => {
  res.status(200).send('Hello World!')
})

app.listen(port, () => {
  console.log(`listening on port ${port}`)
})