module.exports = (sequelize, dataTypes) => {
    let alias = 'Inventario';
    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        objeto: {
            type: dataTypes.STRING
        },
        descripcion: {
            type: dataTypes.STRING
        },
        cantidad: {
            type: dataTypes.INTEGER
        }

    };
    let config = {
        tableName: 'inventario',
        timestamps: false
    };
    const Inventario = sequelize.define(alias, cols, config)

    return Inventario
}