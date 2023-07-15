module.exports = (sequelize, dataTypes) => {
    let alias = 'Tipoinstitucion';
    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        descripcion: {
            type: dataTypes.STRING
        }
    };
    let config = {
        tableName: 'tipoinstitucion',
        timestamps: false
    };
    const Tipoinstitucion = sequelize.define(alias, cols, config)

    return Tipoinstitucion
}