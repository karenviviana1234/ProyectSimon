import express  from "express";
import bodyParser from "body-parser";
import rutaFincas from "./src/routes/routes.fincas.js";
import rutaCultivos from "./src/routes/routes.cultivos.js";


const servidor = express();
const port = 3333

servidor.use(bodyParser.json());
servidor.use(bodyParser.urlencoded({extended:false}));

//rutas
servidor.use( '/fincas',rutaFincas)
servidor.use( '/cultivos',rutaCultivos)

servidor.listen(port,()=>{
    console.log('Sirve el puerto 3333')
})



servidor.set('views engine', 'ejs');
servidor.set('views','./views');
servidor.use(express.static('./public'));

servidor.get('/document', (req,res)=>{
    res.render('documentDjzv.ejs')
})