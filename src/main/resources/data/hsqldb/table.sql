-- DROP TABLE USER IF EXISTS;

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

    CREATE TABLE ORDERENTITY (
  order_id VARCHAR (100) not NULL,
  item_id varchar(10) not NULL,
  user_email varchar(10) not NULL,
  order_date TIMESTAMP,
  order_status INTEGER,
   PRIMARY KEY (order_id)
     );

/*

CREATE TABLE USER (
  email varchar(10) not NULL,
  first_Name varchar(10),
  last_Name varchar(10),
  phone_Number varchar(10),
  password varchar(10),
   PRIMARY KEY (email)
     );



*/
