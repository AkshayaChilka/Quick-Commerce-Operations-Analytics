Create database quick_commerce;
USE quick_commerce;
SELECT COUNT(*) AS total_rows
FROM quick_commerce;
SELECT *
FROM quick_commerce
LIMIT 10;

#A. Order & Revenue Analysis
#Total revenue
SELECT SUM(order_value) AS total_revenue
FROM quick_commerce;

#Revenue by company
#Which company generates highest revenue.
SELECT company,
       SUM(order_value) AS revenue
FROM quick_commerce
GROUP BY company
ORDER BY revenue DESC;

#Orders by company
SELECT company,
       COUNT(order_id) AS total_orders
FROM quick_commerce
GROUP BY company
ORDER BY total_orders DESC;

#Average order value
SELECT company,
       ROUND(AVG(order_value),2) AS avg_order_value
FROM quick_commerce
GROUP BY company;

#B. City Analysis
#Orders by city
SELECT city,
       COUNT(*) AS total_orders
FROM quick_commerce
GROUP BY city
ORDER BY total_orders DESC;

#Revenue by city
SELECT city,
       SUM(order_value) revenue
FROM quick_commerce
GROUP BY city
ORDER BY revenue DESC;

#Average delivery time by city
#Find slow cities.
SELECT city,
       ROUND(AVG(delivery_time_min),2) avg_delivery
FROM quick_commerce
GROUP BY city
ORDER BY avg_delivery DESC;

#C. Delivery Performance
#Average delivery time
SELECT ROUND(AVG(delivery_time_min),2)
AS avg_delivery_time
FROM quick_commerce ;

#Delayed vs on-time
SELECT delay_flag,
       COUNT(*) total_orders
FROM quick_commerce
GROUP BY delay_flag;

#Delay percentage
SELECT 
    ROUND(
        SUM(CASE WHEN delay_flag='Delayed' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS delay_percentage
FROM quick_commerce;

#Delivery efficiency by company
SELECT company,
       ROUND(AVG(delivery_efficiency),4) efficiency
FROM quick_commerce
GROUP BY company
ORDER BY efficiency DESC;

#D. Product Analysis
#Orders by category
SELECT product_category,
       COUNT(*) total_orders
FROM quick_commerce
GROUP BY product_category
ORDER BY total_orders DESC;

#Revenue by category
SELECT product_category,
       SUM(order_value) revenue
FROM quick_commerce
GROUP BY product_category
ORDER BY revenue DESC;

#Average items per order
SELECT ROUND(AVG(items_count),2)
AS avg_items
FROM quick_commerce ;

#E. Customer Analysis
#Average customer age
SELECT ROUND(AVG(customer_age),2)
FROM quick_commerce;

#Customer segment distribution
SELECT customer_segment,
       COUNT(*) total_customers
FROM quick_commerce
GROUP BY customer_segment;

#Average rating by company
SELECT company,
       ROUND(AVG(customer_rating),2) rating
FROM quick_commerce
GROUP BY company
ORDER BY rating DESC;

#F. Payment Analysis
#Payment method distribution
SELECT payment_method,
       COUNT(*) total_orders
FROM quick_commerce
GROUP BY payment_method
ORDER BY total_orders DESC;

#G. Discount Analysis
#Discount impact
SELECT discount_flag,
       ROUND(AVG(order_value),2) avg_order_value
FROM quick_commerce
GROUP BY discount_flag;

#Revenue by discount
SELECT discount_flag,
       SUM(order_value) revenue
FROM quick_commerce
GROUP BY discount_flag;

#H. Delivery Partner Analysis
#Partner rating analysis
SELECT ROUND(AVG(delivery_partner_rating),2)
AS avg_partner_rating
FROM quick_commerce;

#Top delivery partners performance
SELECT company,
       ROUND(AVG(delivery_partner_rating),2)
FROM quick_commerce
GROUP BY company;

