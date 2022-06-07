import * as productService from "./product.service.js" 

export const productController = async (req, res, next) => {
    
    let { gender, style, size} = req.body;
    let length = req.body.length || 10 ;
    let page = req.params.page || 0 ;
    console.log(req.body);

    try{
        const data = await productService.getProduct(gender, style, size, page, length);
        res.status(200).send(data);
    }catch(err){
        next(err)
    }

}

