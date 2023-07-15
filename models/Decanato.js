module.exports = (sequelize, dataTypes) => {
    let alias = 'Decanato';
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
        tableName: 'decanatos',
        timestamps: false
    };
    const Decanato = sequelize.define(alias, cols, config)

    return Decanato
}