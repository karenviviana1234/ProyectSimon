import { Router } from "express";
import {registrar,  actualizar, desactivar, buscar, listar } from '../controller/controller.cultivos.js';

const rutaCultivos = Router();

rutaCultivos.get('/cultivos', listar);
rutaCultivos.post('/cultivos', registrar);
rutaCultivos.get('/cultivos/:id_cultivo', buscar); 
rutaCultivos.put('/cultivos/:id_cultivo', actualizar);
rutaCultivos.post('/cultivos/:id_cultivo', desactivar);


export default rutaCultivos;