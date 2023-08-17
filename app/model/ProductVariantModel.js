module.exports = (sequelize, Sequelize) => {
    const ProductVariant = sequelize.define("product_variant", {
        name: {
            type: Sequelize.STRING
        },
        product_id: {
            type: Sequelize.INTEGER
        },
    });

    return ProductVariant;
};