Create database LEGO;
Go

Use LEGO;
Go

CREATE TABLE sets(
   set_num   VARCHAR(50) NOT NULL PRIMARY KEY
  ,name      VARCHAR(1000) NOT NULL
  ,year      INTEGER  NOT NULL
  ,theme_id  INTEGER  NOT NULL
  ,num_parts INTEGER  NOT NULL
);

CREATE TABLE parts(
   part_num    VARCHAR(50) NOT NULL PRIMARY KEY
  ,name        VARCHAR(1000) NOT NULL
  ,part_cat_id INTEGER  NOT NULL
);

CREATE TABLE part_categories(
   id   INTEGER  NOT NULL PRIMARY KEY 
  ,name VARCHAR(50) NOT NULL
);

CREATE TABLE themes(
   id        INTEGER  NOT NULL PRIMARY KEY 
  ,name      VARCHAR(50) NOT NULL
  ,parent_id INTEGER 
);

CREATE TABLE inventory_sets(
  id INTEGER NOT NULL PRIMARY KEY IDENTITY(1,1)
  ,inventory_id INTEGER  NOT NULL
  ,set_num      VARCHAR(50) NOT NULL
  ,quantity     INTEGER  NOT NULL
);

CREATE TABLE inventory_parts(
  id INTEGER NOT NULL PRIMARY KEY IDENTITY(1,1)
  ,inventory_id INTEGER  NOT NULL
  ,part_num     VARCHAR(50) NOT NULL
  ,color_id     INTEGER  NOT NULL
  ,quantity     INTEGER  NOT NULL
  ,is_spare     VARCHAR(50) NOT NULL
);

CREATE TABLE inventories(
   id      INTEGER  NOT NULL PRIMARY KEY 
  ,version INTEGER  NOT NULL
  ,set_num VARCHAR(50) NOT NULL
);

CREATE TABLE colors(
   id       INTEGER  NOT NULL PRIMARY KEY 
  ,name     VARCHAR(50) NOT NULL
  ,rgb      VARCHAR(50) NOT NULL
  ,is_trans VARCHAR(50) NOT NULL
);