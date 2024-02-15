import { Router } from "express";
import { actualizaractividades, crearactividades, eliminaractividades, listaractividades, mostaractividades,  } from "../controller/controller.actividades.js";



const rutaActividad = Router()
rutaActividad.get("/actividades", listaractividades)
rutaActividad.post("/actividades", crearactividades)
rutaActividad.put("/actividad/:id_actividades", actualizaractividades)
rutaActividad.get("/actividades/:id_actividades", mostaractividades)
rutaActividad.delete("/actividadeliminar/:id_actividades", eliminaractividades)

export default rutaActividad