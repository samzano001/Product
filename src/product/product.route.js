import { Router } from 'express';
import * as Controller from './product.controller.js';


const router = Router();
router.get('/getproduct/:page?', Controller.productController);
export default router;
