 {% macro margin_calcul (revenue, purchase_cost) %}
    ROUND(SAFE_DIVIDE((revenue-purchase_cost),revenue),2) AS margin_percent
 {% endmacro %}