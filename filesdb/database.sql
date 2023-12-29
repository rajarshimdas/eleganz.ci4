create user 'rajarshi'@'localhost';
set password for 'rajarshi'@'localhost' = password("secret");

create database eleganz_ci4_db;
grant all on eleganz_ci4_db.* to 'rajarshi'@'localhost';
flush privileges;