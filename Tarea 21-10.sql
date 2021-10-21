--1. Cómo obtenemos todos los nombres y correos de nuestros clientes canadienses para una campaña?

select cu.first_name , cu.last_name, cu.email, co.country 
from customer cu join address a using (address_id)
join city ci using (city_id)
join country co using (country_id)
where co.country = 'Canada';


--2. Qué cliente ha rentado más de nuestra sección de adultos?

select c.first_name , c.last_name, count(f.rating) 
from customer c join rental r using (customer_id)
join inventory i using (inventory_id)
join film f using (film_id)
where f.rating = 'R'
group by c.customer_id
order by count(f.rating) desc
limit 2;


--3. Qué películas son las más rentadas en todas nuestras stores?

select distinct on (s.store_id) s.store_id ,  count(*) total_rentas  ,f.title
from rental r join inventory i using (inventory_id)
join store s using (store_id)
join film f using (film_id)
group by f.title , s.store_id 
order by  s.store_id, count(*) desc;


--4. Cuál es nuestro revenue por store?
select s.store_id , sum(p.amount) revenue
from store s join inventory i using (store_id)
join rental r using (inventory_id)
join payment p using (rental_id)
group by s.store_id ;




