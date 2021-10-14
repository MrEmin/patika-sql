-- 1
SELECT country, city FROM country
LEFT JOIN city ON city.city_id = country.country_id;

-- 2
SELECT payment_id, first_name, last_name FROM payment
RIGHT JOIN customer ON customer.customer_id = payment.staff_id;

-- 3
SELECT rental_id, first_name, last_name FROM rental 
FULL JOIN customer ON customer.customer_id = rental.rental_id;