import { Router } from "express";
import {registrar,  actualizar, desactivar, buscar, listar } from '../controller/controller.cultivos.js';

const rutaCultivos = Router();

rutaCultivos.get('/listar', listar);
rutaCultivos.post('/registrar', registrar);
rutaCultivos.get('/buscar/:id_cultivo', buscar); 
rutaCultivos.put('/actualizar/:id_cultivo', actualizar);
rutaCultivos.post('/desactivar/:id_cultivo', desactivar);


export default rutaCultivos;