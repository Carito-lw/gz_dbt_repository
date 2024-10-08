SELECT
  orders_id
  ,date_date
  ,ROUND(margin + shipping_fee - (logcost + CAST(ship_cost AS FLOAT64)),2) AS operational_margin 
  ,quantity
  ,revenue
  ,purchase_cost
  ,margin
  ,shipping_fee
  ,logcost
  ,ship_cost
FROM {{ref("int_orders_margin")}} 
LEFT JOIN {{ref("stg_gz_data__ship")}} 
  USING(orders_id)
ORDER BY orders_id desc