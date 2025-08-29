USE gerenciales2;
SET SESSION local_infile = 1;

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/clientes.csv'
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
