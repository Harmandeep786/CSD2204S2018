MariaDB [(none)]> USE CSD2204S18
Database changed
MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c2                   |
| c3                   |
| countries            |
| customer             |
| departments          |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| movie                |
| movie1               |
| orders               |
| persons              |
| products             |
| regions              |
+----------------------+
17 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM employees;
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1987-06-18 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1987-06-19 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1987-06-20 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1987-06-24 | IT_PROG    |  4200.00 |           0.00 |        103 |            60 |
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1987-06-25 | FI_MGR     | 12000.00 |           0.00 |        101 |           100 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1987-06-26 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100 |
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1987-06-27 | FI_ACCOUNT |  8200.00 |           0.00 |        108 |           100 |
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1987-06-28 | FI_ACCOUNT |  7700.00 |           0.00 |        108 |           100 |
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1987-06-29 | FI_ACCOUNT |  7800.00 |           0.00 |        108 |           100 |
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1987-06-30 | FI_ACCOUNT |  6900.00 |           0.00 |        108 |           100 |
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561       | 1987-07-01 | PU_MAN     | 11000.00 |           0.00 |        100 |            30 |
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1987-07-02 | PU_CLERK   |  3100.00 |           0.00 |        114 |            30 |
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1987-07-03 | PU_CLERK   |  2900.00 |           0.00 |        114 |            30 |
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1987-07-04 | PU_CLERK   |  2800.00 |           0.00 |        114 |            30 |
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1987-07-05 | PU_CLERK   |  2600.00 |           0.00 |        114 |            30 |
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1987-07-06 | PU_CLERK   |  2500.00 |           0.00 |        114 |            30 |
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234       | 1987-07-07 | ST_MAN     |  8000.00 |           0.00 |        100 |            50 |
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234       | 1987-07-08 | ST_MAN     |  8200.00 |           0.00 |        100 |            50 |
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234       | 1987-07-09 | ST_MAN     |  7900.00 |           0.00 |        100 |            50 |
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234       | 1987-07-10 | ST_MAN     |  6500.00 |           0.00 |        100 |            50 |
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234       | 1987-07-11 | ST_MAN     |  5800.00 |           0.00 |        100 |            50 |
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1987-07-12 | ST_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1987-07-13 | ST_CLERK   |  2700.00 |           0.00 |        120 |            50 |
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1987-07-14 | ST_CLERK   |  2400.00 |           0.00 |        120 |            50 |
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 1987-07-15 | ST_CLERK   |  2200.00 |           0.00 |        120 |            50 |
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1987-07-16 | ST_CLERK   |  3300.00 |           0.00 |        121 |            50 |
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1987-07-17 | ST_CLERK   |  2800.00 |           0.00 |        121 |            50 |
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1987-07-18 | ST_CLERK   |  2500.00 |           0.00 |        121 |            50 |
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1987-07-19 | ST_CLERK   |  2100.00 |           0.00 |        121 |            50 |
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1987-07-20 | ST_CLERK   |  3300.00 |           0.00 |        122 |            50 |
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1987-07-21 | ST_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1987-07-22 | ST_CLERK   |  2400.00 |           0.00 |        122 |            50 |
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 1987-07-23 | ST_CLERK   |  2200.00 |           0.00 |        122 |            50 |
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1987-07-24 | ST_CLERK   |  3600.00 |           0.00 |        123 |            50 |
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1987-07-25 | ST_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1987-07-26 | ST_CLERK   |  2700.00 |           0.00 |        123 |            50 |
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1987-07-27 | ST_CLERK   |  2500.00 |           0.00 |        123 |            50 |
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1987-07-28 | ST_CLERK   |  3500.00 |           0.00 |        124 |            50 |
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1987-07-29 | ST_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1987-07-30 | ST_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1987-07-31 | ST_CLERK   |  2500.00 |           0.00 |        124 |            50 |
|         145 | John        | Russell     | JRUSSEL  | 011.44.1344.429268 | 1987-08-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |
|         146 | Karen       | Partners    | KPARTNER | 011.44.1344.467268 | 1987-08-02 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |
|         147 | Alberto     | Errazuriz   | AERRAZUR | 011.44.1344.429278 | 1987-08-03 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 |
|         148 | Gerald      | Cambrault   | GCAMBRAU | 011.44.1344.619268 | 1987-08-04 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 |
|         149 | Eleni       | Zlotkey     | EZLOTKEY | 011.44.1344.429018 | 1987-08-05 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 |
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1987-08-06 | SA_REP     | 10000.00 |           0.30 |        145 |            80 |
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1987-08-07 | SA_REP     |  9500.00 |           0.25 |        145 |            80 |
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1987-08-08 | SA_REP     |  9000.00 |           0.25 |        145 |            80 |
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1987-08-09 | SA_REP     |  8000.00 |           0.20 |        145 |            80 |
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1987-08-10 | SA_REP     |  7500.00 |           0.20 |        145 |            80 |
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1987-08-11 | SA_REP     |  7000.00 |           0.15 |        145 |            80 |
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1987-08-12 | SA_REP     | 10000.00 |           0.35 |        146 |            80 |
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1987-08-13 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1987-08-14 | SA_REP     |  9000.00 |           0.35 |        146 |            80 |
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1987-08-15 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1987-08-16 | SA_REP     |  7500.00 |           0.30 |        146 |            80 |
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1987-08-17 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1987-08-18 | SA_REP     | 10500.00 |           0.25 |        147 |            80 |
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1987-08-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 |
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 1987-08-20 | SA_REP     |  7200.00 |           0.10 |        147 |            80 |
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 1987-08-21 | SA_REP     |  6800.00 |           0.10 |        147 |            80 |
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 1987-08-22 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 1987-08-23 | SA_REP     |  6200.00 |           0.10 |        147 |            80 |
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1987-08-24 | SA_REP     | 11500.00 |           0.25 |        148 |            80 |
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1987-08-25 | SA_REP     | 10000.00 |           0.20 |        148 |            80 |
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1987-08-26 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1987-08-27 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1987-08-28 | SA_REP     |  7300.00 |           0.15 |        148 |            80 |
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 1987-08-29 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1987-08-30 | SA_REP     | 11000.00 |           0.30 |        149 |            80 |
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1987-08-31 | SA_REP     |  8800.00 |           0.25 |        149 |            80 |
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1987-09-01 | SA_REP     |  8600.00 |           0.20 |        149 |            80 |
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1987-09-02 | SA_REP     |  8400.00 |           0.20 |        149 |            80 |
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1987-09-03 | SA_REP     |  7000.00 |           0.15 |        149 |             0 |
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 1987-09-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 |
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1987-09-05 | SH_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1987-09-06 | SH_CLERK   |  3100.00 |           0.00 |        120 |            50 |
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1987-09-07 | SH_CLERK   |  2500.00 |           0.00 |        120 |            50 |
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 1987-09-08 | SH_CLERK   |  2800.00 |           0.00 |        120 |            50 |
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1987-09-09 | SH_CLERK   |  4200.00 |           0.00 |        121 |            50 |
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1987-09-10 | SH_CLERK   |  4100.00 |           0.00 |        121 |            50 |
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1987-09-11 | SH_CLERK   |  3400.00 |           0.00 |        121 |            50 |
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1987-09-12 | SH_CLERK   |  3000.00 |           0.00 |        121 |            50 |
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1987-09-13 | SH_CLERK   |  3800.00 |           0.00 |        122 |            50 |
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1987-09-14 | SH_CLERK   |  3600.00 |           0.00 |        122 |            50 |
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1987-09-15 | SH_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1987-09-16 | SH_CLERK   |  2500.00 |           0.00 |        122 |            50 |
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1987-09-17 | SH_CLERK   |  4000.00 |           0.00 |        123 |            50 |
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1987-09-18 | SH_CLERK   |  3900.00 |           0.00 |        123 |            50 |
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1987-09-19 | SH_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1987-09-20 | SH_CLERK   |  2800.00 |           0.00 |        123 |            50 |
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1987-09-21 | SH_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         201 | Michael     | Hartstein   | MHARTSTE | 515.123.5555       | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         205 | Shelley     | Higgins     | SHIGGINS | 515.123.8080       | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
107 rows in set (0.00 sec)

