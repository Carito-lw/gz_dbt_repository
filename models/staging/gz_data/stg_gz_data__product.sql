with 

source as (

    select * from {{ source('gz_data', 'product') }}

),

renamed as (

    select
        products_id,
        purchse_price

    from source

)

select * from renamed
