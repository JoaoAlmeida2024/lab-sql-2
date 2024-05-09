-- Select all the actors with the first name ‘Scarlett

select *
from sakila.actor
where first_name = 'Scarlett';

-- Select all the actors with the last name ‘Johansson’.

select *
from sakila.actor
where capital_surname = 'Johansson';

-- How many films (movies) are available for rent? 4581

select count(film_id)
from sakila.inventory;

-- How many films have been rented? 16044

select count(rental_id)
from sakila.rental;

-- What is the shortest and longest rental period? 7 max and 3 min

select max(rental_duration) 
from sakila.film;

select min(rental_duration)
from sakila.film;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.

select *
from sakila.film;

select min(length) as min_duration
from sakila.film;

select max(length) as max_duration 
from sakila.film;

-- What's the average movie duration? 115.2720

select avg(length)
from sakila.film;

-- What's the average movie duration expressed in format (hours, minutes)? 01:55 H


select 
	TIME_FORMAT(SEC_TO_TIME(AVG(LENGTH * 60)), '%H:%i') as 
    average_duration_hoursandminutes
    from sakila.film;
    
-- How many movies longer than 3 hours? 39

select count(*)
from sakila.film
where length > 180;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
 
 
CONCAT(UCASE(FIRST_NAME), ' ', UCASE(LAST_NAME), ' - ', LOWER(EMAIL)) AS FORMATED_NAME_AND_EMAIL
FROM SAKILA.CUSTOMER;

   
-- What's the length of the longest film title? 27

select *
from sakila.film;

select MAX(length(title)) as longest_film_length
from sakila.film;