MariaDB [CSD2204S18]> desc jobs;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | varchar(10)  | NO   | PRI |         |       |
| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |
| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM JOBS;
+------------+---------------------------------+------------+------------+
| JOB_ID     | JOB_TITLE                       | MIN_SALARY | MAX_SALARY |
+------------+---------------------------------+------------+------------+
| AD_PRES    | President                       |      20000 |      40000 |
| AD_VP      | Administration Vice President   |      15000 |      30000 |
| AD_ASST    | Administration Assistant        |       3000 |       6000 |
| FI_MGR     | Finance Manager                 |       8200 |      16000 |
| FI_ACCOUNT | Accountant                      |       4200 |       9000 |
| AC_MGR     | Accounting Manager              |       8200 |      16000 |
| AC_ACCOUNT | Public Accountant               |       4200 |       9000 |
| SA_MAN     | Sales Manager                   |      10000 |      20000 |
| SA_REP     | Sales Representative            |       6000 |      12000 |
| PU_MAN     | Purchasing Manager              |       8000 |      15000 |
| PU_CLERK   | Purchasing Clerk                |       2500 |       5500 |
| ST_MAN     | Stock Manager                   |       5500 |       8500 |
| ST_CLERK   | Stock Clerk                     |       2000 |       5000 |
| SH_CLERK   | Shipping Clerk                  |       2500 |       5500 |
| IT_PROG    | Programmer                      |       4000 |      10000 |
| MK_MAN     | Marketing Manager               |       9000 |      15000 |
| MK_REP     | Marketing Representative        |       4000 |       9000 |
| HR_REP     | Human Resources Representative  |       4000 |       9000 |
| PR_REP     | Public Relations Representative |       4500 |      10500 |
+------------+---------------------------------+------------+------------+
19 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT MIN(min_salary) FROM jobs;
+-----------------+
| MIN(min_salary) |
+-----------------+
|            2000 |
+-----------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT MIN(min_salary)+1000 FROM jobs;
+----------------------+
| MIN(min_salary)+1000 |
+----------------------+
|                 3000 |
+----------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT frit_name,last_name,salary 1000 FROM employees WHERE slry= (SELECT MIN(min_salary)+1000 FROM JOBS);;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '1000 FROM employees WHERE slry= (SELECT MIN(min_salary)+1000 FROM JOBS)' at line 1
ERROR: No query specified

MariaDB [CSD2204S18]> SELECT first_name,last_name,salary 1000 FROM employees WHERE salary= (SELECT MIN(min_salary)+1000 FROM JOBS);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '1000 FROM employees WHERE salary= (SELECT MIN(min_salary)+1000 FROM JOBS)' at line 1
MariaDB [CSD2204S18]> SELECT first_name,last_name,salary 1000 FROM employees WHERE salary= (SELECT MIN(min_salary)+1000 FROM JOBS);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '1000 FROM employees WHERE salary= (SELECT MIN(min_salary)+1000 FROM JOBS)' at line 1
MariaDB [CSD2204S18]> SELECT frit_name,last_name,salary FROM employees WHERE slry= (SELECT MIN(min_salary)+1000 FROM JOBS);
ERROR 1054 (42S22): Unknown column 'frit_name' in 'field list'
MariaDB [CSD2204S18]> SELECT first_name,last_name,salary FROM employees WHERE salary= (SELECT MIN(min_salary)+1000 FROM JOBS);
+------------+-----------+---------+
| first_name | last_name | salary  |
+------------+-----------+---------+
| Anthony    | Cabrio    | 3000.00 |
| Kevin      | Feeney    | 3000.00 |
+------------+-----------+---------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT first_name,last_name,salary FROM employees WHERE salary= (SELECT AVG(salary) FROM employees GROUP BY department_id);
ERROR 1242 (21000): Subquery returns more than 1 row
MariaDB [CSD2204S18]> SELECT first_name,last_name,salary FROM employees WHERE salary > ALL (SELECT AVG(salary) FROM employees GROUP BY department_id);
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT salary,job
    -> _id from employees WHERE job_id=SH_CLERK;
