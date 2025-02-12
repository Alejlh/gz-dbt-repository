SELECT 
    date_date,
    ROUND(operational_margin-ads_cost) AS ads_margin,
    number_transactions,
    revenue,
    average_basket,
    operational_margin,
    purchase_cost,
    shipping_fee,
    log_cost,
    ads_cost,
    ads_impressions,
    ads_clicks,
FROM {{ ref("finance_days") }}
LEFT JOIN {{ ref("int_campaigns_day") }}
USING(date_date)