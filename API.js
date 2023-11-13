'use strict'

import express from 'express'
import pg from 'pg'
import {promises as fs} from 'fs'
import cors from 'cors'

const {Pool} = pg
const app = express()
const PORT = 3000

const pool = new Pool ({
    user: "postgres",
    host: "localhost",
    database: "galvanize",
    password: "AllThePi",
    port: "5432"
})

app.use(cors())
app.use(express.json())
app.use(express.static('public'))

