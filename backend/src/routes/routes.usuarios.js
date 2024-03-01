import { Router } from "express"
import  {actualizarUsuario, listarUsuarios, desactivarUsuario, registrarUsuario} from '../controller/controller.usuarios.js'


const rutasUsuarios = Router();

rutasUsuarios.get('/listarUsuario', listarUsuarios);
rutasUsuarios.get('/listarUsuario', listarUsuarios);
rutasUsuarios.post('/registrarUsuario', registrarUsuario);
rutasUsuarios.delete('/desactivarUsuario/:id_ususario', desactivarUsuario);
rutasUsuarios.put('/actualizarUsuario/:id_ususario', actualizarUsuario);

export default rutasUsuarios;





