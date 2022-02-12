SELECT *
FROM dojos;

SELECT *
FROM ninjas;

/*1. crea 3 dojos nuevos*/
INSERT INTO dojos(id, name)
VALUES (111, 'Latam'),
	   (222, 'Usa'),
       (333, 'Japon');

/*2. elimina los 3 dojos que acabas de crear*/
DELETE
FROM dojos
WHERE id = 111 OR id = 222 OR id = 333;

/*3. crea 3 dojos nuevos*/
INSERT INTO dojos(id, name)
VALUES (444, 'Taiwan Online'),
	   (555, 'Usa Online'),
       (777, 'China Online');

/*4. crea 3 ninjas que pertenezcan al primer dojo*/
INSERT INTO ninjas(id, first_name, last_name, age, dojo_id)
VALUES (1, 'Carla', 'Muñiz', 23, 444),
	   (2, 'Lisdey', 'Echevarria', 22, 444),
       (3, 'Aileen', 'Rodriguez', 21, 444),
       (4, 'Madeleine', 'Santos', 54, 555),
       (5, 'Gianluca', 'Ramos', 18, 555),
       (6, 'Flavio', 'Noriega', 19, 555),
       (7, 'Henry', 'Ramos', 20, 777),
       (8, 'Julio', 'Tapara', 20, 777),
       (9, 'Diana', 'Lugo', 19, 777);

/*5. recupera todos los ninjas del primer dojo*/
SELECT *
FROM ninjas
WHERE dojo_id = 444;

/*6. recupera todos los ninjas del último dojo*/
SELECT *
FROM ninjas
WHERE dojo_id = 777;

/*7. recupera el dojo del último ninja*/
SELECT d.name AS dojo_name, n.first_name, n.last_name, n.age
FROM ninjas n, dojos d
WHERE n.dojo_id = 777 AND n.id = 9 AND n.dojo_id = d.id;




