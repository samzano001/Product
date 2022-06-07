import pool from '../../config/connect.js';


export const insertOrder = async (data) => {
    let query = `INSERT INTO \`order\` SET ?`;
    const [result] = await pool.query(query,data);
    return result;  
}


export const searchOrderDate = async (start_date, end_date) => {
    let query = `SELECT * FROM  \`order\`  WHERE start_date ='${start_date}' OR  end_date ='${end_date}' `;
    const [result] = await pool.query(query);
    return result;  
}