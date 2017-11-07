#temporary tables
#list of all of your users and the number of rentals they have 
#how much revenue was brought in by customers that have over 20 rentals 

#rentals per user 
# Run this command before creating a table to make sure you are starting with a clean slate 
drop temporary table if exists rentals_per_customer;
create temporary table rentals_per_customer
SELECT 
  r.customer_id as customer_id, count(r.rental_id) as num_rentals, sum(p.amount) as customer_revenue

FROM 
  rental r, payment p
WHERE
  p.rental_id = r.rental_id
GROUP BY 1; 

#Nested Queries a query within a query 

#Revenue by Users who Rented x number of videos 

SELECT 
  rpc.num_rentals, sum(rpc.customer_revenue) as total_revenue
FROM
  rentals_per_customer rpc, count(rpc.customer_id) as number_customers

GROUP BY 1; 



#Revenue by actor or actress
create temporary table rev_per_film 
SELECT 
  f.film_id as film_id, f.rental_rate*count(r.rental_id)
      as film_revenue 
FROM 
    rental r, inventory i, film f

WHERE 
r.inventory_id = i.inventory_id
AND i.film_id = f.film_id
GROUP BY 1; 


#Actor to film revenue 

SELECT
  a.actor_id, concat(a.first_name," ",a.last_name), sum(rpf.film_revenue)
FROM
  rev_per_film rpf, actor a, film_actor fa
WHERE
  a.actor_id=fa.actor_id
  AND fa.film_id = rpf.film_id
GROUP BY 1
;