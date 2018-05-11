MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
| persons              |
+----------------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DESC persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| LastName  | varchar(255) | NO   | PRI | NULL    |       |
| FirstName | varchar(255) | NO   |     | NULL    |       |
| Age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> CREATE TABLE Orders (
    ->  OrderID integer(3) NOT NULL,
    ->  OrderNumber integer(3) NOT NULL,
    ->  PersonID integer(3),
    ->  PRIMARY KEY (OrderID),
    ->  CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    ->  REFERENCES Persons(ID)
    -> );
Query OK, 0 rows affected (0.22 sec)

MariaDB [CSD2204S18]> SHOW CREATE TABLE Orders;
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table  | Create Table                                                                                                                                                                                                                                                                                                      |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Orders | CREATE TABLE `orders` (
  `OrderID` int(3) NOT NULL,
  `OrderNumber` int(3) NOT NULL,
  `PersonID` int(3) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `FK_PersonOrder` (`PersonID`),
  CONSTRAINT `FK_PersonOrder` FOREIGN KEY (`PersonID`) REFERENCES `persons` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SHOW INDEX FROM ORDERS;
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name       | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| orders |          0 | PRIMARY        |            1 | OrderID     | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| orders |          1 | FK_PersonOrder |            1 | PersonID    | A         |           0 |     NULL | NULL   | YES  | BTREE      |         |               |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> CREATE TABLE C1 AS SELECT * FROM CUSTOMER;
Query OK, 10 rows affected (0.36 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> CREATE TABLE C2 AS SELECT NAME,POSTLCODE FROM CUSTOMER WHERE CITY="TORONTO";
ERROR 1054 (42S22): Unknown column 'NAME' in 'field list'
MariaDB [CSD2204S18]> DESC CUSTOMER;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| custID    | varchar(5)  | NO   | PRI | NULL    |       |
| custName  | varchar(50) | YES  |     | NULL    |       |
| nickName  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| postlCode | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.05 sec)

MariaDB [CSD2204S18]> CREATE TABLE C2 AS SELECT CUSTID,POSTLCODE FROM CUSTOMER WHERE CITY="TORONTO";
Query OK, 3 rows affected (0.23 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C1;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| custID    | varchar(5)  | NO   |     | NULL    |       |
| custName  | varchar(50) | YES  |     | NULL    |       |
| nickName  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| postlCode | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM C2;
+--------+-----------+
| CUSTID | POSTLCODE |
+--------+-----------+
| CO2    | 100100    |
| CO5    | 130120    |
| CO6    | 201023    |
+--------+-----------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> CREATE TABLE C3 AS CUSTOMER;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CUSTOMER' at line 1
MariaDB [CSD2204S18]> CREATE TABLE C3 AS SELECT * FROM CUSTOMER;
Query OK, 10 rows affected (0.25 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C3;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| custID    | varchar(5)  | NO   |     | NULL    |       |
| custName  | varchar(50) | YES  |     | NULL    |       |
| nickName  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| postlCode | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM C3;
+--------+-----------------+----------+-----------+-----------+------+
| custID | custName        | nickName | city      | postlCode | age  |
+--------+-----------------+----------+-----------+-----------+------+
| CO1    | Ashley          | Ash      | WDC       | 321200    |   34 |
| CO10   | Jack Sp         | Sparrow  | New Jersy | 102301    |   32 |
| CO2    | Bob Marley      | BM       | Toronto   | 100100    |   25 |
| CO3    | Cherlies Theron | Cher     | New York  | 120134    |   26 |
| CO4    | Denial Jack     | DJ       | Brazil    | 341020    |   27 |
| CO5    |  Donna Newman   | New      | Toronto   | 130120    |   27 |
| CO6    | Eton M          | M.       | Toronto   | 201023    |   28 |
| CO7    | Bobby Chako     | Chac     | New York  | 320300    |   29 |
| CO8    | Ashko Charles   | AK       | USA       | 421044    |   30 |
| CO9    | Tony Special    | Specie   | GTA       | 418921    |   31 |
+--------+-----------------+----------+-----------+-----------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> INSERT INTO C3 SELECT * FROM CUSTOMER;
Query OK, 10 rows affected (0.06 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM C3;
+--------+-----------------+----------+-----------+-----------+------+
| custID | custName        | nickName | city      | postlCode | age  |
+--------+-----------------+----------+-----------+-----------+------+
| CO1    | Ashley          | Ash      | WDC       | 321200    |   34 |
| CO10   | Jack Sp         | Sparrow  | New Jersy | 102301    |   32 |
| CO2    | Bob Marley      | BM       | Toronto   | 100100    |   25 |
| CO3    | Cherlies Theron | Cher     | New York  | 120134    |   26 |
| CO4    | Denial Jack     | DJ       | Brazil    | 341020    |   27 |
| CO5    |  Donna Newman   | New      | Toronto   | 130120    |   27 |
| CO6    | Eton M          | M.       | Toronto   | 201023    |   28 |
| CO7    | Bobby Chako     | Chac     | New York  | 320300    |   29 |
| CO8    | Ashko Charles   | AK       | USA       | 421044    |   30 |
| CO9    | Tony Special    | Specie   | GTA       | 418921    |   31 |
| CO1    | Ashley          | Ash      | WDC       | 321200    |   34 |
| CO10   | Jack Sp         | Sparrow  | New Jersy | 102301    |   32 |
| CO2    | Bob Marley      | BM       | Toronto   | 100100    |   25 |
| CO3    | Cherlies Theron | Cher     | New York  | 120134    |   26 |
| CO4    | Denial Jack     | DJ       | Brazil    | 341020    |   27 |
| CO5    |  Donna Newman   | New      | Toronto   | 130120    |   27 |
| CO6    | Eton M          | M.       | Toronto   | 201023    |   28 |
| CO7    | Bobby Chako     | Chac     | New York  | 320300    |   29 |
| CO8    | Ashko Charles   | AK       | USA       | 421044    |   30 |
| CO9    | Tony Special    | Specie   | GTA       | 418921    |   31 |
+--------+-----------------+----------+-----------+-----------+------+
20 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TBLE c3 ADD COLUMN country VARCHAR(100);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TBLE c3 ADD COLUMN country VARCHAR(100)' at line 1
MariaDB [CSD2204S18]> ALTER TABLE c3 ADD COLUMN country VARCHAR(100);
Query OK, 0 rows affected (0.42 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C3;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| custID    | varchar(5)   | NO   |     | NULL    |       |
| custName  | varchar(50)  | YES  |     | NULL    |       |
| nickName  | varchar(10)  | YES  |     | NULL    |       |
| city      | varchar(20)  | YES  |     | NULL    |       |
| postlCode | varchar(10)  | YES  |     | NULL    |       |
| age       | int(3)       | YES  |     | NULL    |       |
| country   | varchar(100) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE C3 MODIFY COLUMN COUNTRY VARCHAR(40);
Query OK, 20 rows affected (0.55 sec)
Records: 20  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C3;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| custID    | varchar(5)  | NO   |     | NULL    |       |
| custName  | varchar(50) | YES  |     | NULL    |       |
| nickName  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| postlCode | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
| COUNTRY   | varchar(40) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE C3 MODIFY COLUMN Country VARCHAR(40);
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C3;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| custID    | varchar(5)  | NO   |     | NULL    |       |
| custName  | varchar(50) | YES  |     | NULL    |       |
| nickName  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| postlCode | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
| Country   | varchar(40) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table customer change column postlCode zipcode varchar(6);
Query OK, 10 rows affected (0.53 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc customer;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| custID   | varchar(5)  | NO   | PRI | NULL    |       |
| custName | varchar(50) | YES  |     | NULL    |       |
| nickName | varchar(10) | YES  |     | NULL    |       |
| city     | varchar(20) | YES  |     | NULL    |       |
| zipcode  | varchar(6)  | YES  |     | NULL    |       |
| age      | int(3)      | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE C3 DROP COLUMN nickname;
Query OK, 0 rows affected (2.21 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C3;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| custID    | varchar(5)  | NO   |     | NULL    |       |
| custName  | varchar(50) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| postlCode | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
| Country   | varchar(40) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE C3 ADD PRIMARY KEY (custID);
ERROR 1062 (23000): Duplicate entry 'CO1' for key 'PRIMARY'
MariaDB [CSD2204S18]> ALTER TABLE C3 MODIFY custName VARCHAR(50) NOT NULL;
Query OK, 20 rows affected (0.55 sec)
Records: 20  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C3;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| custID    | varchar(5)  | NO   |     | NULL    |       |
| custName  | varchar(50) | NO   |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| postlCode | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
| Country   | varchar(40) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DESC C1;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| custID    | varchar(5)  | NO   |     | NULL    |       |
| custName  | varchar(50) | YES  |     | NULL    |       |
| nickName  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| postlCode | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE C1 ADD PRIMARY KEY (custID);
Query OK, 0 rows affected (0.69 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C1;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| custID    | varchar(5)  | NO   | PRI | NULL    |       |
| custName  | varchar(50) | YES  |     | NULL    |       |
| nickName  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| postlCode | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE C1 DROP custID;
Query OK, 10 rows affected (0.59 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C1;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| custName  | varchar(50) | YES  |     | NULL    |       |
| nickName  | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| postlCode | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SHOW INDEX FROM persons;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| persons |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| persons |          0 | PRIMARY  |            2 | LastName    | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DESC C3;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| custID    | varchar(5)  | NO   |     | NULL    |       |
| custName  | varchar(50) | NO   |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| postlCode | varchar(10) | YES  |     | NULL    |       |
| age       | int(3)      | YES  |     | NULL    |       |
| Country   | varchar(40) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM C3;
+--------+-----------------+-----------+-----------+------+---------+
| custID | custName        | city      | postlCode | age  | Country |
+--------+-----------------+-----------+-----------+------+---------+
| CO1    | Ashley          | WDC       | 321200    |   34 | NULL    |
| CO10   | Jack Sp         | New Jersy | 102301    |   32 | NULL    |
| CO2    | Bob Marley      | Toronto   | 100100    |   25 | NULL    |
| CO3    | Cherlies Theron | New York  | 120134    |   26 | NULL    |
| CO4    | Denial Jack     | Brazil    | 341020    |   27 | NULL    |
| CO5    |  Donna Newman   | Toronto   | 130120    |   27 | NULL    |
| CO6    | Eton M          | Toronto   | 201023    |   28 | NULL    |
| CO7    | Bobby Chako     | New York  | 320300    |   29 | NULL    |
| CO8    | Ashko Charles   | USA       | 421044    |   30 | NULL    |
| CO9    | Tony Special    | GTA       | 418921    |   31 | NULL    |
| CO1    | Ashley          | WDC       | 321200    |   34 | NULL    |
| CO10   | Jack Sp         | New Jersy | 102301    |   32 | NULL    |
| CO2    | Bob Marley      | Toronto   | 100100    |   25 | NULL    |
| CO3    | Cherlies Theron | New York  | 120134    |   26 | NULL    |
| CO4    | Denial Jack     | Brazil    | 341020    |   27 | NULL    |
| CO5    |  Donna Newman   | Toronto   | 130120    |   27 | NULL    |
| CO6    | Eton M          | Toronto   | 201023    |   28 | NULL    |
| CO7    | Bobby Chako     | New York  | 320300    |   29 | NULL    |
| CO8    | Ashko Charles   | USA       | 421044    |   30 | NULL    |
| CO9    | Tony Special    | GTA       | 418921    |   31 | NULL    |
+--------+-----------------+-----------+-----------+------+---------+
20 rows in set (0.00 sec)

MariaDB [CSD2204S18]> 