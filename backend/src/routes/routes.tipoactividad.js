import { Router } from "express";
import { actualizartipo, creartipo, eliminartipo, listartipo, mostartipo } from "../controller/controller.tipoactividad.js";



const rutaTipoActividad = Router()
rutaTipoActividad.get("/tipo_actividad", listartipo)
rutaTipoActividad.post("/tipo_actividad", creartipo) 
rutaTipoActividad.put("/tipo_actividad/:id_tipo_actividad", actualizartipo)
rutaTipoActividad.get("/tipo_activi/:id_tipo_actividad", mostartipo)
rutaTipoActividad.delete("/tipo_activiti/:id_tipo_actividad", eliminartipo)

export default rutaTipoActividad