SELECT 
    DATE_TRUNC(date_date, MONTH) AS date_month,
    SUM(ads_margin) AS ads_margin,
    SUM(average_basket) AS average_basket,
    SUM(operational_margin) AS operational_margin,
    SUM(ads_cost) AS ads_cost,
    SUM(revenue) AS revenue,
    SUM(purchase_cost) AS purchase_cost,
    SUM(shipping_fee) AS shipping_fee,
FROM {{ref('finance_campaigns_day')}}
GROUP BY date_month
ORDER BY date_month DESC
