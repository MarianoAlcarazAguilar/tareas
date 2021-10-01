--1
select s.supplier_id , s.contact_name , s.contact_title 
from northwind.suppliers s 
where s.contact_title = 'Sales Representative';

--2
select s.supplier_id , s.contact_name , s.contact_title 
from northwind.suppliers s 
where s.contact_title != 'Marketing Manager';

--3
select o.order_id , o.customer_id , o.ship_country 
from northwind.orders o 
where o.ship_country != 'USA';
--Profe, no entendía muy bien a qué se refería con que NO vengan de USA

--4
select p.product_id , p.product_name , p.category_id 
from northwind.products p 
		where p.category_id = (
		select c.category_id 
		from northwind.categories c 
		where c.description = 'Cheeses'
);

select distinct od.product_id , p.product_name , c.category_name 
from order_details od join products p using (product_id)
join categories c using (category_id)
where c.category_name = 'Dairy Products';

--5
select o.order_id , o.customer_id , o.ship_country 
from northwind.orders o
where o.ship_country = 'Belgium' or o.ship_country = 'France'
order by o.ship_country desc;

--6
select o.order_id , o.customer_id , o.ship_country 
from northwind.orders o
where o.ship_country = 'Mexico' 
or o.ship_country = 'Brazil' 
or o.ship_country = 'Venezuela'
or o.ship_country = 'Argentina'
order by o.ship_country desc;

select o.order_id , o.customer_id , o.ship_country 
from northwind.orders o
where o.ship_country in ('Argentina', 'Brazil', 'Venezuela', 'Mexico');

--7
select o.order_id , o.customer_id , o.ship_country 
from northwind.orders o
where o.ship_country != 'Mexico' 
and o.ship_country != 'Brazil' 
and o.ship_country != 'Venezuela'
order by o.ship_country;

select o.order_id , o.customer_id , o.ship_country 
from northwind.orders o
where o.ship_country not in ('Argentina', 'Brazil', 'Venezuela', 'Mexico');

--8
select e.employee_id , concat(e.first_name, ' ', e.last_name) as complete_name
from northwind.employees e;

--9
select  sum(p.unit_price * p.units_in_stock)
from northwind.products p;

--10
select c.country , count(*) as total
from northwind.customers c 
group by c.country;




