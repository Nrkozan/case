require('dotenv').config();
const { Sequelize } = require('sequelize');

const sequelize = new Sequelize(process.env.DB_DATABASE, process.env.DB_USERNAME, process.env.DB_PASSWORD, {
    dialect: process.env.DB_DIALECT,
    host: process.env.DB_HOST,
    port: process.env.DB_PORT
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.products = require("./ProductModel.js")(sequelize, Sequelize);
db.product_variants = require("./ProductVariantModel.js")(sequelize, Sequelize);


module.exports = db;