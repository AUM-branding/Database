use LEGO;

CREATE TABLE sets(
   set_num   VARCHAR(50) NOT NULL PRIMARY KEY
  ,name      VARCHAR(1000) NOT NULL
  ,year      INTEGER  NOT NULL
  ,theme_id  INTEGER  NOT NULL
  ,num_parts INTEGER  NOT NULL
);