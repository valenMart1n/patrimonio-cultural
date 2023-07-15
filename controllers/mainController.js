const db = require('../models')
const { Sequelize, Op, Model, DataTypes } = require('sequelize');

let mainController = {
    index: async (req, res) =>{
        return res.render('login');
    }
}
module.exports = mainController;