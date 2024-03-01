import { Router } from "express";
import {registrar,  actualizar, desactivar, buscar, listar } from '../controller/controller.fincas.js';

const rutaFincas = Router();

rutaFincas.get('/listar', listar);
rutaFincas.post('/registrar', registrar);
rutaFincas.get('/buscar/:id_finca', buscar); 
rutaFincas.put('/actualizar/:id_finca', actualizar);
rutaFincas.delete('/desactivar/:id_finca', desactivar);


export default rutaFincas;