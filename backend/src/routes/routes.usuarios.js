import { Router } from "express"
import  {actualizarUsuario, listarUsuarios, eliminarUsuario, registrarUsuario} from '../controller/controller.usuarios.js'


const rutasUsuarios = Router();

rutasUsuarios.get('/listarUsuario', listarUsuarios);
rutasUsuarios.get('/listarUsuario', listarUsuarios);
rutasUsuarios.post('/registrarUsuario', registrarUsuario);
rutasUsuarios.delete('/eliminarUsuario/:id_ususario', eliminarUsuario);
rutasUsuarios.put('/actualizarUsuario/:id_ususario', actualizarUsuario);

export default rutasUsuarios;