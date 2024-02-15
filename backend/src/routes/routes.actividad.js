import { Router } from "express";
import { actualizaractividades, crearactividades, eliminaractividades, listaractividades, mostaractividades,  } from "../controllers/controller.actividades.js";



const router = Router()
router.get("/actividades", listaractividades)
router.post("/actividades", crearactividades)
router.put("/actividad/:id_actividades", actualizaractividades)
router.get("/actividades/:id_actividades", mostaractividades)
router.delete("/actividadeliminar/:id_actividades", eliminaractividades)

export default router