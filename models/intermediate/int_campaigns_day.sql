 SELECT 
 date_date, 
 ROUND(SUM(ads_cost),2) as ad_cost,
 ROUND(SUM(impression),2) as ads_impressions,
 ROUND(SUM(click),2) as nb_clicks,
 FROM {{ref('int_campaigns')}}
 GROUP BY date_date
 ORDER BY date_date DESC