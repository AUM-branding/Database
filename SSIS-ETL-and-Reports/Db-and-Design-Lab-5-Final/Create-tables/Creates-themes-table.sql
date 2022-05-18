use LEGO;

CREATE TABLE themes(
   id        INTEGER  NOT NULL PRIMARY KEY 
  ,name      VARCHAR(50) NOT NULL
  ,parent_id INTEGER 
);