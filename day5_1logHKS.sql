MariaDB [(none)]> USE CSD2204S18;
Database changed
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

MariaDB [CSD2204S18]> UPDATE C3 SET country = 'USA' :
    -> UPDATE C3 SET country = 'USA';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ':
UPDATE C3 SET country = 'USA'' at line 1
MariaDB [CSD2204S18]> UPDATE C3 SET country='USA';
Query OK, 20 rows affected (0.08 sec)
Rows matched: 20  Changed: 20  Warnings: 0

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
6 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT * FROM C3;
+--------+-----------------+-----------+-----------+------+---------+
| custID | custName        | city      | postlCode | age  | Country |
+--------+-----------------+-----------+-----------+------+---------+
| CO1    | Ashley          | WDC       | 321200    |   34 | USA     |
| CO10   | Jack Sp         | New Jersy | 102301    |   32 | USA     |
| CO2    | Bob Marley      | Toronto   | 100100    |   25 | USA     |
| CO3    | Cherlies Theron | New York  | 120134    |   26 | USA     |
| CO4    | Denial Jack     | Brazil    | 341020    |   27 | USA     |
| CO5    |  Donna Newman   | Toronto   | 130120    |   27 | USA     |
| CO6    | Eton M          | Toronto   | 201023    |   28 | USA     |
| CO7    | Bobby Chako     | New York  | 320300    |   29 | USA     |
| CO8    | Ashko Charles   | USA       | 421044    |   30 | USA     |
| CO9    | Tony Special    | GTA       | 418921    |   31 | USA     |
| CO1    | Ashley          | WDC       | 321200    |   34 | USA     |
| CO10   | Jack Sp         | New Jersy | 102301    |   32 | USA     |
| CO2    | Bob Marley      | Toronto   | 100100    |   25 | USA     |
| CO3    | Cherlies Theron | New York  | 120134    |   26 | USA     |
| CO4    | Denial Jack     | Brazil    | 341020    |   27 | USA     |
| CO5    |  Donna Newman   | Toronto   | 130120    |   27 | USA     |
| CO6    | Eton M          | Toronto   | 201023    |   28 | USA     |
| CO7    | Bobby Chako     | New York  | 320300    |   29 | USA     |
| CO8    | Ashko Charles   | USA       | 421044    |   30 | USA     |
| CO9    | Tony Special    | GTA       | 418921    |   31 | USA     |
+--------+-----------------+-----------+-----------+------+---------+
20 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update cust set country="canada"
    -> where city='brazil';
