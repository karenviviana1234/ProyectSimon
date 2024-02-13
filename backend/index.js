import express  from "express";
import bodyParser from "body-parser";


const servidor = express();
const port = 3333

servidor.use(bodyParser.json());
servidor.use(bodyParser.urlencoded({extended:false}));

//rutas


servidor.listen(port,()=>{
    console.log('Sirve el puerto 3333')
})