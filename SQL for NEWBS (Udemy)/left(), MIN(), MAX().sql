#left(), MIN(), MAX()


LEFT()
MIN()
MAX()


#How Many rentals we had each month 

SELECT 
  left(r.rental_date,7), count(r.rental_id)
FROM 
    rental r, 
GROUP BY
  1
ORDER BY 
  2 desc
; 

SELECT left('2005-05-24 22:53:30', 7);

2005-05-24 22:53:30



#

SELECT 
  f.title, max(r.rental_date) as "Last Rental Date", min(r.rental_date) as "First Rental Date"
FROM 
  rental r, inventory i, film f
WHERE
  r.rental_id = i.inventory_id
  AND i.film_id = f.film_id
GROUP BY 
  1 
; 