ERROR 1054 (42S22): Unknown column 'job' in 'field list'
MariaDB [CSD2204S18]> SELECT salary,job_id from employees WHERE job_id=SH_CLERK;
ERROR 1054 (42S22): Unknown column 'SH_CLERK' in 'where clause'
MariaDB [CSD2204S18]> SELECT salary,job_id from employees WHERE job_id='SH_CLERK';
+---------+----------+
| salary  | job_id   |
+---------+----------+
| 3200.00 | SH_CLERK |
| 3100.00 | SH_CLERK |
| 2500.00 | SH_CLERK |
| 2800.00 | SH_CLERK |
| 4200.00 | SH_CLERK |
| 4100.00 | SH_CLERK |
| 3400.00 | SH_CLERK |
| 3000.00 | SH_CLERK |
| 3800.00 | SH_CLERK |
| 3600.00 | SH_CLERK |
| 2900.00 | SH_CLERK |
| 2500.00 | SH_CLERK |
| 4000.00 | SH_CLERK |
| 3900.00 | SH_CLERK |
| 3200.00 | SH_CLERK |
| 2800.00 | SH_CLERK |
| 3100.00 | SH_CLERK |
| 3000.00 | SH_CLERK |
| 2600.00 | SH_CLERK |
| 2600.00 | SH_CLERK |
+---------+----------+
20 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT max(salary) from employees WHERE job_id='SH_CLERK';
+-------------+
| max(salary) |
+-------------+
|     4200.00 |
+-------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT first_name,last_name,salary from employees WHERE salary > (SELECT MAX(salary) FROM employees WHERE job_id='SH_CLERK') order by salary;
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Jennifer    | Whalen     |  4400.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Kevin       | Mourgos    |  5800.00 |
| Bruce       | Ernst      |  6000.00 |
| Pat         | Fay        |  6000.00 |
| Sundita     | Kumar      |  6100.00 |
| Amit        | Banda      |  6200.00 |
| Charles     | Johnson    |  6200.00 |
| Sundar      | Ande       |  6400.00 |
| Susan       | Mavris     |  6500.00 |
| Shanta      | Vollman    |  6500.00 |
| David       | Lee        |  6800.00 |
| Luis        | Popp       |  6900.00 |
| Sarath      | Sewall     |  7000.00 |
| Oliver      | Tuvault    |  7000.00 |
| Kimberely   | Grant      |  7000.00 |
| Mattea      | Marvins    |  7200.00 |
| Elizabeth   | Bates      |  7300.00 |
| William     | Smith      |  7400.00 |
| Nanette     | Cambrault  |  7500.00 |
| Louise      | Doran      |  7500.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Payam       | Kaufling   |  7900.00 |
| Lindsey     | Smith      |  8000.00 |
| Matthew     | Weiss      |  8000.00 |
| Christopher | Olsen      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| John        | Chen       |  8200.00 |
| William     | Gietz      |  8300.00 |
| Jack        | Livingston |  8400.00 |
| Jonathon    | Taylor     |  8600.00 |
| Alyssa      | Hutton     |  8800.00 |
| Allan       | McEwen     |  9000.00 |
| Peter       | Hall       |  9000.00 |
| Alexander   | Hunold     |  9000.00 |
| Daniel      | Faviet     |  9000.00 |
| Patrick     | Sully      |  9500.00 |
| Danielle    | Greene     |  9500.00 |
| David       | Bernstein  |  9500.00 |
| Tayler      | Fox        |  9600.00 |
| Hermann     | Baer       | 10000.00 |
| Harrison    | Bloom      | 10000.00 |
| Janette     | King       | 10000.00 |
| Peter       | Tucker     | 10000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Clara       | Vishney    | 10500.00 |
| Gerald      | Cambrault  | 11000.00 |
| Ellen       | Abel       | 11000.00 |
| Den         | Raphaely   | 11000.00 |
| Lisa        | Ozer       | 11500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Shelley     | Higgins    | 12000.00 |
| Nancy       | Greenberg  | 12000.00 |
| Michael     | Hartstein  | 13000.00 |
| Karen       | Partners   | 13500.00 |
| John        | Russell    | 14000.00 |
| Lex         | De Haan    | 17000.00 |
| Neena       | Kochhar    | 17000.00 |
| Steven      | King       | 24000.00 |
+-------------+------------+----------+
61 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT first_name,last_name,salary from employees WHERE salary < ANY (SELECT MAX(salary) FROM employees WHERE job_id='SH_CLERK') order by salary;
+------------+-------------+---------+
| first_name | last_name   | salary  |
+------------+-------------+---------+
| TJ         | Olson       | 2100.00 |
| Hazel      | Philtanker  | 2200.00 |
| Steven     | Markle      | 2200.00 |
| Ki         | Gee         | 2400.00 |
| James      | Landry      | 2400.00 |
| Martha     | Sullivan    | 2500.00 |
| James      | Marlow      | 2500.00 |
| Randall    | Perkins     | 2500.00 |
| Karen      | Colmenares  | 2500.00 |
| Peter      | Vargas      | 2500.00 |
| Joshua     | Patel       | 2500.00 |
| Douglas    | Grant       | 2600.00 |
| Donald     | OConnell    | 2600.00 |
| Guy        | Himuro      | 2600.00 |
| Randall    | Matos       | 2600.00 |
| Irene      | Mikkilineni | 2700.00 |
| John       | Seo         | 2700.00 |
| Mozhe      | Atkinson    | 2800.00 |
| Vance      | Jones       | 2800.00 |
| Sigal      | Tobias      | 2800.00 |
| Girard     | Geoni       | 2800.00 |
| Michael    | Rogers      | 2900.00 |
| Timothy    | Gates       | 2900.00 |
| Shelli     | Baida       | 2900.00 |
| Kevin      | Feeney      | 3000.00 |
| Anthony    | Cabrio      | 3000.00 |
| Alana      | Walsh       | 3100.00 |
| Jean       | Fleaur      | 3100.00 |
| Alexander  | Khoo        | 3100.00 |
| Curtis     | Davies      | 3100.00 |
| Stephen    | Stiles      | 3200.00 |
| Julia      | Nayer       | 3200.00 |
| Samuel     | McCain      | 3200.00 |
| Winston    | Taylor      | 3200.00 |
| Jason      | Mallin      | 3300.00 |
| Laura      | Bissot      | 3300.00 |
| Julia      | Dellinger   | 3400.00 |
| Trenna     | Rajs        | 3500.00 |
| Renske     | Ladwig      | 3600.00 |
| Jennifer   | Dilly       | 3600.00 |
| Kelly      | Chung       | 3800.00 |
| Britney    | Everett     | 3900.00 |
| Sarah      | Bell        | 4000.00 |
| Alexis     | Bull        | 4100.00 |
+------------+-------------+---------+
44 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT manager_id from employees WHERE manager_id !=0;
+------------+
| manager_id |
+------------+
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        101 |
|        101 |
|        101 |
|        101 |
|        101 |
|        102 |
|        103 |
|        103 |
|        103 |
|        103 |
|        108 |
|        108 |
|        108 |
|        108 |
|        108 |
|        114 |
|        114 |
|        114 |
|        114 |
|        114 |
|        120 |
|        120 |
|        120 |
|        120 |
|        120 |
|        120 |
|        120 |
|        120 |
|        121 |
|        121 |
|        121 |
|        121 |
|        121 |
|        121 |
|        121 |
|        121 |
|        122 |
|        122 |
|        122 |
|        122 |
|        122 |
|        122 |
|        122 |
|        122 |
|        123 |
|        123 |
|        123 |
|        123 |
|        123 |
|        123 |
|        123 |
|        123 |
|        124 |
|        124 |
|        124 |
|        124 |
|        124 |
|        124 |
|        124 |
|        124 |
|        145 |
|        145 |
|        145 |
|        145 |
|        145 |
|        145 |
|        146 |
|        146 |
|        146 |
|        146 |
|        146 |
|        146 |
|        147 |
|        147 |
|        147 |
|        147 |
|        147 |
|        147 |
|        148 |
|        148 |
|        148 |
|        148 |
|        148 |
|        148 |
|        149 |
|        149 |
|        149 |
|        149 |
|        149 |
|        149 |
|        201 |
|        205 |
+------------+
106 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT(manager_id) from employees WHERE manager_id !=0;
+------------+
| manager_id |
+------------+
|        100 |
|        101 |
|        102 |
|        103 |
|        108 |
|        114 |
|        120 |
|        121 |
|        122 |
|        123 |
|        124 |
|        145 |
|        146 |
|        147 |
|        148 |
|        149 |
|        201 |
|        205 |
+------------+
18 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT first_name,last_name from employees WHERE employee_id not in (select distint(manager_id) FROM employee WHERE manager_id !=0);
ERROR 1146 (42S02): Table 'csd2204s18.employee' doesn't exist
MariaDB [CSD2204S18]> SELECT first_name,last_name from employees WHERE employee_id not in (select distint(manager_id) FROM employees WHERE manager_id !=0);
ERROR 1305 (42000): FUNCTION csd2204s18.distint does not exist
MariaDB [CSD2204S18]> SELECT first_name,last_name from employees WHERE employee_id NOT IN(select DISTINCT (manager_id) FROM employees WHERE manager_id !=0);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Bruce       | Ernst       |
| David       | Austin      |
| Valli       | Pataballa   |
| Diana       | Lorentz     |
| Daniel      | Faviet      |
| John        | Chen        |
| Ismael      | Sciarra     |
| Jose Manuel | Urman       |
| Luis        | Popp        |
| Alexander   | Khoo        |
| Shelli      | Baida       |
| Sigal       | Tobias      |
| Guy         | Himuro      |
| Karen       | Colmenares  |
| Julia       | Nayer       |
| Irene       | Mikkilineni |
| James       | Landry      |
| Steven      | Markle      |
| Laura       | Bissot      |
| Mozhe       | Atkinson    |
| James       | Marlow      |
| TJ          | Olson       |
| Jason       | Mallin      |
| Michael     | Rogers      |
| Ki          | Gee         |
| Hazel       | Philtanker  |
| Renske      | Ladwig      |
| Stephen     | Stiles      |
| John        | Seo         |
| Joshua      | Patel       |
| Trenna      | Rajs        |
| Curtis      | Davies      |
| Randall     | Matos       |
| Peter       | Vargas      |
| Peter       | Tucker      |
| David       | Bernstein   |
| Peter       | Hall        |
| Christopher | Olsen       |
| Nanette     | Cambrault   |
| Oliver      | Tuvault     |
| Janette     | King        |
| Patrick     | Sully       |
| Allan       | McEwen      |
| Lindsey     | Smith       |
| Louise      | Doran       |
| Sarath      | Sewall      |
| Clara       | Vishney     |
| Danielle    | Greene      |
| Mattea      | Marvins     |
| David       | Lee         |
| Sundar      | Ande        |
| Amit        | Banda       |
| Lisa        | Ozer        |
| Harrison    | Bloom       |
| Tayler      | Fox         |
| William     | Smith       |
| Elizabeth   | Bates       |
| Sundita     | Kumar       |
| Ellen       | Abel        |
| Alyssa      | Hutton      |
| Jonathon    | Taylor      |
| Jack        | Livingston  |
| Kimberely   | Grant       |
| Charles     | Johnson     |
| Winston     | Taylor      |
| Jean        | Fleaur      |
| Martha      | Sullivan    |
| Girard      | Geoni       |
| Nandita     | Sarchand    |
| Alexis      | Bull        |
| Julia       | Dellinger   |
| Anthony     | Cabrio      |
| Kelly       | Chung       |
| Jennifer    | Dilly       |
| Timothy     | Gates       |
| Randall     | Perkins     |
| Sarah       | Bell        |
| Britney     | Everett     |
| Samuel      | McCain      |
| Vance       | Jones       |
| Alana       | Walsh       |
| Kevin       | Feeney      |
| Donald      | OConnell    |
| Douglas     | Grant       |
| Jennifer    | Whalen      |
| Pat         | Fay         |
| Susan       | Mavris      |
| Hermann     | Baer        |
| William     | Gietz       |
+-------------+-------------+
89 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT b.first
    -> _name,b.last_name FROM employees b WHERE NOT EXISTS (SELECT 'X' FROM employees a WHERE a.manager_id=b.employee_id);
