CREATE TABLE users(ID INT PRIMARY KEY, login VARCHAR(255), password VARCHAR(255));

CREATE TABLE tasks(ID INT PRIMARY KEY, name VARCHAR(255), due_datetime TIMESTAMP);