--Inspecting the Data

SELECT * FROM orders LIMIT 10;



--RFM Calculation (Recency, Frequency, Monetary)
--"Today" is simulated as 2018-10-17

CREATE VIEW rfm_data AS
SELECT 
    c.customer_unique_id,
    CAST(julianday('2018-10-17') - julianday(MAX(o.order_purchase_timestamp)) AS INT) as recency_days,
    COUNT(DISTINCT o.order_id) as frequency,
    ROUND(SUM(p.payment_value), 2) as monetary
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN payments p ON o.order_id = p.order_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_unique_id;

--Final Segmentation Logic
SELECT 
    customer_unique_id,
    recency_days,
    frequency,
    monetary,
    CASE
        WHEN frequency >= 2 AND recency_days <= 90 THEN 'Champion'
        WHEN frequency = 1 AND recency_days <= 90 THEN 'Potential Loyalist'
        WHEN frequency >= 2 AND recency_days > 90 THEN 'At Risk'
        ELSE 'One-Time Wonder'
    END as customer_segment
FROM rfm_data;