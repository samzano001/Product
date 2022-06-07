import pool from '../../config/connect.js';

export const getProduct = async (gender, style, size, page, length ) => {
    let query = `SELECT * FROM product `;  
    if(gender || style || size){
        query += 'WHERE '
        let text = []
        let arr = []
        if(gender){
            arr.push({gender : gender})
        }
        if(style){
            arr.push({style : style})
        }
        if(size){
            arr.push({size : size})
        }

        if(arr.length){
            arr.forEach( e => text.push(`${Object.keys(e) } = '${Object.values(e)}'`))
            query += text.join(' OR ')
        }else{
            query += `${Object.keys(arr[0]) } = '${Object.values(arr[0])}'`
        }
    }

    if(parseInt(page)){
        const maxId = 'SELECT MAX(id) as max FROM product';
        const [[result]] =  await pool.query(maxId);
        let perpage = Math.ceil(result.max/length)-1    ;

        if(perpage * page > maxId){
            return 
        }else{
            query += ` limit ${(length * (page-1))}, ${length}`;
        }
    }

    const [result] = await pool.query(query);

    return result;
}
