
  CREATE TABLE USER (
  email varchar(100) not NULL,
  first_Name varchar(100),
  last_Name varchar(100),
  phone_Number varchar(100),
  password varchar(100),

  );
  CREATE TABLE ITEMENTITY (
  id varchar(100) not NULL,
  name varchar(100),
  price BIGINT ,
  description varchar(100),
   PRIMARY KEY (id)
     );

 CREATE TABLE delivery_address_entity (
  delivery_address_entity_id VARCHAR (100) not NULL,
  name VARCHAR (100) ,
  phone_number varchar(100),
  pin_code varchar(100) ,
  location varchar(100),
  address varchar(100),
  city varchar(100),
  state varchar(100),
  landmark varchar(100),
   PRIMARY KEY (delivery_address_entity_id)
     );

    CREATE TABLE ORDERENTITY (
  order_id VARCHAR (100) not NULL,
  item_id varchar(100) ,
  user_email VARCHAR(100) ,
  delivery_address_delivery_address_entity_id  VARCHAR (100) ,
  order_date VARCHAR(100),
  order_status INTEGER,
   PRIMARY KEY (order_id)
     );

