const db = require("../model");
const ProductModel = db.products;
const ProductVariantModel = db.product_variants;
const Op = db.Sequelize.Op;
const multer = require('multer');
const path = require('path');
const { init: initSocketIo, getIo } = require('../../socket'); 

const storage = multer.memoryStorage(); 
const upload = multer({ storage: storage });

class ProductController {
    static async index(req, res) {
        let products = await ProductModel.findAll();
        res.render('index', { products });
    }

    static async show(req, res) {
        const product = await ProductModel.findByPk(req.params.id);
        res.render('product', { product });
    }

    static async create(req, res) {
        const { name, price } = req.body;
        getIo().emit('newProduct', { name, price }); // Değişiklik burada
        res.redirect('/products');
    }

    static async update(req, res) {
        const { id } = req.params;
        const { name, price } = req.body;
        getIo().emit('productUpdate', { id, name, price }); // Değişiklik burada
        res.redirect(`/products/${id}`);
    }

    static async importFormJsonFile(req, res) {
        upload.single('file')(req, res, function (err) {
            if (err) {
                console.log(err);
                return res.status(422).send("An error occurred during file upload");
            }

            const file = req.file;
            const jsonData = JSON.parse(file.buffer.toString());
            const products = jsonData.products;

            products.forEach(async (product) => {
                for (const [key, value] of Object.entries(product)) {
                    const newProduct = await ProductModel.create({
                        name: key,
                        price: value.price,
                        description: value.description,
                        image: value.img
                    });

                 

                    const variants = value.size;
                    for (const [key, value] of Object.entries(variants)) {
                        await ProductVariantModel.create({
                            name: value,
                            product_id: newProduct.id
                        });
                    }
                

                    getIo().emit('newProduct', newProduct); 
                }
            });
          
            return res.json({ status: 'ok', message: 'File uploaded successfully' });
        });
    }

    static async deleteAll(req, res) {
        //delete all variants
        await ProductVariantModel.destroy({
            where: {},
            truncate: false
        });
        
        await ProductModel.destroy({
            where: {},
            truncate: false
        });
        getIo().emit('deleteAllProducts', {}); // Değişiklik burada
        res.json({ status: 'ok', message: 'All products deleted successfully' });
    }

    static async getSize(req, res) {
        const size = req.params.size;
        //get products ids
        const productsVariant = await ProductVariantModel.findAll({
            where: {
                name: size
            },
            attributes: ['product_id']
        });

        const productsIds = productsVariant.map(product => product.product_id);

        //get products
        const products = await ProductModel.findAll({
            where: {
                id: productsIds
            }
        });
        

        res.json({ status: 'ok', message: 'All products deleted successfully', data: products });
    }
}

module.exports = ProductController;
