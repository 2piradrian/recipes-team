require('dotenv').config()

const express = require('express')
const dbConnect = require('./Config/MongoDB')
const APP = express()

const PORT = process.env.PORT

APP.listen(PORT, () => {
  console.log(`Server is running on: http://localhost:${PORT}`)
})

dbConnect()
