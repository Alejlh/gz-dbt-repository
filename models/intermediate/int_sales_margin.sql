With int_table AS (

SELECT *,
FROM {{ ref('stg_raw__sales')}} AS t_s
LEFT JOIN {{ ref('stg_raw__product')}} as t_p
USING(products_id)

)

SELECT date_date,
products_id,
orders_id,
revenue,
quantity,
ROUND(quantity*purchase_price,2) AS purchase_cost,
ROUND(revenue-ROUND(quantity*purchase_price,2),2) AS margin,
FROM int_table
