
-- Total Revenue
SELECT SUM(p.monthly_fee) AS total_revenue
FROM subscriptions s
JOIN plans p ON s.plan_id = p.plan_id;

-- Active Customers
SELECT COUNT(*) AS active_customers
FROM customers
WHERE customer_status='Active';

-- Revenue By Plan
SELECT p.plan_name,
       SUM(p.monthly_fee) revenue
FROM subscriptions s
JOIN plans p ON s.plan_id=p.plan_id
GROUP BY p.plan_name;

-- Top Data Consumers
SELECT customer_id,
       SUM(data_gb) total_usage
FROM usage_records
GROUP BY customer_id
ORDER BY total_usage DESC;

-- Inactive Customers
SELECT c.customer_id,
       c.customer_name
FROM customers c
LEFT JOIN usage_records u
ON c.customer_id=u.customer_id
WHERE u.customer_id IS NULL;

-- Duplicate Detection
SELECT customer_id, COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Customers Without Subscription
SELECT c.customer_id
FROM customers c
LEFT JOIN subscriptions s
ON c.customer_id=s.customer_id
WHERE s.customer_id IS NULL;

-- Monthly Revenue Trend
SELECT YEAR(start_date) AS yr,
       MONTH(start_date) AS mn,
       SUM(p.monthly_fee) AS revenue
FROM subscriptions s
JOIN plans p ON s.plan_id=p.plan_id
GROUP BY YEAR(start_date), MONTH(start_date)
ORDER BY yr,mn;

-- Customer Usage Ranking
SELECT customer_id,
       SUM(data_gb) total_usage,
       RANK() OVER (ORDER BY SUM(data_gb) DESC) usage_rank
FROM usage_records
GROUP BY customer_id;
