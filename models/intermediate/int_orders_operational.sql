with int_table as (

    select orders_id,
    date_date,
    ROUND((margin+shipping_fee-logcost-ship_cost),2) as operational_margin,
    revenue,
    quantity,
    from {{ ref("int_orders_margin") }} as t_s
    left join {{ ref("stg_raw__ship") }} as t_p 
   using (orders_id)
)

select
    orders_id,
    date_date,
    operational_margin,
    quantity
from int_table


