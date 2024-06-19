-- 1 
USE sql_hr;
SELECT * FROM employees WHERE last_name LIKE 'MY%' OR last_name LIKE '%SE%';

-- 2 
SELECT * FROM employees WHERE last_name LIKE '%bR%' OR last_name LIKE '%bU%';

-- 3
USE sql_store;
SELECT * FROM orders WHERE shipped_date IS NULL;

-- 4
SELECT * FROM orders WHERE shipped_date IS NULL;

-- 5
SELECT * FROM customers ORDER BY points DESC LIMIT 3;

-- 6
SELECT oi.*, p.name AS product_name FROM order_items oi JOIN products p ON oi.product_id = p.product_id;

-- 7
USE sql_invoicing;
SELECT c.name AS client_name, pm.name AS payment_method FROM payments p JOIN clients c ON p.client_id = c.client_id 
JOIN payment_methods pm ON p.payment_method = pm.payment_method_id;

-- 8
USE sql_inventory;
SELECT p.product_id, p.name AS product_name, oi.quantity FROM products p JOIN order_items oi ON p.product_id = oi.product_id;

-- 9
SELECT o.order_date, o.order_id, c.first_name, s.name AS shipper, os.name AS status FROM sql_store.orders o JOIN sql_store.customers c ON o.customer_id = c.customer_id
LEFT JOIN sql_store.shippers s ON o.shipper_id = s.shipper_id
LEFT JOIN sql_store.order_statuses os ON o.status = os.order_status_id;

-- 10
USE sql_invoicing;
SELECT i.invoice_date, c.name AS client_name, p.amount, pm.name AS payment_method FROM invoices i
JOIN clients c ON i.client_id = c.client_id
JOIN payments p ON i.invoice_id = p.invoice_id
JOIN payment_methods pm ON p.payment_method = pm.payment_method_id;

-- 11
USE sql_store;
SELECT customer_id, first_name, points, CASE
        WHEN points BETWEEN 0 AND 1000 THEN 'bronze'
        WHEN points BETWEEN 2000 AND 3000 THEN 'silver'
        WHEN points > 3000 THEN 'gold'
        ELSE 'unknown'
    END AS type
FROM customers;

-- 12
USE sql_hr;
SELECT * FROM employees WHERE last_name LIKE '%EY' OR last_name LIKE '%ON';

-- 13
USE sql_store; 
SELECT * FROM orders WHERE shipped_date IS NULL;

-- 14
SELECT * FROM order_items WHERE order_id = 6 AND (quantity * unit_price) > 30;

-- 15
SELECT * FROM orders WHERE YEAR(order_date) = 2019;

