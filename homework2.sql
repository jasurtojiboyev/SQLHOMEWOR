-- HOMEWORK-1
SELECT c.company_name, first_name, c.city
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN employees e ON  o.employee_id = e.employee_id
JOIN shippers sh ON o.ship_via = sh.shipper_id
WHERE c.city = 'London' AND e.city = 'London' AND sh.company_name = 'Speedy Express';

-- HOMEWORK-2
SELECT product_name, units_in_stock, contact_name, phone
FROM categories c
JOIN products p ON c.category_id = p.category_id  
JOIN suppliers s ON p.supplier_id = s.supplier_id
WHERE discontinued = 1 AND units_in_stock < 20 AND category_name IN ('Beverages', 'Seafood');

-- HOMEWORK-3
SELECT contact_name, order_id
FROM orders
LEFT JOIN customers USING(customer_id)
WHERE shipped_date IS NULL;

-- HOMEWORK-4
SELECT contact_name, order_id
FROM customers
RIGHT JOIN orders USING(customer_id);






