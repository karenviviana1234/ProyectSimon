import express  from "express";
import bodyParser from "body-parser";
import rutaFincas from "./src/routes/routes.fincas.js";
import rutaCultivos from "./src/routes/routes.cultivos.js";


const servidor = express();
<<<<<<< HEAD
const port = 3333
=======
const port = 4000
>>>>>>> devkfam

servidor.use(bodyParser.json());
servidor.use(bodyParser.urlencoded({extended:false}));

//rutas
<<<<<<< HEAD
servidor.use( '/fincas',rutaFincas)
servidor.use( '/cultivos',rutaCultivos)
=======
servidor.use(rutaFincas)
servidor.use(rutaCultivos)
>>>>>>> devkfam

servidor.listen(port,()=>{
    console.log('Sirve el puerto 3333')
})



servidor.set('views engine', 'ejs');
servidor.set('views','./views');
servidor.use(express.static('./public'));

servidor.get('/document', (req,res)=>{
    res.render('documentDjzv.ejs')
})