import express from 'express';
import cors from 'cors';
import productRount from './src/product/product.route.js';
import orderRount from './src/order/order.route.js';


const app = express();
const port = 8081;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors([
  'http://localhost:3000',
]));

app.get('/', (req, res) => {
  res.send('hello');
});

app.use('/product', productRount);
app.use('/order', orderRount);

app.listen(port, () => {
  console.log('Server running on port :', port);
});
