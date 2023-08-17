const express = require('express');
const router = express.Router();
const ProductController = require('../app/controller/productController');


router.get('/', ProductController.index);

router.post('/import', ProductController.importFormJsonFile);

router.get('/deleteAll', ProductController.deleteAll);

router.get('/getSize/:size', ProductController.getSize);



module.exports = router;