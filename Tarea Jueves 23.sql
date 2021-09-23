--Reporte de edad de empleados
select e.last_name, e.first_name , age(now(),e.birth_date )
from employees e;

--Orden m�s reciente por cliente
select c.company_name, max(o.order_date) most_recent 
from customers c join orders o using(customer_id)
group by c.company_name;

--De nuestros clientes, qu� funci�n desempe�an y cu�ntos son?
select c.contact_title, count(*) 
from customers c 
group by c.contact_title;

--Cu�ntos productos tenemos de cada categor�a?
select c.category_name , count(*) 
from categories c join products p using(category_id)
group by c.category_name;

--C�mo podemos generar el reporte de reorder?
--No entiendo esta pregunta profe.

--A donde va nuestro env�o m�s voluminoso?
select o.ship_country, od.quantity 
from order_details od join orders o using(order_id)
order by quantity desc
limit 1;

--C�mo creamos una columna en customers que nos diga si un cliente es bueno, regular, o malo?
alter table customers
add column bmr varchar(7);

--Qu� colaboradores chambearon durante las fiestas de navidad?
select concat(e.first_name,' ' , e.last_name) employee , o.order_date 
from employees e join orders o using(employee_id)
where o.order_date in('1997-12-25','1996-12-25');

--Qu� productos mandamos en navidad?
select p.product_name 
from products p join order_details od using(product_id)
join orders o using(order_id)
where o.shipped_date in('1997-12-25','1996-12-25');

--Qu� pa�s recibe el mayor volumen de producto?
select o.ship_country , sum(od.quantity) total 
from orders o join order_details od using(order_id)
group by o.ship_country 
order by total desc 
limit 1;











