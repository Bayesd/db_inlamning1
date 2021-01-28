/*
CREATE DATABASE inlamning2 CHARACTER SET utf8mb4;

USE inlamning2;
*/

CREATE TABLE locations(ID INT PRIMARY KEY AUTO_INCREMENT, country VARCHAR(150), address VARCHAR(300));

/*
INSERT INTO locations(country, address) VALUES ("Sweden","Plåtslagaregatan 2");

SELECT * FROM locations;
+----+---------+---------------------+
| ID | country | address             |
+----+---------+---------------------+
|  1 | Sweden  | Plåtslagaregatan 2  |
+----+---------+---------------------+
*/