ERROR 1054 (42S22): Unknown column 'b.first' in 'field list'
MariaDB [CSD2204S18]> SELECT b.first_name,b.last_name FROM employees b WHERE NOT EXISTS (SELECT 'X' FROM employees a WHERE a.manager_id=b.employee_id);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Bruce       | Ernst       |
| David       | Austin      |
| Valli       | Pataballa   |
| Diana       | Lorentz     |
| Daniel      | Faviet      |
| John        | Chen        |
| Ismael      | Sciarra     |
| Jose Manuel | Urman       |
| Luis        | Popp        |
| Alexander   | Khoo        |
| Shelli      | Baida       |
| Sigal       | Tobias      |
| Guy         | Himuro      |
| Karen       | Colmenares  |
| Julia       | Nayer       |
| Irene       | Mikkilineni |
| James       | Landry      |
| Steven      | Markle      |
| Laura       | Bissot      |
| Mozhe       | Atkinson    |
| James       | Marlow      |
| TJ          | Olson       |
| Jason       | Mallin      |
| Michael     | Rogers      |
| Ki          | Gee         |
| Hazel       | Philtanker  |
| Renske      | Ladwig      |
| Stephen     | Stiles      |
| John        | Seo         |
| Joshua      | Patel       |
| Trenna      | Rajs        |
| Curtis      | Davies      |
| Randall     | Matos       |
| Peter       | Vargas      |
| Peter       | Tucker      |
| David       | Bernstein   |
| Peter       | Hall        |
| Christopher | Olsen       |
| Nanette     | Cambrault   |
| Oliver      | Tuvault     |
| Janette     | King        |
| Patrick     | Sully       |
| Allan       | McEwen      |
| Lindsey     | Smith       |
| Louise      | Doran       |
| Sarath      | Sewall      |
| Clara       | Vishney     |
| Danielle    | Greene      |
| Mattea      | Marvins     |
| David       | Lee         |
| Sundar      | Ande        |
| Amit        | Banda       |
| Lisa        | Ozer        |
| Harrison    | Bloom       |
| Tayler      | Fox         |
| William     | Smith       |
| Elizabeth   | Bates       |
| Sundita     | Kumar       |
| Ellen       | Abel        |
| Alyssa      | Hutton      |
| Jonathon    | Taylor      |
| Jack        | Livingston  |
| Kimberely   | Grant       |
| Charles     | Johnson     |
| Winston     | Taylor      |
| Jean        | Fleaur      |
| Martha      | Sullivan    |
| Girard      | Geoni       |
| Nandita     | Sarchand    |
| Alexis      | Bull        |
| Julia       | Dellinger   |
| Anthony     | Cabrio      |
| Kelly       | Chung       |
| Jennifer    | Dilly       |
| Timothy     | Gates       |
| Randall     | Perkins     |
| Sarah       | Bell        |
| Britney     | Everett     |
| Samuel      | McCain      |
| Vance       | Jones       |
| Alana       | Walsh       |
| Kevin       | Feeney      |
| Donald      | OConnell    |
| Douglas     | Grant       |
| Jennifer    | Whalen      |
| Pat         | Fay         |
| Susan       | Mavris      |
| Hermann     | Baer        |
| William     | Gietz       |
+-------------+-------------+
89 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT employee_id,first_name,last_name, (SELECT department_name FROM departments d WHERE e.department_id=d>department_id) department FROM employees e ORDER BY department; 
ERROR 1054 (42S22): Unknown column 'd' in 'where clause'
MariaDB [CSD2204S18]> SELECT employee_id,first_name,last_name, (SELECT department_name FROM department d WHERE e.department_id=d>department_id) department FROM employees e ORDER BY department; 
ERROR 1146 (42S02): Table 'csd2204s18.department' doesn't exist
MariaDB [CSD2204S18]> SELECT employee_id,first_name,last_name, (SELECT department_name FROM departments d WHERE e.department_id=d.department_id) department FROM employees e ORDER BY department; 
+-------------+-------------+-------------+------------------+
| employee_id | first_name  | last_name   | department       |
+-------------+-------------+-------------+------------------+
|         178 | Kimberely   | Grant       | NULL             |
|         205 | Shelley     | Higgins     | Accounting       |
|         206 | William     | Gietz       | Accounting       |
|         200 | Jennifer    | Whalen      | Administration   |
|         100 | Steven      | King        | Executive        |
|         102 | Lex         | De Haan     | Executive        |
|         101 | Neena       | Kochhar     | Executive        |
|         112 | Jose Manuel | Urman       | Finance          |
|         113 | Luis        | Popp        | Finance          |
|         111 | Ismael      | Sciarra     | Finance          |
|         110 | John        | Chen        | Finance          |
|         109 | Daniel      | Faviet      | Finance          |
|         108 | Nancy       | Greenberg   | Finance          |
|         203 | Susan       | Mavris      | Human Resources  |
|         103 | Alexander   | Hunold      | IT               |
|         104 | Bruce       | Ernst       | IT               |
|         105 | David       | Austin      | IT               |
|         107 | Diana       | Lorentz     | IT               |
|         106 | Valli       | Pataballa   | IT               |
|         202 | Pat         | Fay         | Marketing        |
|         201 | Michael     | Hartstein   | Marketing        |
|         204 | Hermann     | Baer        | Public Relations |
|         118 | Guy         | Himuro      | Purchasing       |
|         114 | Den         | Raphaely    | Purchasing       |
|         115 | Alexander   | Khoo        | Purchasing       |
|         116 | Shelli      | Baida       | Purchasing       |
|         117 | Sigal       | Tobias      | Purchasing       |
|         119 | Karen       | Colmenares  | Purchasing       |
|         163 | Danielle    | Greene      | Sales            |
|         162 | Clara       | Vishney     | Sales            |
|         161 | Sarath      | Sewall      | Sales            |
|         160 | Louise      | Doran       | Sales            |
|         159 | Lindsey     | Smith       | Sales            |
|         158 | Allan       | McEwen      | Sales            |
|         157 | Patrick     | Sully       | Sales            |
|         156 | Janette     | King        | Sales            |
|         155 | Oliver      | Tuvault     | Sales            |
|         154 | Nanette     | Cambrault   | Sales            |
|         153 | Christopher | Olsen       | Sales            |
|         164 | Mattea      | Marvins     | Sales            |
|         165 | David       | Lee         | Sales            |
|         167 | Amit        | Banda       | Sales            |
|         177 | Jack        | Livingston  | Sales            |
|         176 | Jonathon    | Taylor      | Sales            |
|         175 | Alyssa      | Hutton      | Sales            |
|         174 | Ellen       | Abel        | Sales            |
|         173 | Sundita     | Kumar       | Sales            |
|         172 | Elizabeth   | Bates       | Sales            |
|         171 | William     | Smith       | Sales            |
|         170 | Tayler      | Fox         | Sales            |
|         169 | Harrison    | Bloom       | Sales            |
|         168 | Lisa        | Ozer        | Sales            |
|         179 | Charles     | Johnson     | Sales            |
|         152 | Peter       | Hall        | Sales            |
|         145 | John        | Russell     | Sales            |
|         146 | Karen       | Partners    | Sales            |
|         147 | Alberto     | Errazuriz   | Sales            |
|         148 | Gerald      | Cambrault   | Sales            |
|         149 | Eleni       | Zlotkey     | Sales            |
|         150 | Peter       | Tucker      | Sales            |
|         151 | David       | Bernstein   | Sales            |
|         166 | Sundar      | Ande        | Sales            |
|         194 | Samuel      | McCain      | Shipping         |
|         193 | Britney     | Everett     | Shipping         |
|         192 | Sarah       | Bell        | Shipping         |
|         191 | Randall     | Perkins     | Shipping         |
|         190 | Timothy     | Gates       | Shipping         |
|         189 | Jennifer    | Dilly       | Shipping         |
|         188 | Kelly       | Chung       | Shipping         |
|         187 | Anthony     | Cabrio      | Shipping         |
|         186 | Julia       | Dellinger   | Shipping         |
|         195 | Vance       | Jones       | Shipping         |
|         196 | Alana       | Walsh       | Shipping         |
|         197 | Kevin       | Feeney      | Shipping         |
|         180 | Winston     | Taylor      | Shipping         |
|         120 | Matthew     | Weiss       | Shipping         |
|         121 | Adam        | Fripp       | Shipping         |
|         122 | Payam       | Kaufling    | Shipping         |
|         123 | Shanta      | Vollman     | Shipping         |
|         124 | Kevin       | Mourgos     | Shipping         |
|         125 | Julia       | Nayer       | Shipping         |
|         199 | Douglas     | Grant       | Shipping         |
|         198 | Donald      | OConnell    | Shipping         |
|         185 | Alexis      | Bull        | Shipping         |
|         184 | Nandita     | Sarchand    | Shipping         |
|         183 | Girard      | Geoni       | Shipping         |
|         135 | Ki          | Gee         | Shipping         |
|         136 | Hazel       | Philtanker  | Shipping         |
|         137 | Renske      | Ladwig      | Shipping         |
|         138 | Stephen     | Stiles      | Shipping         |
|         139 | John        | Seo         | Shipping         |
|         140 | Joshua      | Patel       | Shipping         |
|         141 | Trenna      | Rajs        | Shipping         |
|         142 | Curtis      | Davies      | Shipping         |
|         143 | Randall     | Matos       | Shipping         |
|         134 | Michael     | Rogers      | Shipping         |
|         133 | Jason       | Mallin      | Shipping         |
|         182 | Martha      | Sullivan    | Shipping         |
|         181 | Jean        | Fleaur      | Shipping         |
|         126 | Irene       | Mikkilineni | Shipping         |
|         127 | James       | Landry      | Shipping         |
|         128 | Steven      | Markle      | Shipping         |
|         129 | Laura       | Bissot      | Shipping         |
|         130 | Mozhe       | Atkinson    | Shipping         |
|         131 | James       | Marlow      | Shipping         |
|         132 | TJ          | Olson       | Shipping         |
|         144 | Peter       | Vargas      | Shipping         |
+-------------+-------------+-------------+------------------+
107 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT employee_id,first_name,last_name, (SELECT department_name FROM departments d WHERE e.department_id=d.department_id) "department name"  FROM employees e ORDER BY department; 
ERROR 1054 (42S22): Unknown column 'department' in 'order clause'
MariaDB [CSD2204S18]> SELECT employee_id,first_name,last_name, (SELECT department_name FROM departments d WHERE e.department_id=d.department_id) "department name"  FROM employees; 
ERROR 1054 (42S22): Unknown column 'e.department_id' in 'where clause'
MariaDB [CSD2204S18]> SELECT employee_id,first_name,last_name from employees AS A WHERE salary>(SELECT AVG(salary) FROM employees WHERE department_id=A.department_id); 
+-------------+------------+-----------+
| employee_id | first_name | last_name |
+-------------+------------+-----------+
|         100 | Steven     | King      |
|         103 | Alexander  | Hunold    |
|         104 | Bruce      | Ernst     |
|         108 | Nancy      | Greenberg |
|         109 | Daniel     | Faviet    |
|         114 | Den        | Raphaely  |
|         120 | Matthew    | Weiss     |
|         121 | Adam       | Fripp     |
|         122 | Payam      | Kaufling  |
|         123 | Shanta     | Vollman   |
|         124 | Kevin      | Mourgos   |
|         137 | Renske     | Ladwig    |
|         141 | Trenna     | Rajs      |
|         145 | John       | Russell   |
|         146 | Karen      | Partners  |
|         147 | Alberto    | Errazuriz |
|         148 | Gerald     | Cambrault |
|         149 | Eleni      | Zlotkey   |
|         150 | Peter      | Tucker    |
|         151 | David      | Bernstein |
|         152 | Peter      | Hall      |
|         156 | Janette    | King      |
|         157 | Patrick    | Sully     |
|         158 | Allan      | McEwen    |
|         162 | Clara      | Vishney   |
|         163 | Danielle   | Greene    |
|         168 | Lisa       | Ozer      |
|         169 | Harrison   | Bloom     |
|         170 | Tayler     | Fox       |
|         174 | Ellen      | Abel      |
|         184 | Nandita    | Sarchand  |
|         185 | Alexis     | Bull      |
|         188 | Kelly      | Chung     |
|         189 | Jennifer   | Dilly     |
|         192 | Sarah      | Bell      |
|         193 | Britney    | Everett   |
|         201 | Michael    | Hartstein |
|         205 | Shelley    | Higgins   |
+-------------+------------+-----------+
38 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT employee_id,first_name,last_name,salary from employees AS A WHERE salary>(SELECT AVG(salary) FROM employees WHERE department_id=A.department_id); 
+-------------+------------+-----------+----------+
| employee_id | first_name | last_name | salary   |
+-------------+------------+-----------+----------+
|         100 | Steven     | King      | 24000.00 |
|         103 | Alexander  | Hunold    |  9000.00 |
|         104 | Bruce      | Ernst     |  6000.00 |
|         108 | Nancy      | Greenberg | 12000.00 |
|         109 | Daniel     | Faviet    |  9000.00 |
|         114 | Den        | Raphaely  | 11000.00 |
|         120 | Matthew    | Weiss     |  8000.00 |
|         121 | Adam       | Fripp     |  8200.00 |
|         122 | Payam      | Kaufling  |  7900.00 |
|         123 | Shanta     | Vollman   |  6500.00 |
|         124 | Kevin      | Mourgos   |  5800.00 |
|         137 | Renske     | Ladwig    |  3600.00 |
|         141 | Trenna     | Rajs      |  3500.00 |
|         145 | John       | Russell   | 14000.00 |
|         146 | Karen      | Partners  | 13500.00 |
|         147 | Alberto    | Errazuriz | 12000.00 |
|         148 | Gerald     | Cambrault | 11000.00 |
|         149 | Eleni      | Zlotkey   | 10500.00 |
|         150 | Peter      | Tucker    | 10000.00 |
|         151 | David      | Bernstein |  9500.00 |
|         152 | Peter      | Hall      |  9000.00 |
|         156 | Janette    | King      | 10000.00 |
|         157 | Patrick    | Sully     |  9500.00 |
|         158 | Allan      | McEwen    |  9000.00 |
|         162 | Clara      | Vishney   | 10500.00 |
|         163 | Danielle   | Greene    |  9500.00 |
|         168 | Lisa       | Ozer      | 11500.00 |
|         169 | Harrison   | Bloom     | 10000.00 |
|         170 | Tayler     | Fox       |  9600.00 |
|         174 | Ellen      | Abel      | 11000.00 |
|         184 | Nandita    | Sarchand  |  4200.00 |
|         185 | Alexis     | Bull      |  4100.00 |
|         188 | Kelly      | Chung     |  3800.00 |
|         189 | Jennifer   | Dilly     |  3600.00 |
|         192 | Sarah      | Bell      |  4000.00 |
|         193 | Britney    | Everett   |  3900.00 |
|         201 | Michael    | Hartstein | 13000.00 |
|         205 | Shelley    | Higgins   | 12000.00 |
+-------------+------------+-----------+----------+
38 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT employee_id,first_name,last_name,salary from employees AS A WHERE salary>(SELECT AVG(salary) FROM employees GROUP BY department_id HAVING department_id=A.department_id); 
+-------------+------------+-----------+----------+
| employee_id | first_name | last_name | salary   |
+-------------+------------+-----------+----------+
|         100 | Steven     | King      | 24000.00 |
|         103 | Alexander  | Hunold    |  9000.00 |
|         104 | Bruce      | Ernst     |  6000.00 |
|         108 | Nancy      | Greenberg | 12000.00 |
|         109 | Daniel     | Faviet    |  9000.00 |
|         114 | Den        | Raphaely  | 11000.00 |
|         120 | Matthew    | Weiss     |  8000.00 |
|         121 | Adam       | Fripp     |  8200.00 |
|         122 | Payam      | Kaufling  |  7900.00 |
|         123 | Shanta     | Vollman   |  6500.00 |
|         124 | Kevin      | Mourgos   |  5800.00 |
|         137 | Renske     | Ladwig    |  3600.00 |
|         141 | Trenna     | Rajs      |  3500.00 |
|         145 | John       | Russell   | 14000.00 |
|         146 | Karen      | Partners  | 13500.00 |
|         147 | Alberto    | Errazuriz | 12000.00 |
|         148 | Gerald     | Cambrault | 11000.00 |
|         149 | Eleni      | Zlotkey   | 10500.00 |
|         150 | Peter      | Tucker    | 10000.00 |
|         151 | David      | Bernstein |  9500.00 |
|         152 | Peter      | Hall      |  9000.00 |
|         156 | Janette    | King      | 10000.00 |
|         157 | Patrick    | Sully     |  9500.00 |
|         158 | Allan      | McEwen    |  9000.00 |
|         162 | Clara      | Vishney   | 10500.00 |
|         163 | Danielle   | Greene    |  9500.00 |
|         168 | Lisa       | Ozer      | 11500.00 |
|         169 | Harrison   | Bloom     | 10000.00 |
|         170 | Tayler     | Fox       |  9600.00 |
|         174 | Ellen      | Abel      | 11000.00 |
|         184 | Nandita    | Sarchand  |  4200.00 |
|         185 | Alexis     | Bull      |  4100.00 |
|         188 | Kelly      | Chung     |  3800.00 |
|         189 | Jennifer   | Dilly     |  3600.00 |
|         192 | Sarah      | Bell      |  4000.00 |
|         193 | Britney    | Everett   |  3900.00 |
|         201 | Michael    | Hartstein | 13000.00 |
|         205 | Shelley    | Higgins   | 12000.00 |
+-------------+------------+-----------+----------+
38 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT AVG(SALARY),DEPARTMENT_ID FROM EMPLOYEES GROUP BY DEPARTMENT_ID;
+--------------+---------------+
| AVG(SALARY)  | DEPARTMENT_ID |
+--------------+---------------+
|  7000.000000 |             0 |
|  4400.000000 |            10 |
|  9500.000000 |            20 |
|  4150.000000 |            30 |
|  6500.000000 |            40 |
|  3475.555556 |            50 |
|  5760.000000 |            60 |
| 10000.000000 |            70 |
|  8955.882353 |            80 |
| 19333.333333 |            90 |
|  8600.000000 |           100 |
| 10150.000000 |           110 |
+--------------+---------------+
12 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT employee_id,first_name,last_name,salary from employees E WHERE salary>(SELECT AVG(salary) FROM employees GROUP BY department_id HAVING department_id=A.department_id); 
ERROR 1054 (42S22): Unknown column 'A.department_id' in 'having clause'
MariaDB [CSD2204S18]> SELECT employee_id,first_name,last_name,salary from employees E WHERE salary>(SELECT AVG(salary) FROM employees GROUP BY department_id HAVING department_id=E.department_id); 
+-------------+------------+-----------+----------+
| employee_id | first_name | last_name | salary   |
+-------------+------------+-----------+----------+
|         100 | Steven     | King      | 24000.00 |
|         103 | Alexander  | Hunold    |  9000.00 |
|         104 | Bruce      | Ernst     |  6000.00 |
|         108 | Nancy      | Greenberg | 12000.00 |
|         109 | Daniel     | Faviet    |  9000.00 |
|         114 | Den        | Raphaely  | 11000.00 |
|         120 | Matthew    | Weiss     |  8000.00 |
|         121 | Adam       | Fripp     |  8200.00 |
|         122 | Payam      | Kaufling  |  7900.00 |
|         123 | Shanta     | Vollman   |  6500.00 |
|         124 | Kevin      | Mourgos   |  5800.00 |
|         137 | Renske     | Ladwig    |  3600.00 |
|         141 | Trenna     | Rajs      |  3500.00 |
|         145 | John       | Russell   | 14000.00 |
|         146 | Karen      | Partners  | 13500.00 |
|         147 | Alberto    | Errazuriz | 12000.00 |
|         148 | Gerald     | Cambrault | 11000.00 |
|         149 | Eleni      | Zlotkey   | 10500.00 |
|         150 | Peter      | Tucker    | 10000.00 |
|         151 | David      | Bernstein |  9500.00 |
|         152 | Peter      | Hall      |  9000.00 |
|         156 | Janette    | King      | 10000.00 |
|         157 | Patrick    | Sully     |  9500.00 |
|         158 | Allan      | McEwen    |  9000.00 |
|         162 | Clara      | Vishney   | 10500.00 |
|         163 | Danielle   | Greene    |  9500.00 |
|         168 | Lisa       | Ozer      | 11500.00 |
|         169 | Harrison   | Bloom     | 10000.00 |
|         170 | Tayler     | Fox       |  9600.00 |
|         174 | Ellen      | Abel      | 11000.00 |
|         184 | Nandita    | Sarchand  |  4200.00 |
|         185 | Alexis     | Bull      |  4100.00 |
|         188 | Kelly      | Chung     |  3800.00 |
|         189 | Jennifer   | Dilly     |  3600.00 |
|         192 | Sarah      | Bell      |  4000.00 |
|         193 | Britney    | Everett   |  3900.00 |
|         201 | Michael    | Hartstein | 13000.00 |
|         205 | Shelley    | Higgins   | 12000.00 |
+-------------+------------+-----------+----------+
38 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT (salary) FROM employees e1 WHERE 5=(SELECT COUNT(DISTINCT salary)FROM employees e2 WHERE e2.salary>=e1.salary);
+----------+
| salary   |
+----------+
| 13000.00 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT (salary) FROM employees e1 WHERE 5=(SELECT COUNT(DISTINCT (salary))FROM employees e2 WHERE e2.salary>=e1.salary);
+----------+
| salary   |
+----------+
| 13000.00 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT (salary) FROM employees e1 WHERE 3=(SELECT COUNT(DISTINCT salary)FROM employees e2 WHERE e2.salary<=e1.salary);
+---------+
| salary  |
+---------+
| 2400.00 |
+---------+
1 row in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT *FROM (SELECT * FROM employees ORDER BY employee_id DESC LIMIT 10)e1 ORDER BY employee_id ASC;
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
|         197 | Kevin      | Feeney    | KFEENEY  | 650.507.9822 | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         198 | Donald     | OConnell  | DOCONNEL | 650.507.9833 | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         199 | Douglas    | Grant     | DGRANT   | 650.507.9844 | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         200 | Jennifer   | Whalen    | JWHALEN  | 515.123.4444 | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         201 | Michael    | Hartstein | MHARTSTE | 515.123.5555 | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         202 | Pat        | Fay       | PFAY     | 603.123.6666 | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         203 | Susan      | Mavris    | SMAVRIS  | 515.123.7777 | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         204 | Hermann    | Baer      | HBAER    | 515.123.8888 | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         205 | Shelley    | Higgins   | SHIGGINS | 515.123.8080 | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         206 | William    | Gietz     | WGIETZ   | 515.123.8181 | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT(department_id) FROM Employees;
+---------------+
| department_id |
+---------------+
|             0 |
|            10 |
|            20 |
|            30 |
|            40 |
|            50 |
|            60 |
|            70 |
|            80 |
|            90 |
|           100 |
|           110 |
+---------------+
12 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select department_id, department_name FROM departrments WHERE department_id NOT IN (SELECT DISTINCT(department_id) FROM Employees);
ERROR 1146 (42S02): Table 'csd2204s18.departrments' doesn't exist
MariaDB [CSD2204S18]> select department_id, department_name FROM departments WHERE department_id NOT IN (SELECT DISTINCT(department_id) FROM Employees);
+---------------+----------------------+
| department_id | department_name      |
+---------------+----------------------+
|           120 | Treasury             |
|           130 | Corporate Tax        |
|           140 | Control And Credit   |
|           150 | Shareholder Services |
|           160 | Benefits             |
|           170 | Manufacturing        |
|           180 | Construction         |
|           190 | Contracting          |
|           200 | Operations           |
|           210 | IT Support           |
|           220 | NOC                  |
|           230 | IT Helpdesk          |
|           240 | Government Sales     |
|           250 | Retail Sales         |
|           260 | Recruiting           |
|           270 | Payroll              |
+---------------+----------------------+
16 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT salary from employees ORDER BY salary DESC;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 17000.00 |
| 14000.00 |
| 13500.00 |
| 13000.00 |
| 12000.00 |
| 12000.00 |
| 12000.00 |
| 11500.00 |
| 11000.00 |
| 11000.00 |
| 11000.00 |
| 10500.00 |
| 10500.00 |
| 10000.00 |
| 10000.00 |
| 10000.00 |
| 10000.00 |
|  9600.00 |
|  9500.00 |
|  9500.00 |
|  9500.00 |
|  9000.00 |
|  9000.00 |
|  9000.00 |
|  9000.00 |
|  8800.00 |
|  8600.00 |
|  8400.00 |
|  8300.00 |
|  8200.00 |
|  8200.00 |
|  8000.00 |
|  8000.00 |
|  8000.00 |
|  7900.00 |
|  7800.00 |
|  7700.00 |
|  7500.00 |
|  7500.00 |
|  7400.00 |
|  7300.00 |
|  7200.00 |
|  7000.00 |
|  7000.00 |
|  7000.00 |
|  6900.00 |
|  6800.00 |
|  6500.00 |
|  6500.00 |
|  6400.00 |
|  6200.00 |
|  6200.00 |
|  6100.00 |
|  6000.00 |
|  6000.00 |
|  5800.00 |
|  4800.00 |
|  4800.00 |
|  4400.00 |
|  4200.00 |
|  4200.00 |
|  4100.00 |
|  4000.00 |
|  3900.00 |
|  3800.00 |
|  3600.00 |
|  3600.00 |
|  3500.00 |
|  3400.00 |
|  3300.00 |
|  3300.00 |
|  3200.00 |
|  3200.00 |
|  3200.00 |
|  3200.00 |
|  3100.00 |
|  3100.00 |
|  3100.00 |
|  3100.00 |
|  3000.00 |
|  3000.00 |
|  2900.00 |
|  2900.00 |
|  2900.00 |
|  2800.00 |
|  2800.00 |
|  2800.00 |
|  2800.00 |
|  2700.00 |
|  2700.00 |
|  2600.00 |
|  2600.00 |
|  2600.00 |
|  2600.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2400.00 |
|  2400.00 |
|  2200.00 |
|  2200.00 |
|  2100.00 |
+----------+
107 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT(salary) from employees ORDER BY salary DESC;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 14000.00 |
| 13500.00 |
| 13000.00 |
| 12000.00 |
| 11500.00 |
| 11000.00 |
| 10500.00 |
| 10000.00 |
|  9600.00 |
|  9500.00 |
|  9000.00 |
|  8800.00 |
|  8600.00 |
|  8400.00 |
|  8300.00 |
|  8200.00 |
|  8000.00 |
|  7900.00 |
|  7800.00 |
|  7700.00 |
|  7500.00 |
|  7400.00 |
|  7300.00 |
|  7200.00 |
|  7000.00 |
|  6900.00 |
|  6800.00 |
|  6500.00 |
|  6400.00 |
|  6200.00 |
|  6100.00 |
|  6000.00 |
|  5800.00 |
|  4800.00 |
|  4400.00 |
|  4200.00 |
|  4100.00 |
|  4000.00 |
|  3900.00 |
|  3800.00 |
|  3600.00 |
|  3500.00 |
|  3400.00 |
|  3300.00 |
|  3200.00 |
|  3100.00 |
|  3000.00 |
|  2900.00 |
|  2800.00 |
|  2700.00 |
|  2600.00 |
|  2500.00 |
|  2400.00 |
|  2200.00 |
|  2100.00 |
+----------+
57 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT(salary) from employees ORDER BY salary DESC LIMIT 3;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 14000.00 |
+----------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> EXIT;
