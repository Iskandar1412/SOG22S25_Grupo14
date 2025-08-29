USE gerenciales;

LOAD DATA INFILE '/var/lib/mysql-files/clientes.csv'
INTO TABLE customers
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@id_cliente, @genero, @edad)
SET
  customer_id     = NULLIF(@id_cliente,''),
  customer_gender = NULLIF(@genero,''),
  customer_age    = NULLIF(@edad,'');