#Comparison Operators (>, =)

=

>

<

>=
<=
<> #not equal to 
!= # not equal to


#How many user's who have rented at least 3 times 
#Having is the filter function in excel 


SELECT 
  r.customer_id as customer, count(r.rental_id) as number_rentals
FROM 
  rental r, 
GROUP BY 1

Having count(r.rental_id) >= 3;


#Brainbuster =  How much Revenue store 1 has made from movies rated R or PG13

SELECT 
    f.rating as rating, i.store_id  as Store, sum(p.amount) as revenue
FROM
  film f, payment p, inventory i, rental r
WHERE
  p.rental_id = r.rental_id
  AND
  r.inventory_id = i.inventory_id
  AND
  i.film_id = f.film_id
  AND
  i.store_id = 1
  AND f.rating in('R', 'PG-13')
  AND r.rental_date between '2005-06-08' AND '2005-07-19'
GROUP BY 1 desc; 