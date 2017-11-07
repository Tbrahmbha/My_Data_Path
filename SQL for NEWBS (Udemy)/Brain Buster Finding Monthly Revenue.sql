#Every Customer's last rental date
SELECT
  concat(c.firstname, " ", c.lastname) as Name, c.email as email, max(r.rental_date) as last_rental_date

FROM
  customer c, rental r
WHERE
  r.customer_id = c.customer_id
GROUP BY 
  c.customer_id
; 


#Revenue by month
SELECT 
    left(p.payment_date, 7) as Month, sum(p.amount) as monthly_revenue

FROM
  payment p
GROUP BY
1
; 



