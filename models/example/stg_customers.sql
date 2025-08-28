 WITH stg_customers AS(
    SELECT customer_id,
    CONCAT(first_name, ' ', last_name) as full_name,
    email, 
    address
    FROM raw.customers
)

SELECT * FROM stg_customers;