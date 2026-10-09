-- 1. Retrieve all records for orders in the Electronics category.
SELECT *
FROM sales_orders
WHERE category = 'Electronics';

-- 2. Find order_id, customer_name, and amount for orders exceeding 500.00.
SELECT order_id, customer_name, amount
FROM sales_orders
WHERE amount > 500.00;

-- 3. Retrieve orders placed between February 1, 2024 and March 31, 2024.
SELECT *
FROM sales_orders
WHERE order_date BETWEEN '2024-02-01' AND '2024-03-31';

-- 4. Find orders in Books, Toys, or Groceries.
SELECT *
FROM sales_orders
WHERE category IN ('Books', 'Toys', 'Groceries');

-- 5. Find Clothing orders under 100.00.
SELECT *
FROM sales_orders
WHERE category = 'Clothing' AND amount < 100.00;

-- 6. Find orders in Electronics priced at 800.00 or above, or orders placed in Chicago.
SELECT *
FROM sales_orders
WHERE (category = 'Electronics' AND amount >= 800.00) OR city = 'Chicago';

-- 7. Find orders where category is not Groceries and city is not Seattle.
SELECT *
FROM sales_orders
WHERE category <> 'Groceries' AND city <> 'Seattle';

-- 8. Find orders with missing city values.
SELECT *
FROM sales_orders
WHERE city IS NULL;

-- 9. List unique non-null cities in alphabetical order.
SELECT DISTINCT city
FROM sales_orders
WHERE city IS NOT NULL
ORDER BY city ASC;

-- 10. Find orders where customer name starts with A.
SELECT *
FROM sales_orders
WHERE customer_name LIKE 'A%';

-- 11. Find orders where customer name ends with son.
SELECT *
FROM sales_orders
WHERE customer_name LIKE '%son';

-- 12. Find customer names where the second character is a.
SELECT customer_name
FROM sales_orders
WHERE customer_name LIKE '_a%';

-- 13. Sort orders by category ascending, and amount descending within each category.
SELECT *
FROM sales_orders
ORDER BY category ASC, amount DESC;

-- 14. Find top 5 most expensive orders.
SELECT order_id, customer_name, category, amount
FROM sales_orders
ORDER BY amount DESC
LIMIT 5;

-- 15. Paginate orders by skipping top 5 and taking next 5 highest priced.
SELECT order_id, customer_name, category, amount
FROM sales_orders
ORDER BY amount DESC
LIMIT 5 OFFSET 5;

-- 16. Aggregate total orders, total revenue, and rounded average amount.
SELECT
    COUNT(*) AS total_orders,
    SUM(amount) AS total_revenue,
    ROUND(AVG(amount), 2) AS average_amount
FROM sales_orders;

-- 17. Compare total record count against non-null city count.
SELECT
    COUNT(*) AS all_records,
    COUNT(city) AS known_city_records
FROM sales_orders;

-- 18. Count orders and sum revenue per category ordered by total revenue.
SELECT
    category,
    COUNT(*) AS order_count,
    SUM(amount) AS total_revenue
FROM sales_orders
GROUP BY category
ORDER BY total_revenue DESC;

-- 19. Find categories with at least 8 orders and average amount above 200.00.
SELECT
    category,
    COUNT(*) AS order_count,
    ROUND(AVG(amount), 2) AS avg_amount
FROM sales_orders
GROUP BY category
HAVING COUNT(*) >= 8 AND AVG(amount) > 200.00;

-- 20. Cities spending over 600.00 in first half of 2024 excluding null cities.
SELECT
    city,
    SUM(amount) AS h1_total_spend
FROM sales_orders
WHERE order_date <= '2024-06-30' AND city IS NOT NULL
GROUP BY city
HAVING SUM(amount) > 600.00
ORDER BY h1_total_spend DESC;
