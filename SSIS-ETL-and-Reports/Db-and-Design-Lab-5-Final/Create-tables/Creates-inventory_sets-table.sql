use LEGO;

CREATE TABLE inventory_sets(
  id INTEGER NOT NULL PRIMARY KEY IDENTITY(1,1)
  ,inventory_id INTEGER  NOT NULL
  ,set_num      VARCHAR(50) NOT NULL
  ,quantity     INTEGER  NOT NULL
);