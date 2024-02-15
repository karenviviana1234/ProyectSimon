import { Router } from "express";
import { actualizarcostos, crearcostos, eliminarcostos, listarcostos, mostarcostos } from "../controller/controller.costos.js";



const rutaCostos = Router()
rutaCostos.get("/costos", listarcostos)
rutaCostosutaCostos.post("/costos", crearcostos)
rutaCostos.put("/costo/:id_productos", actualizarcostos)
rutaCostos.get("/costos/:id_productos", mostarcostos)
rutaCostos.delete("/costosproduc/:id_productos", eliminarcostos)

export default rutaCostos;