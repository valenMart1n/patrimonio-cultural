const db = require('../models')
const { Sequelize, Op, Model, DataTypes } = require('sequelize');
let bcrypt = require("bcryptjs");

let usuariosController = {
    login: async (req, res) =>{
        let usuario = req.body.usuario;
        await db.Usuario.findOne({
            where: {
                usuario
            }
        }).then(async resultados =>{
            if(resultados && bcrypt.compareSync(req.body.password, resultados.dataValues.password) && resultados.dataValues.nivel == "1"){
             req.session.nivel = 1;
             res.redirect("/users/admin");
            }else if (resultados && bcrypt.compareSync(req.body.password, resultados.dataValues.password) && resultados.dataValues.nivel == "2"){
                req.session.nivel = 2;
                res.render("fichaMain");
            }else{
                res.render("login");
            }
        });
    
    },
    admin: async (req, res) => {
        if(req.session.nivel == 1){
        let listaUsuarios = await db.Usuario.findAll();
        let listaParroquias = await db.Parroquia.findAll({
            order: [
              ['descripcion', 'ASC']]}
        );
        return res.render("menuAdmin", {listaUsuarios, listaParroquias});
        }
    },
    crearUsuario: (req, res) => {
        db.Usuario.create({
            usuario: req.body.usuario,
            password: bcrypt.hashSync(req.body.password, 10),
            nivel: 2,
            idInstitucion: req.body.institucion,
            apellidoNombres: req.body.nombre,
            domicilio: req.body.domicilio,
            telefono: req.body.telefono,
            email: req.body.email
        })
        res.redirect("/users/admin");
        
    },
    eliminar: async(req, res) => {
        await db.Usuario.destroy({
            where: {id: req.params.id}
        });
        res.redirect("/users/admin");
    },
    info: async(req, res) => {
        
        let parroquia;
        let usuario = await db.Usuario.findOne({where: {id: req.params.id}})
        await db.Usuario.findOne({where: {id: req.params.id}}).then(datos => {
        db.Parroquia.findOne({where: {id: datos.idInstitucion}}).then(result => {
        parroquia = result;
        })
        
    })
    let listaParroquias = await db.Parroquia.findAll({
        order: [
          ['descripcion', 'ASC']]}
    );
    return res.render("info", {usuario, parroquia, listaParroquias});
    },

    update: async(req, res) => {

        const id = req.params.id;
        await db.Usuario.update(
            {
            usuario: req.body.usuario,
            apellidoNombres: req.body.nombre,
            idInstitucion: req.body.institucion,
            domicilio: req.body.domicilio,
            telefono: req.body.telefono,
            email: req.body.email,
            
            },
            {
                where: {id}
            }
            

        )
        console.log("dasd");
       res.redirect("/users/admin");

    }
}
module.exports = usuariosController;