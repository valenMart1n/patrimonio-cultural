module.exports = (sequelize, dataTypes) => {
    let alias = 'Parroquia';
    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        descripcion: {
            type: dataTypes.STRING
        },
        calle: {
            type: dataTypes.STRING
        },
        nro: {
            type: dataTypes.STRING
        },
        codPostal: {
            type: dataTypes.STRING
        },
        localidad: {
            type: dataTypes.STRING
        },
        telefono: {
            type: dataTypes.STRING
        },
        idDiocesis: {
            type: dataTypes.INTEGER
        },
        idDecanato: {
            type: dataTypes.INTEGER
        },
        idTipoInstituto: {
            type: dataTypes.INTEGER
        }
    };
    let config = {
        tableName: 'parroquias',
        timestamps: false
    };
    const Parroquia = sequelize.define(alias, cols, config)

    return Parroquia;
}