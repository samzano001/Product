import * as orderService from "./order.service.js";

export const orderController = async (req, res, next) => {
  let data = {
    gender: req.body.gender,
    style: req.body.style,
    size: req.body.size,
    price: req.body.price,
    address: req.body.address,
    start_date: req.body.start_date,
    end_date: req.body.end_date,
  };

  try {
    const response = await orderService.insertOrder(data);

    if (response.insertId != 0) {
      console.log("response");
      return res.status(200).send({ Status: "00", Message: data });
    }
  } catch (err) {
    next(err);
  }
};

export const orderDateController = async (req, res, next) => {
  let { start_date, end_date } = req.body;

  try {
    const response = await orderService.searchOrderDate(start_date, end_date);
    res.status(200).send(response);
  } catch (err) {
    next(err);
  }
};
