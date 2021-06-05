module.exports = (sequelize, DataType) => {
    const Usuario = sequelize.define('Usuario', {
        id: {
            type: DataType.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        nome: DataType.STRING,
        email: DataType.STRING,
        senha: DataType.STRING,
        endereco: DataType.STRING

    }, {
        tableName: 'usuarios',
        timestamps: false
    })

    return Usuario
}