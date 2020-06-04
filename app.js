const express = require('express')

const app = express()

app.get('/', (req, res, next) => {
  res.send('Hello world!')
})

app.listen({ port: 3001 }, () => {
  console.info(`🚀  Server ready at localhost:${3001}`)
})
