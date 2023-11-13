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

app.use(express.static('public'))
app.use(cors())
app.use(express.json())

app.get('/api/:id', async (req,res) => {
    try{
        const {id} = req.params
        const {rows} = await pool.query(`SELECT * FROM ${id}`)
        res.status(200).json(rows)
    }catch(err){
        console.log(err)
        res.status(500).send('internal server error')
    }
})

app.listen(PORT, () => {
    console.log(`server running on port ${PORT}`)
})