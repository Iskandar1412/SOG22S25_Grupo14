USE gerenciales2;
SET SESSION local_infile = 1;

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/basedatos.csv'
INTO TABLE orders
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@id_orden, @fecha_compra, @id_cliente, @genero, @edad,
 @cat_prod, @nom_prod, @precio, @cantidad, @total, @metodo_pago, @region_envio)
SET
  order_id         = NULLIF(@id_orden,''),
  purchase_date    = NULLIF(@fecha_compra,''),
  customer_id      = NULLIF(@id_cliente,''),
  customer_gender  = NULLIF(@genero,''),
  customer_age     = NULLIF(@edad,''),
  product_category = NULLIF(@cat_prod,''),
  product_name     = NULLIF(@nom_prod,''),
  product_price    = NULLIF(@precio,''),
  quantity         = NULLIF(@cantidad,''),
  order_total      = NULLIF(@total,''),
  payment_method   = NULLIF(@metodo_pago,''),
  shipping_region  = NULLIF(@region_envio,'');
