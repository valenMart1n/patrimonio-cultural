const express = require("express");
const router = express.Router();

const productosController = require("../controllers/productosController");

const multer = require("multer");

let storage = multer.diskStorage({
    destination: (req, file, callback) => {
  let folder = path.join(__dirname, "../../public/images/productos");
      callback(null, folder);  
  },
    filename: (req, file, callback) => {
   let imageName = Date.now() + path.extname(file.originalname);
  callback(null, imageName);
  }
  });
  const fileUpload = multer({ storage});


router.post("/agregado", productosController.addProductos);




module.exports = router;