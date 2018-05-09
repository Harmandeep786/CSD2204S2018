MariaDB [(none)]> CREATE DATABASE CSD2204S18;
ERROR 1007 (HY000): Can't create database 'csd2204s18'; database exists
MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> CREATE TABLE Customer(
    -> custID VARCHAR(5) PRIMARY KEY,
    -> custName VARCHAR(50),
    -> nickName VARCHAR(10),
    -> city VARCHAR(20),
    -> postlCode VARCHAR(10),
    -> age INTEGER(3));
Query OK, 0 rows affected (0.25 sec)

MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> EXIT
