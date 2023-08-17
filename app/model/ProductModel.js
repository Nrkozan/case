module.exports = (sequelize, Sequelize) => {
    const Product = sequelize.define("product", {
        name: {
            type: Sequelize.STRING
        },
        price: {
            type: Sequelize.DECIMAL(10, 2)
        },
        description: {
            type: Sequelize.STRING
        },
        image: {
            type: Sequelize.STRING
        }
    });

    Product.prototype.randomImage = function () {
        const md5 = require('md5');
        const fileName = md5(this.name);
        return 'https://www.gravatar.com/avatar/' + fileName + '?d=identicon';
    };


    const ProductVariant = require("./ProductVariantModel.js")(sequelize, Sequelize);
   
    Product.hasMany(ProductVariant, { as: "product_variants" });
    

    return Product;
};