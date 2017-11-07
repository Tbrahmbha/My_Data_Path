#brainbuster number 1

#first and last name, email address for customers from store 2
#This for example would be to pull all of the people we want to target for an 
#email campaign 

SELECT
  first_name, last_name,email
FROM
  customer
WHERE
  store_id = 2
;