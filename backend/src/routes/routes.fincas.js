import { Router } from "express";
import {registrar,  actualizar, desactivar, buscar, listar } from '../controller/controller.fincas.js';

const rutaFincas = Router();

rutaFincas.get('/listarFinca', listar);
rutaFincas.post('/fincas', registrar);
rutaFincas.get('/fincas/:id_finca', buscar); 
rutaFincas.put('/fincas/:id_finca', actualizar);
rutaFincas.post('/fincas/:id_finca', desactivar);


export default rutaFincas;