ERROR 1146 (42S02): Table 'csd2204s18.cust' doesn't exist
MariaDB [CSD2204S18]> UPDATE C3 SET country='south america' WHERE city='Brazil';
Query OK, 2 rows affected (0.06 sec)
Rows matched: 2  Changed: 2  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
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
+--------+-----------------+-----------+-----------+------+---------------+
| custID | custName        | city      | postlCode | age  | Country       |
+--------+-----------------+-----------+-----------+------+---------------+
| CO1    | Ashley          | WDC       | 321200    |   34 | USA           |
| CO10   | Jack Sp         | New Jersy | 102301    |   32 | USA           |
| CO2    | Bob Marley      | Toronto   | 100100    |   25 | USA           |
| CO3    | Cherlies Theron | New York  | 120134    |   26 | USA           |
| CO4    | Denial Jack     | Brazil    | 341020    |   27 | south america |
| CO5    |  Donna Newman   | Toronto   | 130120    |   27 | USA           |
| CO6    | Eton M          | Toronto   | 201023    |   28 | USA           |
| CO7    | Bobby Chako     | New York  | 320300    |   29 | USA           |
| CO8    | Ashko Charles   | USA       | 421044    |   30 | USA           |
| CO9    | Tony Special    | GTA       | 418921    |   31 | USA           |
| CO1    | Ashley          | WDC       | 321200    |   34 | USA           |
| CO10   | Jack Sp         | New Jersy | 102301    |   32 | USA           |
| CO2    | Bob Marley      | Toronto   | 100100    |   25 | USA           |
| CO3    | Cherlies Theron | New York  | 120134    |   26 | USA           |
| CO4    | Denial Jack     | Brazil    | 341020    |   27 | south america |
| CO5    |  Donna Newman   | Toronto   | 130120    |   27 | USA           |
| CO6    | Eton M          | Toronto   | 201023    |   28 | USA           |
| CO7    | Bobby Chako     | New York  | 320300    |   29 | USA           |
| CO8    | Ashko Charles   | USA       | 421044    |   30 | USA           |
| CO9    | Tony Special    | GTA       | 418921    |   31 | USA           |
+--------+-----------------+-----------+-----------+------+---------------+
20 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE C3 SET country='CANADA' WHERE city='TORONTO'||CITY='GTA';
Query OK, 8 rows affected (0.06 sec)
Rows matched: 8  Changed: 8  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM C3;
+--------+-----------------+-----------+-----------+------+---------------+
| custID | custName        | city      | postlCode | age  | Country       |
+--------+-----------------+-----------+-----------+------+---------------+
| CO1    | Ashley          | WDC       | 321200    |   34 | USA           |
| CO10   | Jack Sp         | New Jersy | 102301    |   32 | USA           |
| CO2    | Bob Marley      | Toronto   | 100100    |   25 | CANADA        |
| CO3    | Cherlies Theron | New York  | 120134    |   26 | USA           |
| CO4    | Denial Jack     | Brazil    | 341020    |   27 | south america |
| CO5    |  Donna Newman   | Toronto   | 130120    |   27 | CANADA        |
| CO6    | Eton M          | Toronto   | 201023    |   28 | CANADA        |
| CO7    | Bobby Chako     | New York  | 320300    |   29 | USA           |
| CO8    | Ashko Charles   | USA       | 421044    |   30 | USA           |
| CO9    | Tony Special    | GTA       | 418921    |   31 | CANADA        |
| CO1    | Ashley          | WDC       | 321200    |   34 | USA           |
| CO10   | Jack Sp         | New Jersy | 102301    |   32 | USA           |
| CO2    | Bob Marley      | Toronto   | 100100    |   25 | CANADA        |
| CO3    | Cherlies Theron | New York  | 120134    |   26 | USA           |
| CO4    | Denial Jack     | Brazil    | 341020    |   27 | south america |
| CO5    |  Donna Newman   | Toronto   | 130120    |   27 | CANADA        |
| CO6    | Eton M          | Toronto   | 201023    |   28 | CANADA        |
| CO7    | Bobby Chako     | New York  | 320300    |   29 | USA           |
| CO8    | Ashko Charles   | USA       | 421044    |   30 | USA           |
| CO9    | Tony Special    | GTA       | 418921    |   31 | CANADA        |
+--------+-----------------+-----------+-----------+------+---------------+
20 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM C2;
+--------+-----------+
| CUSTID | POSTLCODE |
+--------+-----------+
| CO2    | 100100    |
| CO5    | 130120    |
| CO6    | 201023    |
+--------+-----------+
3 rows in set (0.05 sec)

MariaDB [CSD2204S18]> DELETE FROM C2 WHERE CUSTID LIKE 'CO5';
Query OK, 1 row affected (0.08 sec)

