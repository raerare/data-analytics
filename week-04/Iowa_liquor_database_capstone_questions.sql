/* Name: Rodas Mengesha
Category/Vendor of Choice: TEQUILA
*/

-- 1. Transactions in Q4 2014 sorted by highest sales
-- Answer: Shows peak TEQUILA sales transactions in Q4 2014
SELECT *
FROM sales
WHERE category_name ILIKE '%TEQUILA%'
  AND date BETWEEN '2014-10-01' AND '2014-12-31'
ORDER BY total DESC;


-- 2. Transactions with bottle quantity > 12
-- Answer: Identifies bulk TEQUILA buyers
SELECT date, store, description, total
FROM sales
WHERE category_name ILIKE '%TEQUILA%'
  AND bottle_qty > 12
ORDER BY bottle_qty DESC;


-- 3. Products with keyword (example: 'Silver')
-- Answer: Finds niche TEQUILA product types
SELECT item_description, category_name
FROM products
WHERE item_description ILIKE '%Silver%';


-- 4. Total revenue and average bottle price
-- Answer: Shows financial footprint of TEQUILA
SELECT 
    SUM(total::numeric) AS total_revenue,
    AVG(btl_price::numeric) AS avg_bottle_price
FROM sales
WHERE category_name ILIKE '%TEQUILA%';


-- 5. Transactions per item
-- Answer: Identifies most frequently purchased TEQUILA product
SELECT 
    description,
    COUNT(*) AS transaction_count
FROM sales
WHERE category_name ILIKE '%TEQUILA%'
GROUP BY description
ORDER BY transaction_count DESC;


-- 6. Store revenue ranking
-- Answer: Best and worst performing TEQUILA stores
SELECT 
    store,
    SUM(total::numeric) AS total_revenue
FROM sales
WHERE category_name ILIKE '%TEQUILA%'
GROUP BY store
HAVING SUM(total::numeric) > 0
ORDER BY total_revenue DESC;


-- 7. Revenue by vendor
-- Answer: Shows top TEQUILA vendors (competition)
SELECT 
    vendor,
    SUM(total::numeric) AS total_revenue
FROM sales
WHERE category_name ILIKE '%TEQUILA%'
GROUP BY vendor
ORDER BY total_revenue DESC;


-- 8. Stores with revenue > $2000
-- Answer: High-performing TEQUILA locations
SELECT 
    store,
    SUM(total::numeric) AS total_revenue
FROM sales
WHERE category_name ILIKE '%TEQUILA%'
GROUP BY store
HAVING SUM(total::numeric) > 2000
ORDER BY total_revenue DESC;


-- 9. Compare TEQUILA vs competitor (example: MEZCAL)
-- Answer: Compares TEQUILA with substitute products
SELECT *
FROM sales
WHERE category_name ILIKE '%TEQUILA%'
   OR category_name ILIKE '%MEZCAL%'
ORDER BY date;


-- 10. Mid-tier pricing ($10–$20)
-- Answer: Analyzes mid-range TEQUILA performance
SELECT *
FROM sales
WHERE category_name ILIKE '%TEQUILA%'
  AND state_btl_cost::numeric BETWEEN 10 AND 20
ORDER BY state_btl_cost;


-- 11. Store sales with name and address
-- Answer: Maps TEQUILA sales geographically
SELECT 
    s.store,
    st.name,
    st.store_address,
    SUM(s.total::numeric) AS total_sales
FROM sales s
JOIN stores st
    ON s.store = st.store
WHERE s.category_name ILIKE '%TEQUILA%'
GROUP BY s.store, st.name, st.store_address
ORDER BY total_sales DESC;


-- 12. Sales with county population
-- Answer: Compares sales vs population density
SELECT 
    s.date,
    s.total,
    c.population
FROM sales s
JOIN counties c
    ON s.county = c.county
WHERE s.category_name ILIKE '%TEQUILA%'
ORDER BY s.total DESC;


-- 13. Revenue by county
-- Answer: Identifies strongest geographic market
SELECT 
    county,
    SUM(total::numeric) AS total_revenue
FROM sales
WHERE category_name ILIKE '%TEQUILA%'
GROUP BY county
ORDER BY total_revenue DESC;


-- 14. Vendor revenue with product details
-- Answer: Shows if proof/pack affects revenue
SELECT 
    s.vendor,
    p.item_description,
    p.proof,
    p.pack,
    SUM(s.total::numeric) AS total_revenue
FROM sales s
JOIN products p
    ON s.item = p.item_no
WHERE s.category_name ILIKE '%TEQUILA%'
GROUP BY s.vendor, p.item_description, p.proof, p.pack
ORDER BY total_revenue DESC;


-- 15. Counties >10,000 population but zero sales
-- Answer: Identifies untapped TEQUILA markets
SELECT 
    c.county,
    c.population
FROM counties c
WHERE c.population > 10000
  AND c.county NOT IN (
      SELECT DISTINCT county
      FROM sales
      WHERE category_name ILIKE '%TEQUILA%'
        AND county IS NOT NULL
  )
ORDER BY c.population DESC;


-- 16. Revenue by store status
-- Answer: Checks if active stores outperform others
SELECT 
    st.store_status,
    SUM(s.total::numeric) AS total_revenue
FROM sales s
JOIN stores st
    ON s.store = st.store
WHERE s.category_name ILIKE '%TEQUILA%'
GROUP BY st.store_status
ORDER BY total_revenue DESC;


-- 17. Sales from Des Moines stores
-- Answer: Focus on urban TEQUILA market (may return 0 results depending on data)
SELECT *
FROM sales
WHERE category_name ILIKE '%TEQUILA%'
  AND store IN (
      SELECT store
      FROM stores
      WHERE address_info ILIKE '%Des Moines%'
  )
ORDER BY total DESC;


-- 18. Stores above average revenue
-- Answer: Identifies over-performing stores
SELECT 
    store,
    SUM(total::numeric) AS store_revenue
FROM sales
WHERE category_name ILIKE '%TEQUILA%'
GROUP BY store
HAVING SUM(total::numeric) > (
    SELECT AVG(store_total)
    FROM (
        SELECT SUM(total::numeric) AS store_total
        FROM sales
        WHERE category_name ILIKE '%TEQUILA%'
        GROUP BY store
    ) avg_table
)
ORDER BY store_revenue DESC;


-- 19. Top 5 highest-grossing items
-- Answer: Shows most profitable TEQUILA products
SELECT *
FROM products
WHERE item_no IN (
    SELECT item
    FROM sales
    WHERE category_name ILIKE '%TEQUILA%'
    GROUP BY item
    ORDER BY SUM(total::numeric) DESC
    LIMIT 5
);


-- 20. Sales from active stores only
-- Answer: Focus on reliable revenue streams
SELECT *
FROM sales
WHERE category_name ILIKE '%TEQUILA%'
  AND store IN (
      SELECT store
      FROM stores
      WHERE store_status = 'A'
  )
ORDER BY total DESC;