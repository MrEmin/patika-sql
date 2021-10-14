-- 1
SELECT rating, COUNT(title) FROM film
GROUP BY rating;

-- 2
SELECT replacement_cost, COUNT(title) FROM film
GROUP BY replacement_cost
HAVING COUNT(title) > 50;

-- 3
SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id;

-- 4
SELECT country_id, COUNT(city) FROM city
GROUP BY country_id
ORDER BY COUNT(city) DESC
LIMIT 1;