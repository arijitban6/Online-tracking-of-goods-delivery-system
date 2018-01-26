/* CREATE TABLE DELIVERYADDRESSENTITY{
  delevery_address_entity_id VARCHAR (100) not NULL,
   name VARCHAR (100) not NULL,
  phone_number varchar(10) not NULL,
  pin_code varchar(10) not NULL,
  location varchar(10),
  address varchar(100),
  city varchar(10),
  state varchar(10),
  landmark varchar(30),
   PRIMARY KEY (delevery_address_entity_id)
 };*/
  CREATE TABLE USER (
  email varchar(10) not NULL,
  first_Name varchar(10),
  last_Name varchar(10),
  phone_Number varchar(10),
  password varchar(10),

  );
  CREATE TABLE ITEMENTITY (
  id varchar(10) not NULL,
  name varchar(30),
  price BIGINT ,
  description varchar(30),
   PRIMARY KEY (id)
     );

 CREATE TABLE delivery_address_entity (
  delivery_address_entity_id VARCHAR (100) not NULL,
  name VARCHAR (100) not NULL,
  phone_number varchar(10) not NULL,
  pin_code varchar(10) not NULL,
  location varchar(10),
  address varchar(100),
  city varchar(10),
  state varchar(10),
  landmark varchar(30),
   PRIMARY KEY (delivery_address_entity_id)
     );

    CREATE TABLE ORDERENTITY (
  order_id VARCHAR (100) not NULL,
  item_id varchar(10) not NULL,
  user_email varchar(10) not NULL,
  delivery_address_delivery_address_entity_id  VARCHAR (100) not NULL,
  order_date TIMESTAMP,
  order_status INTEGER,
   PRIMARY KEY (order_id)
     );

