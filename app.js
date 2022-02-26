const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  const response = {
    "message": 'Olá minha imagem!'
  }

  res.send(response.message)
})

app.listen(port, () => {
  console.log(`Executando na porta: ${port}`)
});