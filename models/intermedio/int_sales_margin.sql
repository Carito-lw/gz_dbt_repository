with source as(
select *
from {{ref("stg_gz_data__sales")}}
join
{{ref("stg_gz_data__product")}}
using products_id
),

margin_calc as (
    select
    quantity * purchase_price as purchase_cost,
    revenue - purchase_cost as margin
    from source

)