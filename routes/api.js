const express = require("express");
const router = express.Router();
const path = require("path");

const apiUsuarios = require("../controllers/apiUsuarios");

router.get("/users/:id", apiUsuarios.lista);

module.exports = router;