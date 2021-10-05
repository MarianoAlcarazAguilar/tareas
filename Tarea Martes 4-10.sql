create table correos (
	nombre varchar(69) not null,
	email varchar(99) not null
);

insert into correos 
values ('Wanda Maximoff', 'wanda.maximoff@avengers.org'),
('Pietro Maximoff','pietro@mail.sokovia.ru'),
('Erik Lensherr','fuck_you_charles@brotherhood.of.evil.mutants.space'),
('Charles Xavier','i.am.secretely.filled.with.hubris@xavier-school-4-gifted-youngste.'),
('Anthony Edward Stark','iamironman@avengers.gov'),
('Steve Rogers','americas_ass@anti_avengers'),
('The Vision','	vis@westview.sword.gov'),
('Clint Barton','bul@lse.ye'),
('Natasja Romanov','blackwidow@kgb.ru'),
('Thor','god_of_thunder-^_^@royalty.asgard.gov'),
('Logan','wolverine@cyclops_is_a_jerk.com'),
('Ororo Monroe','ororo@weather.co'),
('Scott Summers','o@x'),
('Nathan Summers','cable@xfact.or'),
('Groot','iamgroot@asgardiansofthegalaxyledbythor.quillsux'),
('Nebula','idonthaveelektras@complex.thanos'),
('Gamora','thefiercestwomaninthegalaxy@thanos.'),
('Rocket','shhhhhhhh@darknet.ru');

--Query para regresar emails invalidos
select *
from correos c 
where c.email like '%.'
or c.email like '%^%'
or c.email not like '%.%';

--Cuales pagos tienen el monto 1.98, 7.98 o 9.98?
select *
from payment p 
where p.amount in (1.98, 7.98, 9.98);

--Cuales la suma total pagada por los clientes que tienen una letra A
--en la segunda posición de su apellido y una W en cualquier lugar después de la A?
select sum(p.amount)
from payment p join customer c using (customer_id)
where c.last_name like '_A%W%'
or c.last_name like '_AW%'
or c.last_name like '_A%W';
