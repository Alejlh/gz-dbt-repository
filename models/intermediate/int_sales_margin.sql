with
    int_table as (

        select *,
        from {{ ref("stg_raw__sales") }} as t_s
        left join {{ ref("stg_raw__product") }} as t_p using (products_id)

    )

select
    date_date,
    products_id,
    orders_id,
    revenue,
    quantity,
    round(quantity * purchase_price, 2) as purchase_cost,
    round(revenue - round(quantity * purchase_price, 2), 2) as margin,
from int_table
