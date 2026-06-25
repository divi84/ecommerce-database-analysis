SELECT 
    full_name,
    city,
    signup_date,
    ROW_NUMBER() OVER (ORDER BY signup_date ASC) AS row_num
FROM customers;