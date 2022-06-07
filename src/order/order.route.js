import { Router } from 'express';
import * as Controller from './order.controller.js';


const router = Router();
router.post('/insertOrder', Controller.orderController);
router.get('/searchOrderDate', Controller.orderDateController);
export default router;


