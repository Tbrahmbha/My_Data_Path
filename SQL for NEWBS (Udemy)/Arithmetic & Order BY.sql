#revenue per video title

SELECT 
  f.title as "Film Title",count(r.rental_id) as "Number of Rentals", f.rental_rate "Rental Price", count(r.rental_id) * f.rental_rate as Revenue 
FROM
   film f, rental r, inventory i
WHERE
   f.film_id=i.film_id
   AND i.inventory_id=r.inventory_id
GROUP BY 
     f.film_id
Order BY
   4 desc
; 

SUM()
#What customer has paid us the most money 

SELECT
  p.customer_id, SUM(p.amount)
FROM
  payment p
WHERE

GROUP BY 
    1
ORDER BY
    2  desc
# revenue = price * number of rentals


#What store has historically brought in the most revenue?

SELECT 
s.store, s.total_sales
FROM
sales_by_store s
WHERE

GROUP BY 
    1
ORDER BY
    2 desc 
;



# Answer

SELECT 
  i.Store_id as "Store ID", sum(P.amount) as Revenue
FROM
    inventory i, payment p, rental r 
WHERE
   p.rental_id = r.rental_id
   AND
   r.inventory_id = i.inventory_id
GROUP BY
  1
ORDER BY 
  2 desc
;


ORDER BY
;
