CREATE USER 'world'@'localhost' IDENTIFIED BY 'world1';

GRANT ALL PRIVILEGES ON * . * TO 'world'@'localhost';

FLUSH PRIVILEGES;