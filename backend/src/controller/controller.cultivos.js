import {query} from 'express';
import { pool } from '../database/Conexion.js';

export const listar = async (req,res) => {
    try{
    let sql = 'select * from cultivo';
    const [result] = await pool.query(sql);
    if (result.length > 0) {
      res.status(200).json(result);
    }else{
      res.status(404).json({'message': 'No se encontraron cultivos '});
    }
  } catch(error){
    res.status(500).json({'status':500,'message':'error en el sistema: '+error});
  }
  };
  
  export const registrar = async (req, res) =>{
    try{
    const {variedad, tipo_semilla,  cantidad_arbustos} = req.body;
  
    let sql =  `INSERT INTO cultivo (variedad, tipo_semilla,  cantidad_arbustos) VALUES (?, ?, ?)`;
  
    const [rows] = await pool.query(sql,[variedad, tipo_semilla,  cantidad_arbustos]);
    if (rows.affectedRows > 0) {
      res.status(200).json({'status':200,'message':'Se registro el cultivo'});
    }else{
      res.status(403).json({'status':403,'message':'No se pudo registrar el cultivo'});
    }
  } catch(error){
    res.status(500).json({'status':500,'message':'error en el sistema: '+error});
  }
  
  };
  


  export const desactivar = async (req, res) => {
    try {
      const { id_cultivo } = req.params;
      const [resultado] = await pool.query("UPDATE cultivo SET estado='inactivo' WHERE id_cultivo=?", [id_cultivo]);
  
      if (resultado.affectedRows > 0) {
        res.status(201).json({
          mensaje: "Su Cultivo se desactivó con éxito"
        });
      } else {
        res.status(404).json({
          mensaje: "El cultivo No se pudo desactivar"
        });
      }
    } catch (error) {
      res.status(500).json({'status':500,'message':'error en el sistema: '+error});
    }
  };
  

  export const actualizar = async (req, res) => {
    try {
      const { id_cultivo } = req.params;
      const { variedad, tipo_semilla,  cantidad_arbustos } = req.body;
  
      let sql = `
        UPDATE cultivo
        SET variedad = ?, 
        tipo_semilla = ?,  
        cantidad_arbustos  = ?
        WHERE id_cultivo = ?
      `;
  
      const [rows] = await pool.query(sql, [variedad, tipo_semilla,  cantidad_arbustos, id_cultivo]);
  
      if (rows.affectedRows > 0) {
        res.status(200).json({ status: 200, message: 'La información ha sido actualizada' });
      } else {
        res.status(404).json({ status: 404, message: 'No se pudo actualizar la información' });
      }
    } catch (error) {
      res.status(500).json({ status: 500, message: 'Error en el sistema: ' + error });
    }
  };
  
  export const buscar = async (req, res) => {
    try {
        const { id_cultivo} = req.params;
        const [resultado] = await pool.query("SELECT * FROM cultivo WHERE id_cultivo=?", [id_cultivo]);

        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(404).json({
                mensaje: "No se encontró ese cultivo con ese ID"
            });
        }
    } catch (error) {
        res.status(500).json({ status: 500, message: 'Error en el sistema: ' + error });
    }
};
