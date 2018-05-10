MariaDB [(none)]> USE CSD2204S18
Database changed
MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer;
Empty set (0.08 sec)

MariaDB [CSD2204S18]> DESC customer;
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
6 rows in set (0.08 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('CO1','Ashley','Ash','WDC','321200',34);
Query OK, 1 row affected (0.17 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer;
+--------+----------+----------+------+-----------+------+
| custID | custName | nickName | city | postlCode | age  |
+--------+----------+----------+------+-----------+------+
| CO1    | Ashley   | Ash      | WDC  | 321200    |   34 |
+--------+----------+----------+------+-----------+------+
1 row in set (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('CO2', 'Bob Marley','BM','Toronto','100100',25);
Query OK, 1 row affected (0.09 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('CO3','Cherlies Theron','Cher','New York','120134',26);
Query OK, 1 row affected (0.06 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('CO4','Denial Jack','DJ','Brazil','341020',27);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('CO5', ' Donna Newman', 'New','Toronto','130120',27);
Query OK, 1 row affected (0.05 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('CO6', 'Eton M', 'M.','Toronto','201023',28);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('CO7', 'Bobby Chako','Chac', 'New York','320300',29);
Query OK, 1 row affected (0.01 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('CO8','Ashko Charles', 'AK','USA','421044',30);
Query OK, 1 row affected (0.01 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('CO9','Tony Special','Specie','GTA','418921',31);
Query OK, 1 row affected (0.06 sec)

MariaDB [CSD2204S18]> INSERT INTO customer VALUES('CO10','Jack Sp','Sparrow','New Jersy','102301',32);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer;
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

MariaDB [CSD2204S18]> SELECT custName,nickName FROM customer;
+-----------------+----------+
| custName        | nickName |
+-----------------+----------+
| Ashley          | Ash      |
| Jack Sp         | Sparrow  |
| Bob Marley      | BM       |
| Cherlies Theron | Cher     |
| Denial Jack     | DJ       |
|  Donna Newman   | New      |
| Eton M          | M.       |
| Bobby Chako     | Chac     |
| Ashko Charles   | AK       |
| Tony Special    | Specie   |
+-----------------+----------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city,postalCode FROM customer;
ERROR 1054 (42S22): Unknown column 'postalCode' in 'field list'
MariaDB [CSD2204S18]> SELECT city,postlCode FROM customer;
+-----------+-----------+
| city      | postlCode |
+-----------+-----------+
| WDC       | 321200    |
| New Jersy | 102301    |
| Toronto   | 100100    |
| New York  | 120134    |
| Brazil    | 341020    |
| Toronto   | 130120    |
| Toronto   | 201023    |
| New York  | 320300    |
| USA       | 421044    |
| GTA       | 418921    |
+-----------+-----------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer WHERE custName='Ashley';
+--------+----------+----------+------+-----------+------+
| custID | custName | nickName | city | postlCode | age  |
+--------+----------+----------+------+-----------+------+
| CO1    | Ashley   | Ash      | WDC  | 321200    |   34 |
+--------+----------+----------+------+-----------+------+
1 row in set (0.05 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer WHERE nickNAME='AK';
+--------+---------------+----------+------+-----------+------+
| custID | custName      | nickName | city | postlCode | age  |
+--------+---------------+----------+------+-----------+------+
| CO8    | Ashko Charles | AK       | USA  | 421044    |   30 |
+--------+---------------+----------+------+-----------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT custName,city FROM customer WHERE custName='Eston M'; 
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT custName,city FROM customer WHERE custName='Eton M';
+----------+---------+
| custName | city    |
+----------+---------+
| Eton M   | Toronto |
+----------+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT custName,city FROM customer WHERE city='Toronto';
+---------------+---------+
| custName      | city    |
+---------------+---------+
| Bob Marley    | Toronto |
|  Donna Newman | Toronto |
| Eton M        | Toronto |
+---------------+---------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT custName,city FROM customer WHERE city!='Toronto';
+-----------------+-----------+
| custName        | city      |
+-----------------+-----------+
| Ashley          | WDC       |
| Jack Sp         | New Jersy |
| Cherlies Theron | New York  |
| Denial Jack     | Brazil    |
| Bobby Chako     | New York  |
| Ashko Charles   | USA       |
| Tony Special    | GTA       |
+-----------------+-----------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT FROM customer WHERE age=50; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM customer WHERE age=50' at line 1
MariaDB [CSD2204S18]> SELECT *  FROM customer WHERE age=50; 
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *  FROM customer WHERE age=25;
+--------+------------+----------+---------+-----------+------+
| custID | custName   | nickName | city    | postlCode | age  |
+--------+------------+----------+---------+-----------+------+
| CO2    | Bob Marley | BM       | Toronto | 100100    |   25 |
+--------+------------+----------+---------+-----------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *  FROM customer WHERE age>25;
+--------+-----------------+----------+-----------+-----------+------+
| custID | custName        | nickName | city      | postlCode | age  |
+--------+-----------------+----------+-----------+-----------+------+
| CO1    | Ashley          | Ash      | WDC       | 321200    |   34 |
| CO10   | Jack Sp         | Sparrow  | New Jersy | 102301    |   32 |
| CO3    | Cherlies Theron | Cher     | New York  | 120134    |   26 |
| CO4    | Denial Jack     | DJ       | Brazil    | 341020    |   27 |
| CO5    |  Donna Newman   | New      | Toronto   | 130120    |   27 |
| CO6    | Eton M          | M.       | Toronto   | 201023    |   28 |
| CO7    | Bobby Chako     | Chac     | New York  | 320300    |   29 |
| CO8    | Ashko Charles   | AK       | USA       | 421044    |   30 |
| CO9    | Tony Special    | Specie   | GTA       | 418921    |   31 |
+--------+-----------------+----------+-----------+-----------+------+
9 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *  FROM customer WHERE age<25;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *  FROM customer WHERE custName>'Ashley';
+--------+-----------------+----------+-----------+-----------+------+
| custID | custName        | nickName | city      | postlCode | age  |
+--------+-----------------+----------+-----------+-----------+------+
| CO10   | Jack Sp         | Sparrow  | New Jersy | 102301    |   32 |
| CO2    | Bob Marley      | BM       | Toronto   | 100100    |   25 |
| CO3    | Cherlies Theron | Cher     | New York  | 120134    |   26 |
| CO4    | Denial Jack     | DJ       | Brazil    | 341020    |   27 |
| CO6    | Eton M          | M.       | Toronto   | 201023    |   28 |
| CO7    | Bobby Chako     | Chac     | New York  | 320300    |   29 |
| CO9    | Tony Special    | Specie   | GTA       | 418921    |   31 |
+--------+-----------------+----------+-----------+-----------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *  FROM customer WHERE custName<'Donna Newman';
+--------+-----------------+----------+----------+-----------+------+
| custID | custName        | nickName | city     | postlCode | age  |
+--------+-----------------+----------+----------+-----------+------+
| CO1    | Ashley          | Ash      | WDC      | 321200    |   34 |
| CO2    | Bob Marley      | BM       | Toronto  | 100100    |   25 |
| CO3    | Cherlies Theron | Cher     | New York | 120134    |   26 |
| CO4    | Denial Jack     | DJ       | Brazil   | 341020    |   27 |
| CO5    |  Donna Newman   | New      | Toronto  | 130120    |   27 |
| CO7    | Bobby Chako     | Chac     | New York | 320300    |   29 |
| CO8    | Ashko Charles   | AK       | USA      | 421044    |   30 |
+--------+-----------------+----------+----------+-----------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *  FROM customer WHERE custName<' Donna Newman';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT custName,city FROM customer WHERE custName= 'Ashle' OR city='Toronto';
+---------------+---------+
| custName      | city    |
+---------------+---------+
| Bob Marley    | Toronto |
|  Donna Newman | Toronto |
| Eton M        | Toronto |
+---------------+---------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT custName,city FROM customer WHERE city='New York' || city='Toronto';
+-----------------+----------+
| custName        | city     |
+-----------------+----------+
| Bob Marley      | Toronto  |
| Cherlies Theron | New York |
|  Donna Newman   | Toronto  |
| Eton M          | Toronto  |
| Bobby Chako     | New York |
+-----------------+----------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT custName,age FROM customer WHERE city='Toronto' && age>27;
+----------+------+
| custName | age  |
+----------+------+
| Eton M   |   28 |
+----------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) FROM customer WHERE city='Toronto';
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.08 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) "Number of customers in Toronto" FROM customer WHERE city='Toronto';
+--------------------------------+
| Number of customers in Toronto |
+--------------------------------+
|                              3 |
+--------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) "Number of customers with age more than 24" FROM customer WHERE age>24;
+-------------------------------------------+
| Number of customers with age more than 24 |
+-------------------------------------------+
|                                        10 |
+-------------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) "Number of customers having age between 24 and 27" FROM customer WHERE age>24 && age<28;
+--------------------------------------------------+
| Number of customers having age between 24 and 27 |
+--------------------------------------------------+
|                                                4 |
+--------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * "Number of customers having age between 24 and 27" FROM customer WHERE age>24 && age<28;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '"Number of customers having age between 24 and 27" FROM customer WHERE age>24 &&' at line 1
MariaDB [CSD2204S18]> SELECT * FROM customer WHERE age>24 && age<28;
+--------+-----------------+----------+----------+-----------+------+
| custID | custName        | nickName | city     | postlCode | age  |
+--------+-----------------+----------+----------+-----------+------+
| CO2    | Bob Marley      | BM       | Toronto  | 100100    |   25 |
| CO3    | Cherlies Theron | Cher     | New York | 120134    |   26 |
| CO4    | Denial Jack     | DJ       | Brazil   | 341020    |   27 |
| CO5    |  Donna Newman   | New      | Toronto  | 130120    |   27 |
+--------+-----------------+----------+----------+-----------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer WHERE NOT age>24 BETWEEN age<28;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '<28' at line 1
MariaDB [CSD2204S18]> SELECT * FROM customer WHERE NOT age BETWEEN 30 AND 28;
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
10 rows in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT max(age) FROM customer;
+----------+
| max(age) |
+----------+
|       34 |
+----------+
1 row in set (0.05 sec)

MariaDB [CSD2204S18]> SELECT min(age) FROM customer;
+----------+
| min(age) |
+----------+
|       25 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT AVG(age) FROM customer;
+----------+
| AVG(age) |
+----------+
|  28.9000 |
+----------+
1 row in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer WHERE custName= LIKE 'B%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'LIKE 'B%'' at line 1
MariaDB [CSD2204S18]> SELECT * FROM customer WHERE custName LIKE 'B%';
+--------+-------------+----------+----------+-----------+------+
| custID | custName    | nickName | city     | postlCode | age  |
+--------+-------------+----------+----------+-----------+------+
| CO2    | Bob Marley  | BM       | Toronto  | 100100    |   25 |
| CO7    | Bobby Chako | Chac     | New York | 320300    |   29 |
+--------+-------------+----------+----------+-----------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer WHERE custName NOT LIKE 'B%';
+--------+-----------------+----------+-----------+-----------+------+
| custID | custName        | nickName | city      | postlCode | age  |
+--------+-----------------+----------+-----------+-----------+------+
| CO1    | Ashley          | Ash      | WDC       | 321200    |   34 |
| CO10   | Jack Sp         | Sparrow  | New Jersy | 102301    |   32 |
| CO3    | Cherlies Theron | Cher     | New York  | 120134    |   26 |
| CO4    | Denial Jack     | DJ       | Brazil    | 341020    |   27 |
| CO5    |  Donna Newman   | New      | Toronto   | 130120    |   27 |
| CO6    | Eton M          | M.       | Toronto   | 201023    |   28 |
| CO8    | Ashko Charles   | AK       | USA       | 421044    |   30 |
| CO9    | Tony Special    | Specie   | GTA       | 418921    |   31 |
+--------+-----------------+----------+-----------+-----------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer WHERE custName LIKE '%N';
+--------+-----------------+----------+----------+-----------+------+
| custID | custName        | nickName | city     | postlCode | age  |
+--------+-----------------+----------+----------+-----------+------+
| CO3    | Cherlies Theron | Cher     | New York | 120134    |   26 |
| CO5    |  Donna Newman   | New      | Toronto  | 130120    |   27 |
+--------+-----------------+----------+----------+-----------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer WHERE custName NOT LIKE '%N';
+--------+---------------+----------+-----------+-----------+------+
| custID | custName      | nickName | city      | postlCode | age  |
+--------+---------------+----------+-----------+-----------+------+
| CO1    | Ashley        | Ash      | WDC       | 321200    |   34 |
| CO10   | Jack Sp       | Sparrow  | New Jersy | 102301    |   32 |
| CO2    | Bob Marley    | BM       | Toronto   | 100100    |   25 |
| CO4    | Denial Jack   | DJ       | Brazil    | 341020    |   27 |
| CO6    | Eton M        | M.       | Toronto   | 201023    |   28 |
| CO7    | Bobby Chako   | Chac     | New York  | 320300    |   29 |
| CO8    | Ashko Charles | AK       | USA       | 421044    |   30 |
| CO9    | Tony Special  | Specie   | GTA       | 418921    |   31 |
+--------+---------------+----------+-----------+-----------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer WHERE city LIKE 'N%';
+--------+-----------------+----------+-----------+-----------+------+
| custID | custName        | nickName | city      | postlCode | age  |
+--------+-----------------+----------+-----------+-----------+------+
| CO10   | Jack Sp         | Sparrow  | New Jersy | 102301    |   32 |
| CO3    | Cherlies Theron | Cher     | New York  | 120134    |   26 |
| CO7    | Bobby Chako     | Chac     | New York  | 320300    |   29 |
+--------+-----------------+----------+-----------+-----------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer WHERE custName LIKE '__n%';
+--------+--------------+----------+--------+-----------+------+
| custID | custName     | nickName | city   | postlCode | age  |
+--------+--------------+----------+--------+-----------+------+
| CO4    | Denial Jack  | DJ       | Brazil | 341020    |   27 |
| CO9    | Tony Special | Specie   | GTA    | 418921    |   31 |
+--------+--------------+----------+--------+-----------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer WHERE custName LIKE '__n_a%';
+--------+-------------+----------+--------+-----------+------+
| custID | custName    | nickName | city   | postlCode | age  |
+--------+-------------+----------+--------+-----------+------+
| CO4    | Denial Jack | DJ       | Brazil | 341020    |   27 |
+--------+-------------+----------+--------+-----------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer LIMIT 2;
+--------+----------+----------+-----------+-----------+------+
| custID | custName | nickName | city      | postlCode | age  |
+--------+----------+----------+-----------+-----------+------+
| CO1    | Ashley   | Ash      | WDC       | 321200    |   34 |
| CO10   | Jack Sp  | Sparrow  | New Jersy | 102301    |   32 |
+--------+----------+----------+-----------+-----------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer WHERE age IN (20,25,27,30); 
+--------+---------------+----------+---------+-----------+------+
| custID | custName      | nickName | city    | postlCode | age  |
+--------+---------------+----------+---------+-----------+------+
| CO2    | Bob Marley    | BM       | Toronto | 100100    |   25 |
| CO4    | Denial Jack   | DJ       | Brazil  | 341020    |   27 |
| CO5    |  Donna Newman | New      | Toronto | 130120    |   27 |
| CO8    | Ashko Charles | AK       | USA     | 421044    |   30 |
+--------+---------------+----------+---------+-----------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer WHERE age NOT IN (20,25,27,30); 
+--------+-----------------+----------+-----------+-----------+------+
| custID | custName        | nickName | city      | postlCode | age  |
+--------+-----------------+----------+-----------+-----------+------+
| CO1    | Ashley          | Ash      | WDC       | 321200    |   34 |
| CO10   | Jack Sp         | Sparrow  | New Jersy | 102301    |   32 |
| CO3    | Cherlies Theron | Cher     | New York  | 120134    |   26 |
| CO6    | Eton M          | M.       | Toronto   | 201023    |   28 |
| CO7    | Bobby Chako     | Chac     | New York  | 320300    |   29 |
| CO9    | Tony Special    | Specie   | GTA       | 418921    |   31 |
+--------+-----------------+----------+-----------+-----------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer WHERE city IN ('toronto','GTA','USA','WDC'); 
+--------+---------------+----------+---------+-----------+------+
| custID | custName      | nickName | city    | postlCode | age  |
+--------+---------------+----------+---------+-----------+------+
| CO1    | Ashley        | Ash      | WDC     | 321200    |   34 |
| CO2    | Bob Marley    | BM       | Toronto | 100100    |   25 |
| CO5    |  Donna Newman | New      | Toronto | 130120    |   27 |
| CO6    | Eton M        | M.       | Toronto | 201023    |   28 |
| CO8    | Ashko Charles | AK       | USA     | 421044    |   30 |
| CO9    | Tony Special  | Specie   | GTA     | 418921    |   31 |
+--------+---------------+----------+---------+-----------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer WHERE city IN ('N%','T%'); 
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT (city) 'unique cities' from customer;
+---------------+
| unique cities |
+---------------+
| WDC           |
| New Jersy     |
| Toronto       |
| New York      |
| Brazil        |
| USA           |
| GTA           |
+---------------+
7 rows in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT (city) AS 'unique cities' from customer;
+---------------+
| unique cities |
+---------------+
| WDC           |
| New Jersy     |
| Toronto       |
| New York      |
| Brazil        |
| USA           |
| GTA           |
+---------------+
7 rows in set (0.06 sec)

MariaDB [CSD2204S18]> SELECT COUNT (DISTINCT(city)) AS 'UNIQUE CITIES' from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DISTINCT(city)) AS 'UNIQUE CITIES' from customer' at line 1
MariaDB [CSD2204S18]> SELECT COUNT ( DISTINCT (city) ) AS 'UNIQUE CITIES' FROM customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DISTINCT (city) ) AS 'UNIQUE CITIES' FROM customer' at line 1
MariaDB [CSD2204S18]> SELECT * FROM customer ORDER BY custName DESC;
+--------+-----------------+----------+-----------+-----------+------+
| custID | custName        | nickName | city      | postlCode | age  |
+--------+-----------------+----------+-----------+-----------+------+
| CO9    | Tony Special    | Specie   | GTA       | 418921    |   31 |
| CO10   | Jack Sp         | Sparrow  | New Jersy | 102301    |   32 |
| CO6    | Eton M          | M.       | Toronto   | 201023    |   28 |
| CO4    | Denial Jack     | DJ       | Brazil    | 341020    |   27 |
| CO3    | Cherlies Theron | Cher     | New York  | 120134    |   26 |
| CO7    | Bobby Chako     | Chac     | New York  | 320300    |   29 |
| CO2    | Bob Marley      | BM       | Toronto   | 100100    |   25 |
| CO1    | Ashley          | Ash      | WDC       | 321200    |   34 |
| CO8    | Ashko Charles   | AK       | USA       | 421044    |   30 |
| CO5    |  Donna Newman   | New      | Toronto   | 130120    |   27 |
+--------+-----------------+----------+-----------+-----------+------+
10 rows in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT COUNT(DISTINCT(city)) AS 'UNIQUE CITIES' FROM customer;
+---------------+
| UNIQUE CITIES |
+---------------+
|             7 |
+---------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer ORDER BY age ASC;
+--------+-----------------+----------+-----------+-----------+------+
| custID | custName        | nickName | city      | postlCode | age  |
+--------+-----------------+----------+-----------+-----------+------+
| CO2    | Bob Marley      | BM       | Toronto   | 100100    |   25 |
| CO3    | Cherlies Theron | Cher     | New York  | 120134    |   26 |
| CO5    |  Donna Newman   | New      | Toronto   | 130120    |   27 |
| CO4    | Denial Jack     | DJ       | Brazil    | 341020    |   27 |
| CO6    | Eton M          | M.       | Toronto   | 201023    |   28 |
| CO7    | Bobby Chako     | Chac     | New York  | 320300    |   29 |
| CO8    | Ashko Charles   | AK       | USA       | 421044    |   30 |
| CO9    | Tony Special    | Specie   | GTA       | 418921    |   31 |
| CO10   | Jack Sp         | Sparrow  | New Jersy | 102301    |   32 |
| CO1    | Ashley          | Ash      | WDC       | 321200    |   34 |
+--------+-----------------+----------+-----------+-----------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer ORDER BY age DESC LIMIT 1;
+--------+----------+----------+------+-----------+------+
| custID | custName | nickName | city | postlCode | age  |
+--------+----------+----------+------+-----------+------+
| CO1    | Ashley   | Ash      | WDC  | 321200    |   34 |
+--------+----------+----------+------+-----------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM customer ORDER BY age DESC LIMIT 2) AS 'SECOND HIGHEST AGE' ODER BY age ASC LIMIT 1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''SECOND HIGHEST AGE' ODER BY age ASC LIMIT 1' at line 1
MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM customer ORDER BY age DESC LIMIT 2) AS T ODER BY age ASC LIMIT 1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ODER BY age ASC LIMIT 1' at line 1
MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM customer ORDER BY age DESC LIMIT 2) AS T ORDER BY age ASC LIMIT 1;
+--------+----------+----------+-----------+-----------+------+
| custID | custName | nickName | city      | postlCode | age  |
+--------+----------+----------+-----------+-----------+------+
| CO10   | Jack Sp  | Sparrow  | New Jersy | 102301    |   32 |
+--------+----------+----------+-----------+-----------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM customer ORDER BY age DESC LIMIT 2) AS 'SECOND HIGHEST AGE' ORDER BY age ASC LIMIT 1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''SECOND HIGHEST AGE' ORDER BY age ASC LIMIT 1' at line 1
MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM customer ORDER BY age ASC LIMIT 2) AS T  ORDER BY age DESC LIMIT 1;
+--------+-----------------+----------+----------+-----------+------+
| custID | custName        | nickName | city     | postlCode | age  |
+--------+-----------------+----------+----------+-----------+------+
| CO3    | Cherlies Theron | Cher     | New York | 120134    |   26 |
+--------+-----------------+----------+----------+-----------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT max(age)*+10*20/2 from customer;
+-------------------+
| max(age)*+10*20/2 |
+-------------------+
|         3400.0000 |
+-------------------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT 10+20 AS 'SUM OF 10+20';
+--------------+
| SUM OF 10+20 |
+--------------+
|           30 |
+--------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> EXIT;
