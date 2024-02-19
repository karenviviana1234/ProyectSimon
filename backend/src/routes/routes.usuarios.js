import { Router } from "express"
<<<<<<< HEAD
import  {actualizarUsuario, listarUsuarios, eliminarUsuario, registrarUsuario} from '../controller/controller.usuarios.js'


const rutasUsuarios = Router();

rutasUsuarios.get('/listarUsuario', listarUsuarios);
rutasUsuarios.get('/listarUsuario', listarUsuarios);
rutasUsuarios.post('/registrarUsuario', registrarUsuario);
rutasUsuarios.delete('/eliminarUsuario/:id_ususario', eliminarUsuario);
rutasUsuarios.put('/actualizarUsuario/:id_ususario', actualizarUsuario);

export default rutasUsuarios;
=======
import  {actualizarUsuario, listarUsuarios, buscarUsuario, desactivarUsuario, registrarUsuario} from '../controller/controller.usuarios.js'


const routesUsuarios = Router();

routesUsuarios.get('/listarUsuario', listarUsuarios);
routesUsuarios.get('/buscarUsuario/:id_ususario', buscarUsuario);
routesUsuarios.post('/registrarUsuario', registrarUsuario);
routesUsuarios.post('/desactivarUsuario/:id_ususario', desactivarUsuario);
routesUsuarios.put('/actualizarUsuario/:id_ususario', actualizarUsuario);

export default routesUsuarios;
>>>>>>> devdjzv
