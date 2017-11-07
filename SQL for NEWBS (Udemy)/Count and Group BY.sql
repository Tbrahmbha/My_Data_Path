#Count and Group by 
 select count(title), rental_rate
 from film
 group by rental_rate
;

select
  count(film_id), rentla_rate, rating
from
  film
WHERE
  
GROUP BY
  rating, rental_rate
#Write a query that shows how many films are in each rating 

/*select count(title), rating
from film
Group By rating;


/*select count(title), rental_rate, rating
from film
Group By rental_rate, rating
;
/*
films by rating
