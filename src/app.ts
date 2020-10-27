import express from 'express'

const app = express()

app.get('/', (req, res) => {
  res.send('Hello world from Docker and Typescript!')
})

app.listen(8080, () => {
  console.log('Server up on port 8080')
})