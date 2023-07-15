const express = require("express");
const session = require("express-session");

const app = express();

const methodOverride =  require('method-override');



let productos = require("./routes/productos");
let mainRoutes = require("./routes/main");
let usuarios = require("./routes/usuarios");

app.use(express.json());
app.use(express.urlencoded({extended:false}));
app.use(methodOverride('_method'));
app.use(express.static("public"));

app.set("view engine", "ejs");

app.use(session({secret: "session", resave: false, saveUninitialized: false}));

app.use("/", mainRoutes);
app.use("/products", productos);
app.use("/users", usuarios);
const port = process.env.PORT || 3030;
app.listen(port, () => console.log(`Servidor Abierto en puerto ${port}`));