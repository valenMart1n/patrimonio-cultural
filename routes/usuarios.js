const express = require("express");
const router = express.Router();
const path = require("path");
const usuariosController = require("../controllers/usuariosController");

router.get("/info/:id", usuariosController.info);
router.get("/admin", usuariosController.admin);
router.post("/logged", usuariosController.login);
router.post("/create", usuariosController.crearUsuario);
router.put("/update/:id", usuariosController.update);
router.delete("/delete/:id", usuariosController.eliminar);
module.exports = router;