MariaDB [CSD2204S18]> SELECT * FROM C2;
+--------+-----------+
| CUSTID | POSTLCODE |
+--------+-----------+
| CO2    | 100100    |
| CO6    | 201023    |
+--------+-----------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM C1;
+-----------------+----------+-----------+-----------+------+
| custName        | nickName | city      | postlCode | age  |
+-----------------+----------+-----------+-----------+------+
| Ashley          | Ash      | WDC       | 321200    |   34 |
| Jack Sp         | Sparrow  | New Jersy | 102301    |   32 |
| Bob Marley      | BM       | Toronto   | 100100    |   25 |
| Cherlies Theron | Cher     | New York  | 120134    |   26 |
| Denial Jack     | DJ       | Brazil    | 341020    |   27 |
|  Donna Newman   | New      | Toronto   | 130120    |   27 |
| Eton M          | M.       | Toronto   | 201023    |   28 |
| Bobby Chako     | Chac     | New York  | 320300    |   29 |
| Ashko Charles   | AK       | USA       | 421044    |   30 |
| Tony Special    | Specie   | GTA       | 418921    |   31 |
+-----------------+----------+-----------+-----------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE C1 ADD COLUMN CUSTID;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [CSD2204S18]> ALTER TABLE C1 ADD COLUMN CUSTID VARCHAR(10);
Query OK, 0 rows affected (0.39 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM C1;
+-----------------+----------+-----------+-----------+------+--------+
| custName        | nickName | city      | postlCode | age  | CUSTID |
+-----------------+----------+-----------+-----------+------+--------+
| Ashley          | Ash      | WDC       | 321200    |   34 | NULL   |
| Jack Sp         | Sparrow  | New Jersy | 102301    |   32 | NULL   |
| Bob Marley      | BM       | Toronto   | 100100    |   25 | NULL   |
| Cherlies Theron | Cher     | New York  | 120134    |   26 | NULL   |
| Denial Jack     | DJ       | Brazil    | 341020    |   27 | NULL   |
|  Donna Newman   | New      | Toronto   | 130120    |   27 | NULL   |
| Eton M          | M.       | Toronto   | 201023    |   28 | NULL   |
| Bobby Chako     | Chac     | New York  | 320300    |   29 | NULL   |
| Ashko Charles   | AK       | USA       | 421044    |   30 | NULL   |
| Tony Special    | Specie   | GTA       | 418921    |   31 | NULL   |
+-----------------+----------+-----------+-----------+------+--------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE C1 SET CUSTID='CO1' WHERE AGE>30;
Query OK, 3 rows affected (0.05 sec)
Rows matched: 3  Changed: 3  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM C1;
+-----------------+----------+-----------+-----------+------+--------+
| custName        | nickName | city      | postlCode | age  | CUSTID |
+-----------------+----------+-----------+-----------+------+--------+
| Ashley          | Ash      | WDC       | 321200    |   34 | CO1    |
| Jack Sp         | Sparrow  | New Jersy | 102301    |   32 | CO1    |
| Bob Marley      | BM       | Toronto   | 100100    |   25 | NULL   |
| Cherlies Theron | Cher     | New York  | 120134    |   26 | NULL   |
| Denial Jack     | DJ       | Brazil    | 341020    |   27 | NULL   |
|  Donna Newman   | New      | Toronto   | 130120    |   27 | NULL   |
| Eton M          | M.       | Toronto   | 201023    |   28 | NULL   |
| Bobby Chako     | Chac     | New York  | 320300    |   29 | NULL   |
| Ashko Charles   | AK       | USA       | 421044    |   30 | NULL   |
| Tony Special    | Specie   | GTA       | 418921    |   31 | CO1    |
+-----------------+----------+-----------+-----------+------+--------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM C1 WHERE CUSTID IS NOT NULL;
+--------------+----------+-----------+-----------+------+--------+
| custName     | nickName | city      | postlCode | age  | CUSTID |
+--------------+----------+-----------+-----------+------+--------+
| Ashley       | Ash      | WDC       | 321200    |   34 | CO1    |
| Jack Sp      | Sparrow  | New Jersy | 102301    |   32 | CO1    |
| Tony Special | Specie   | GTA       | 418921    |   31 | CO1    |
+--------------+----------+-----------+-----------+------+--------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM C1 WHERE CUSTID IS NULL;
+-----------------+----------+----------+-----------+------+--------+
| custName        | nickName | city     | postlCode | age  | CUSTID |
+-----------------+----------+----------+-----------+------+--------+
| Bob Marley      | BM       | Toronto  | 100100    |   25 | NULL   |
| Cherlies Theron | Cher     | New York | 120134    |   26 | NULL   |
| Denial Jack     | DJ       | Brazil   | 341020    |   27 | NULL   |
|  Donna Newman   | New      | Toronto  | 130120    |   27 | NULL   |
| Eton M          | M.       | Toronto  | 201023    |   28 | NULL   |
| Bobby Chako     | Chac     | New York | 320300    |   29 | NULL   |
| Ashko Charles   | AK       | USA      | 421044    |   30 | NULL   |
+-----------------+----------+----------+-----------+------+--------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE C1 MODIFY COLUMN AGE FLOAT(10,2);
Query OK, 10 rows affected (0.67 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM C1 WHERE CUSTID;
Empty set, 3 warnings (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM C1;
+-----------------+----------+-----------+-----------+-------+--------+
| custName        | nickName | city      | postlCode | AGE   | CUSTID |
+-----------------+----------+-----------+-----------+-------+--------+
| Ashley          | Ash      | WDC       | 321200    | 34.00 | CO1    |
| Jack Sp         | Sparrow  | New Jersy | 102301    | 32.00 | CO1    |
| Bob Marley      | BM       | Toronto   | 100100    | 25.00 | NULL   |
| Cherlies Theron | Cher     | New York  | 120134    | 26.00 | NULL   |
| Denial Jack     | DJ       | Brazil    | 341020    | 27.00 | NULL   |
|  Donna Newman   | New      | Toronto   | 130120    | 27.00 | NULL   |
| Eton M          | M.       | Toronto   | 201023    | 28.00 | NULL   |
| Bobby Chako     | Chac     | New York  | 320300    | 29.00 | NULL   |
| Ashko Charles   | AK       | USA       | 421044    | 30.00 | NULL   |
| Tony Special    | Specie   | GTA       | 418921    | 31.00 | CO1    |
+-----------------+----------+-----------+-----------+-------+--------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> exit;
