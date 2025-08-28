WITH stg_products_women AS(
    SELECT p.id,
    p.name,
    p.cost,
    p.retail_price,
    p.category,
    p.department,
    dc.name AS distribution_center
    FROM {{ ref("stg_products") }} p JOIN raw_data.distribution_centers dc
    ON p.distribution_center_id = dc.id
    WHERE p.department  LIKE 'Women'
)

SELECT * FROM stg_products_women