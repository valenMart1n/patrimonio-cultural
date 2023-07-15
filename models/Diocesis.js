module.exports = (sequelize, dataTypes) => {
    let alias = 'Diocesis';
    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        descripcion: {
            type: dataTypes.STRING
        },
        sigla: {
            type: dataTypes.STRING
        },
        tipo: {
            type: dataTypes.INTEGER
        }
    };
    let config = {
        tableName: 'diocesis',
        timestamps: false
    };
    const Diocesis = sequelize.define(alias, cols, config)

    return Diocesis;
}