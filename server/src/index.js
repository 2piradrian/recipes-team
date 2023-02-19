require('dotenv').config()

const express = require('express')
const dbConnect = require('./Config/MongoDB')
const router = require('./Routes/Routes')
const APP = express()

const PORT = process.env.PORT

APP.use(express.json())
APP.use('/', router)

APP.listen(PORT, () => {
  console.log(`Server is running on: http://localhost:${PORT}`)
})

dbConnect()
