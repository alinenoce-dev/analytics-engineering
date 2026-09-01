with
    
    source_productcategory as (
        select * 
        from {{ source("production", "productcategory") }}
    ),
         
    renamed as (
        select            
            cast(productcategoryid as int) as pk_product_category
            , cast(name as string) as product_category_name
            , cast(modifieddate as timestamp) as product_category_modified_date
            
          from source_productcategory
    )

select *
from renamed
