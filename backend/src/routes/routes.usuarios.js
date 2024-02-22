import { Router } from "express"
import  {actualizarUsuario, listarUsuarios, buscarUsuario, desactivarUsuario, registrarUsuario} from '../controller/controller.usuarios.js'


const routesUsuarios = Router();

routesUsuarios.get('/listarUsuario', listarUsuarios);   
routesUsuarios.get('/buscarUsuario/:id_ususario', buscarUsuario);
routesUsuarios.post('/registrarUsuario', registrarUsuario);
routesUsuarios.post('/desactivarUsuario/:id_ususario', desactivarUsuario);
routesUsuarios.put('/actualizarUsuario/:id_ususario', actualizarUsuario);

export default routesUsuarios;




