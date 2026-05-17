SELECT product_category_name, product_category_name_english
FROM {{ ref('product_category_name_translation') }}