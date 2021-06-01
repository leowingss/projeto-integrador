module.exports = (sequelize, DataType) => {
    const Produto = sequelize.define('Produto', {
        id: {
            type: DataType.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        nome: DataType.STRING,
        preco: DataType.DECIMAL,
        image: DataType.STRING,
        categoria: DataType.STRING

    }, {
        tableName: 'produtos',
        timestamps: false
    })

    return Produto
}