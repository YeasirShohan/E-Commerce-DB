-- create new user for database
CREATE USER 'ItUser01'@'localhost' IDENTIFIED BY 'asdf';

-- Grant specific previleges
grant select, insert, update ON customer TO 'ItUser01'@'localhost';

-- check user privileges
show grants for 'ItUser01'@'localhost';
