use LEGO;

CREATE TABLE parts(
   part_num    VARCHAR(50) NOT NULL PRIMARY KEY
  ,name        VARCHAR(1000) NOT NULL
  ,part_cat_id INTEGER  NOT NULL
);