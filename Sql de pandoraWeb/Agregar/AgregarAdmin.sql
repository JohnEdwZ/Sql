SHOW DATABASES;
USE pandora_web;
CREATE USER 'administrador'@'localhost' IDENTIFIED BY 'administrator';
GRANT ALL ON pandora_web.* TO 'administrador'@'localhost';

CREATE USER 'superAdmin'@'%' IDENTIFIED BY 'rootAdmin';
GRANT SELECT, INSERT, DELETE, ALTER ON pandora_web.* TO 'superAdmin'@'%';