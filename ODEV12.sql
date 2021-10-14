-- 1
SELECT COUNT(*) FROM film
WHERE length > 
(
SELECT AVG(length) FROM film
);

-- 2
SELECT COUNT(*) FROM film
WHERE rental_rate =
(
SELECT MAX(rental_rate) FROM film
);

-- 3
SELECT title FROM film
WHERE rental_rate =
(SELECT MIN(rental_rate) FROM film)
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

-- 4
SELECT SUM(amount), customer.first_name, customer.last_name
FROM payment
JOIN customer ON customer.customer_id = payment.customer_id
GROUP BY payment.customer_id, customer.first_name, customer.last_name
ORDER BY SUM(amount) DESC
LIMIT 1
