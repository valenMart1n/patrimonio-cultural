module.exports = (sequelize, dataTypes) => {
    let alias = 'Usuario';
    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        usuario: {
            type: dataTypes.STRING
        },
        password: {
            type: dataTypes.STRING
        },
        nivel: {
            type: dataTypes.INTEGER
        },
        idInstitucion: {
            type: dataTypes.INTEGER
        },
        apellidoNombres: {
            type: dataTypes.STRING
        },
        domicilio: {
            type: dataTypes.STRING
        },
        telefono: {
            type: dataTypes.STRING
        },
        email: {
            type: dataTypes.STRING
        }
    };
    let config = {
        tableName: 'usuarios',
        timestamps: false
    };
    const Usuario = sequelize.define(alias, cols, config)

    return Usuario
}