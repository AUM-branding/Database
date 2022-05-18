use LEGO;

CREATE TABLE inventory_parts(
  id INTEGER NOT NULL PRIMARY KEY IDENTITY(1,1)
  ,inventory_id INTEGER  NOT NULL
  ,part_num     VARCHAR(50) NOT NULL
  ,color_id     INTEGER  NOT NULL
  ,quantity     INTEGER  NOT NULL
  ,is_spare     VARCHAR(50) NOT NULL
);