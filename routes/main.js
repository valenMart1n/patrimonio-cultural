const express = require("express");
const router = express.Router();
const path = require("path");
const mainController = require("../controllers/mainController");

const {body} = require('express-validator');

router.get("/", mainController.index);





module.exports = router;