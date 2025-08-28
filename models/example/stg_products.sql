WITH stg_products AS(
   SELECT p.id,
    p.name,
    p.cost,
    p.retail_price,
    p.category,
    p.department,
    dc.id AS distribution_center_id
    FROM raw_data.products p JOIN raw_data.distribution_centers dc
    ON p.distribution_center_id = dc.id
)

SELECT * FROM stg_products