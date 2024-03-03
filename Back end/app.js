require('dotenv').config()
const express = require('express')
const mysql = require('mysql2')
const cors = require('cors')

const app = express()
const port = 3005

//Metodo para obtener valores que vienen del body y parsearlos a json
app.use(express.json())
app.use(cors()) //pasaporte para el acceso al backend
//Routes
//Performance que deja abierta la sesion para hacer muchas request sin cerrarlas
const pool = mysql.createPool({
    connectionLimit: 10,
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME

})

//Me dice si conecto o truena todo
pool.getConnection((err, conn)=>{
    if(err) throw err;
    console.log("Conectado correctamente a la base de datos como ID", conn.threadId)
})

//todas las imagenes 
//como son muchos se pone rows

//Endpoint #1 para obtener todo, este no se usa mas que para debugear
app.get("/api/univers", (req, res)=>{
    pool.query('SELECT * FROM space', (err, rows)=>{
        if(err) throw err
        res.send(rows)
    })
})

//info basicas de las imagenes
app.get("/api/universcards", (req, res)=>{
    pool.query('SELECT id, center, title, ImagenURL FROM space', (err, rows)=>{
        if(err) throw err
        res.send(rows)
    })
})

//Detalles de las imagenes
app.get("/api/universdetails/:id", (req, res)=>{
    const {id} = req.params
    pool.query(`SELECT * FROM space WHERE id=${id}`, (err, rows)=>{
        if(err) throw err
        res.send( rows[0] )
    })
})

//Para insertar datos

app.post("/api/univers", (req, res)=>{
    const data = req.body
    const queryStr = `INSERT INTO space (id, center, title, photographer, data_created, description, ImagenURL) VALUES ("${data.id}", "${data.center}", "${data.title}", "${data.photographer}", "${data.data_created}", "${data.description}", "${data.ImagenURL}")`
    pool.query(queryStr, (err, result)=>{
        if(err) throw err;
        res.send({message:"Informacion registrada correctamente", id:result.insertId})
    })

})

app.listen(port, () => {
    console.log("Server corriendo en: ", port)
})