FOR DATABASE CREATION
CREATE DATABASE xyz;

SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| new_try            |
| newformation       |
| performance_schema |
| phpmyadmin         |
| test               |
| xyz                |
+--------------------+

USE newformation;
Database changed

SHOW TABLES; //after creation of persons table by query.
+------------------------+
| Tables_in_newformation |
+------------------------+
| persons                |
+------------------------+

CREATE TABLE persons(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(15) NOT NULL,
	city VARCHAR(20) NOT NULL,
	pincode INT NOT NULL,
	PRIMARY KEY(id)
);
Query OK, 0 rows affected (0.02 sec)

DESC persons;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| id      | int(11)     | NO   | PRI | NULL    | auto_increment |
| name    | varchar(15) | NO   |     | NULL    |                |
| city    | varchar(20) | NO   |     | NULL    |                |
| pincode | int(11)     | NO   |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

INSERT INTO persons(name,city,pincode) VALUES(
    "MK",'mira road',401108
);
Query OK, 1 row affected (0.00 sec)

INSERT INTO persons(name,city,pincode) VALUES(
    "Mayur Kadam","Bhayander",401107
);
Query OK, 1 row affected (0.00 sec)

SELECT * FROM persons;
+----+-------------+-----------+---------+
| id | name        | city      | pincode |
+----+-------------+-----------+---------+
|  1 | MK          | mira road |  401108 |
|  2 | Mayur Kadam | Bhayander |  401107 |
+----+-------------+-----------+---------+
2 rows in set (0.00 sec)

DROP TABLE persons;
Query OK, 0 rows affected (0.01 sec)


<---------------------------- gangulytech.sql -------------------------------->

show databases;
+--------------------+
| Database           |
+--------------------+
| gangulytech        |
| information_schema |
| mysql              |
| new_try            |
| newformation       |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
8 rows in set (0.02 sec)

use gangulytech;
Database changed

show tables;
+-----------------------+
| Tables_in_gangulytech |
+-----------------------+
| courses               |
| enrolls               |
| marks                 |
| students              |
+-----------------------+
4 rows in set (0.00 sec)

select * from marks;
+----+-------------------------------+-------+-----+
| id | course_name                   | score | sid |
+----+-------------------------------+-------+-----+
|  1 | AI In Real World Using Python |    14 |  38 |
|  2 | AI In Real World Using Python |    99 |  51 |
|  3 | GIMP Photo Editing            |    51 |  29 |
|  4 | SQLite Tutorial               |    57 |  13 |
|  5 | Swing GUI In Depth            |    31 |  34 |
|  6 | CSS3                          |    83 |  36 |
|  7 | Codeigniter                   |    22 |  39 |
|  8 | 2D Games Using PyGame         |    60 |  37 |
|  9 | Data Structure In Depth       |    31 |  32 |
| 10 | Amazon Cloud AWS              |    76 |  12 |
| 11 | Amazon Cloud AWS              |    86 |  27 |
| 12 | Computer Networks             |     2 |  34 |
| 13 | Swing GUI In Depth            |    52 |   1 |
| 14 | Dynamic Website Development   |    52 |   3 |
| 15 | CakePHP                       |     2 |  27 |
| 16 | Natural Language Processing   |    55 |   6 |
| 17 | HTML                          |    68 |   6 |
| 18 | Computer Vision Using Python  |    72 |  47 |
| 19 | Computer Vision Using Python  |    58 |  24 |
| 20 | Data Structure In Depth       |    70 |  14 |
| 21 | Kali Linux                    |    76 |  18 |
| 22 | Java Complete Tutorial        |    67 |  32 |
| 23 | Java Database Connectivity    |     8 |  25 |
| 24 | The C Ninja                   |    39 |  10 |
| 25 | SQLite Tutorial               |    69 |  60 |
+----+-------------------------------+-------+-----+
25 rows in set (0.01 sec)


select * from marks limit 5;
+----+-------------------------------+-------+-----+
| id | course_name                   | score | sid |
+----+-------------------------------+-------+-----+
|  1 | AI In Real World Using Python |    14 |  38 |
|  2 | AI In Real World Using Python |    99 |  51 |
|  3 | GIMP Photo Editing            |    51 |  29 |
|  4 | SQLite Tutorial               |    57 |  13 |
|  5 | Swing GUI In Depth            |    31 |  34 |
+----+-------------------------------+-------+-----+
5 rows in set (0.00 sec)

select * from marks limit 9, 5;
+----+-----------------------------+-------+-----+
| id | course_name                 | score | sid |
+----+-----------------------------+-------+-----+
| 10 | Amazon Cloud AWS            |    76 |  12 |
| 11 | Amazon Cloud AWS            |    86 |  27 |
| 12 | Computer Networks           |     2 |  34 |
| 13 | Swing GUI In Depth          |    52 |   1 |
| 14 | Dynamic Website Development |    52 |   3 |
+----+-----------------------------+-------+-----+
5 rows in set (0.00 sec)

select distinct course_name from marks;
+-------------------------------+
| course_name                   |
+-------------------------------+
| AI In Real World Using Python |
| GIMP Photo Editing            |
| SQLite Tutorial               |
| Swing GUI In Depth            |
| CSS3                          |
| Codeigniter                   |
| 2D Games Using PyGame         |
| Data Structure In Depth       |
| Amazon Cloud AWS              |
| Computer Networks             |
| Dynamic Website Development   |
| CakePHP                       |
| Natural Language Processing   |
| HTML                          |
| Computer Vision Using Python  |
| Kali Linux                    |
| Java Complete Tutorial        |
| Java Database Connectivity    |
| The C Ninja                   |
+-------------------------------+
19 rows in set (0.00 sec)

select * from students;
+----+----------------------+------------+-------+---------+
| id | name                 | city       | state | pincode |
+----+----------------------+------------+-------+---------+
|  1 | sandeep ganguly      | kanpur     | UP    |  601988 |
|  2 | piyush chandel       | nainital   | UK    |  549386 |
|  3 | divyanshu shukla     | kanpur     | UP    |  940965 |
|  4 | ankita               | kanpur     | UP    |   56669 |
|  5 | brijesh gupta        | gorakhpur  | UP    |  460450 |
|  6 | siddhartha singh     | kanpur     | UP    |  132244 |
|  7 | parvez hasan         | faizabad   | UP    |  279869 |
|  8 | pawan kumar          | banglore   | KA    |    2612 |
|  9 | umesh verma          | kolkata    | WB    |  173453 |
| 10 | ayushi sharma        | jammu      | JK    |  859431 |
| 11 | shameem beg          | mumbai     | MH    |  776793 |
| 12 | Arun Bhatia          | pune       | MH    |  305673 |
| 13 | shiv patel           | surat      | GJ    |  197988 |
| 14 | aman ali             | ajmer      | RJ    |   72920 |
| 15 | varsha singh         | mathura    | UP    |  770636 |
| 16 | deepak yadav         | gurugram   | HR    |  634419 |
| 17 | manjul saini         | dhanbad    | JH    |  860186 |
| 18 | Ankur sharma         | ranchi     | JH    |  397676 |
| 19 | saurabh gupta        | ahemdabad  | GJ    |  407819 |
| 20 | soumya pandey        | srinagar   | JK    |  846069 |
| 21 | digvijay patel       | jamnagar   | GJ    |    6887 |
| 22 | shivani singh        | faridabad  | HR    |  496229 |
| 23 | sarvik roy           | purulia    | WB    |  460485 |
| 24 | mamta banerjee       | kolkata    | WB    |  813736 |
| 25 | dolly ganguly        | howrah     | WB    |  687224 |
| 26 | shubhojeet mukherjee | birbhum    | WB    |  994915 |
| 27 | shubham das          | jhargram   | WB    |  912900 |
| 28 | tapas paul           | bankura    | WB    |  579758 |
| 29 | sbhubendu sarkar     | kolkatta   | WB    |  160089 |
| 30 | kaveri bose          | howrah     | WB    |   61170 |
| 31 | mitali chatterjee    | kolkata    | WB    |  825583 |
| 32 | rupoma biswas        | howrah     | WB    |  944403 |
| 33 | sujeet ghara         | howrah     | WB    |  245270 |
| 34 | shweta ghara         | kolkata    | WB    |  393138 |
| 35 | nita ganguly         | kolkata    | WB    |  229879 |
| 36 | sumita ganguly       | kolkata    | WB    |  969984 |
| 37 | sumit thakrey        | mumbai     | MH    |  160281 |
| 38 | nana patekar         | mumbai     | MH    |  891455 |
| 39 | nitin gadkari        | nagpur     | MH    |  976432 |
| 40 | dharmesh pradhan     | latur      | MH    |  207796 |
| 41 | rahul gautam         | ballia     | UP    |  109681 |
| 42 | nishi siddiqi        | moradabad  | UP    |  925020 |
| 43 | disha chandok        | ludhiana   | PB    |  296055 |
| 44 | jimmy gill           | chandigarh | PB    |  705216 |
| 45 | deepak sharma        | gurdaspur  | PB    |  637914 |
| 46 | ankur bagga          | chandigarh | PB    |   73924 |
| 47 | asif sheikh          | kulgam     | JK    |  455876 |
| 48 | shahibe alam         | anantnag   | JK    |   57610 |
| 49 | guddu thomas         | imphal     | MN    |  920423 |
| 50 | pradeep gurung       | chandel    | MN    |  429282 |
| 51 | sujeet thapa         | bishnupur  | MN    |  385144 |
| 52 | shankey ale          | imphal     | MN    |  637873 |
| 53 | iti saxena           | nagpur     | MH    |   33934 |
| 54 | chitra chak          | latur      | MH    |  256051 |
| 55 | rinki pal            | jaipur     | RJ    |  178453 |
| 56 | poornima sahay       | pune       | MH    |  124112 |
| 57 | kishan bajpai        | banglore   | KA    |   85200 |
| 58 | sonia dwivedi        | bokaro     | JH    |   53664 |
| 59 | sanjay shukla        | ambala     | HR    |   12721 |
| 60 | sudhir chaudhary     | kutch      | GJ    |  902611 |
+----+----------------------+------------+-------+---------+
60 rows in set (0.01 sec)

select distinct state from students;
+-------+
| state |
+-------+
| UP    |
| UK    |
| KA    |
| WB    |
| JK    |
| MH    |
| GJ    |
| RJ    |
| HR    |
| JH    |
| PB    |
| MN    |
+-------+

select * from marks where score >= 22;
+----+-------------------------------+-------+-----+
| id | course_name                   | score | sid |
+----+-------------------------------+-------+-----+
|  2 | AI In Real World Using Python |    99 |  51 |
|  3 | GIMP Photo Editing            |    51 |  29 |
|  4 | SQLite Tutorial               |    57 |  13 |
|  5 | Swing GUI In Depth            |    31 |  34 |
|  6 | CSS3                          |    83 |  36 |
|  7 | Codeigniter                   |    22 |  39 |
|  8 | 2D Games Using PyGame         |    60 |  37 |
|  9 | Data Structure In Depth       |    31 |  32 |
| 10 | Amazon Cloud AWS              |    76 |  12 |
| 11 | Amazon Cloud AWS              |    86 |  27 |
| 13 | Swing GUI In Depth            |    52 |   1 |
| 14 | Dynamic Website Development   |    52 |   3 |
| 16 | Natural Language Processing   |    55 |   6 |
| 17 | HTML                          |    68 |   6 |
| 18 | Computer Vision Using Python  |    72 |  47 |
| 19 | Computer Vision Using Python  |    58 |  24 |
| 20 | Data Structure In Depth       |    70 |  14 |
| 21 | Kali Linux                    |    76 |  18 |
| 22 | Java Complete Tutorial        |    67 |  32 |
| 24 | The C Ninja                   |    39 |  10 |
| 25 | SQLite Tutorial               |    69 |  60 |
+----+-------------------------------+-------+-----+
21 rows in set (0.00 sec)

 select * from students where state = "UP"; //Note == not work in the sql 
+----+------------------+-----------+-------+---------+
| id | name             | city      | state | pincode |
+----+------------------+-----------+-------+---------+
|  1 | sandeep ganguly  | kanpur    | UP    |  601988 |
|  3 | divyanshu shukla | kanpur    | UP    |  940965 |
|  4 | ankita           | kanpur    | UP    |   56669 |
|  5 | brijesh gupta    | gorakhpur | UP    |  460450 |
|  6 | siddhartha singh | kanpur    | UP    |  132244 |
|  7 | parvez hasan     | faizabad  | UP    |  279869 |
| 15 | varsha singh     | mathura   | UP    |  770636 |
| 41 | rahul gautam     | ballia    | UP    |  109681 |
| 42 | nishi siddiqi    | moradabad | UP    |  925020 |
+----+------------------+-----------+-------+---------+
9 rows in set (0.00 sec)

select * from students where id >= 10 && id <= 15;
+----+---------------+---------+-------+---------+
| id | name          | city    | state | pincode |
+----+---------------+---------+-------+---------+
| 10 | ayushi sharma | jammu   | JK    |  859431 |
| 11 | shameem beg   | mumbai  | MH    |  776793 |
| 12 | Arun Bhatia   | pune    | MH    |  305673 |
| 13 | shiv patel    | surat   | GJ    |  197988 |
| 14 | aman ali      | ajmer   | RJ    |   72920 |
| 15 | varsha singh  | mathura | UP    |  770636 |
+----+---------------+---------+-------+---------+
6 rows in set (0.00 sec)

select * from students where state != "UP";
+----+----------------------+------------+-------+---------+
| id | name                 | city       | state | pincode |
+----+----------------------+------------+-------+---------+
|  2 | piyush chandel       | nainital   | UK    |  549386 |
|  8 | pawan kumar          | banglore   | KA    |    2612 |
|  9 | umesh verma          | kolkata    | WB    |  173453 |
| 10 | ayushi sharma        | jammu      | JK    |  859431 |
| 11 | shameem beg          | mumbai     | MH    |  776793 |
| 12 | Arun Bhatia          | pune       | MH    |  305673 |
| 13 | shiv patel           | surat      | GJ    |  197988 |
| 14 | aman ali             | ajmer      | RJ    |   72920 |
| 16 | deepak yadav         | gurugram   | HR    |  634419 |
| 17 | manjul saini         | dhanbad    | JH    |  860186 |
| 18 | Ankur sharma         | ranchi     | JH    |  397676 |
| 19 | saurabh gupta        | ahemdabad  | GJ    |  407819 |
| 20 | soumya pandey        | srinagar   | JK    |  846069 |
| 21 | digvijay patel       | jamnagar   | GJ    |    6887 |
| 22 | shivani singh        | faridabad  | HR    |  496229 |
| 23 | sarvik roy           | purulia    | WB    |  460485 |
| 24 | mamta banerjee       | kolkata    | WB    |  813736 |
| 25 | dolly ganguly        | howrah     | WB    |  687224 |
| 26 | shubhojeet mukherjee | birbhum    | WB    |  994915 |
| 27 | shubham das          | jhargram   | WB    |  912900 |
| 28 | tapas paul           | bankura    | WB    |  579758 |
| 29 | sbhubendu sarkar     | kolkatta   | WB    |  160089 |
| 30 | kaveri bose          | howrah     | WB    |   61170 |
| 31 | mitali chatterjee    | kolkata    | WB    |  825583 |
| 32 | rupoma biswas        | howrah     | WB    |  944403 |
| 33 | sujeet ghara         | howrah     | WB    |  245270 |
| 34 | shweta ghara         | kolkata    | WB    |  393138 |
| 35 | nita ganguly         | kolkata    | WB    |  229879 |
| 36 | sumita ganguly       | kolkata    | WB    |  969984 |
| 37 | sumit thakrey        | mumbai     | MH    |  160281 |
| 38 | nana patekar         | mumbai     | MH    |  891455 |
| 39 | nitin gadkari        | nagpur     | MH    |  976432 |
| 40 | dharmesh pradhan     | latur      | MH    |  207796 |
| 43 | disha chandok        | ludhiana   | PB    |  296055 |
| 44 | jimmy gill           | chandigarh | PB    |  705216 |
| 45 | deepak sharma        | gurdaspur  | PB    |  637914 |
| 46 | ankur bagga          | chandigarh | PB    |   73924 |
| 47 | asif sheikh          | kulgam     | JK    |  455876 |
| 48 | shahibe alam         | anantnag   | JK    |   57610 |
| 49 | guddu thomas         | imphal     | MN    |  920423 |
| 50 | pradeep gurung       | chandel    | MN    |  429282 |
| 51 | sujeet thapa         | bishnupur  | MN    |  385144 |
| 52 | shankey ale          | imphal     | MN    |  637873 |
| 53 | iti saxena           | nagpur     | MH    |   33934 |
| 54 | chitra chak          | latur      | MH    |  256051 |
| 55 | rinki pal            | jaipur     | RJ    |  178453 |
| 56 | poornima sahay       | pune       | MH    |  124112 |
| 57 | kishan bajpai        | banglore   | KA    |   85200 |
| 58 | sonia dwivedi        | bokaro     | JH    |   53664 |
| 59 | sanjay shukla        | ambala     | HR    |   12721 |
| 60 | sudhir chaudhary     | kutch      | GJ    |  902611 |
+----+----------------------+------------+-------+---------+
51 rows in set (0.00 sec)

select * from students where state = "MN" && city = 'imphal';
+----+--------------+--------+-------+---------+
| id | name         | city   | state | pincode |
+----+--------------+--------+-------+---------+
| 49 | guddu thomas | imphal | MN    |  920423 |
| 52 | shankey ale  | imphal | MN    |  637873 |
+----+--------------+--------+-------+---------+
2 rows in set (0.00 sec)

select * from students where state = "MN" || city = 'imphal';
+----+----------------+-----------+-------+---------+
| id | name           | city      | state | pincode |
+----+----------------+-----------+-------+---------+
| 49 | guddu thomas   | imphal    | MN    |  920423 |
| 50 | pradeep gurung | chandel   | MN    |  429282 |
| 51 | sujeet thapa   | bishnupur | MN    |  385144 |
| 52 | shankey ale    | imphal    | MN    |  637873 |
+----+----------------+-----------+-------+---------+
4 rows in set (0.00 sec)

select * from students where state = "MN" and city = 'imphal';
+----+--------------+--------+-------+---------+
| id | name         | city   | state | pincode |
+----+--------------+--------+-------+---------+
| 49 | guddu thomas | imphal | MN    |  920423 |
| 52 | shankey ale  | imphal | MN    |  637873 |
+----+--------------+--------+-------+---------+
2 rows in set (0.00 sec)

select * from students where state = "MN" OR city = 'imphal';
+----+----------------+-----------+-------+---------+
| id | name           | city      | state | pincode |
+----+----------------+-----------+-------+---------+
| 49 | guddu thomas   | imphal    | MN    |  920423 |
| 50 | pradeep gurung | chandel   | MN    |  429282 |
| 51 | sujeet thapa   | bishnupur | MN    |  385144 |
| 52 | shankey ale    | imphal    | MN    |  637873 |
+----+----------------+-----------+-------+---------+
4 rows in set (0.00 sec)

SELECT * FROM students WHERE NOT city = 'kanpur';
+----+----------------------+------------+-------+---------+
| id | name                 | city       | state | pincode |
+----+----------------------+------------+-------+---------+
|  2 | piyush chandel       | nainital   | UK    |  549386 |
|  5 | brijesh gupta        | gorakhpur  | UP    |  460450 |
|  7 | parvez hasan         | faizabad   | UP    |  279869 |
|  8 | pawan kumar          | banglore   | KA    |    2612 |
|  9 | umesh verma          | kolkata    | WB    |  173453 |
| 10 | ayushi sharma        | jammu      | JK    |  859431 |
| 11 | shameem beg          | mumbai     | MH    |  776793 |
| 12 | Arun Bhatia          | pune       | MH    |  305673 |
| 13 | shiv patel           | surat      | GJ    |  197988 |
| 14 | aman ali             | ajmer      | RJ    |   72920 |
| 15 | varsha singh         | mathura    | UP    |  770636 |
| 16 | deepak yadav         | gurugram   | HR    |  634419 |
| 17 | manjul saini         | dhanbad    | JH    |  860186 |
| 18 | Ankur sharma         | ranchi     | JH    |  397676 |
| 19 | saurabh gupta        | ahemdabad  | GJ    |  407819 |
| 20 | soumya pandey        | srinagar   | JK    |  846069 |
| 21 | digvijay patel       | jamnagar   | GJ    |    6887 |
| 22 | shivani singh        | faridabad  | HR    |  496229 |
| 23 | sarvik roy           | purulia    | WB    |  460485 |
| 24 | mamta banerjee       | kolkata    | WB    |  813736 |
| 25 | dolly ganguly        | howrah     | WB    |  687224 |
| 26 | shubhojeet mukherjee | birbhum    | WB    |  994915 |
| 27 | shubham das          | jhargram   | WB    |  912900 |
| 28 | tapas paul           | bankura    | WB    |  579758 |
| 29 | sbhubendu sarkar     | kolkatta   | WB    |  160089 |
| 30 | kaveri bose          | howrah     | WB    |   61170 |
| 31 | mitali chatterjee    | kolkata    | WB    |  825583 |
| 32 | rupoma biswas        | howrah     | WB    |  944403 |
| 33 | sujeet ghara         | howrah     | WB    |  245270 |
| 34 | shweta ghara         | kolkata    | WB    |  393138 |
| 35 | nita ganguly         | kolkata    | WB    |  229879 |
| 36 | sumita ganguly       | kolkata    | WB    |  969984 |
| 37 | sumit thakrey        | mumbai     | MH    |  160281 |
| 38 | nana patekar         | mumbai     | MH    |  891455 |
| 39 | nitin gadkari        | nagpur     | MH    |  976432 |
| 40 | dharmesh pradhan     | latur      | MH    |  207796 |
| 41 | rahul gautam         | ballia     | UP    |  109681 |
| 42 | nishi siddiqi        | moradabad  | UP    |  925020 |
| 43 | disha chandok        | ludhiana   | PB    |  296055 |
| 44 | jimmy gill           | chandigarh | PB    |  705216 |
| 45 | deepak sharma        | gurdaspur  | PB    |  637914 |
| 46 | ankur bagga          | chandigarh | PB    |   73924 |
| 47 | asif sheikh          | kulgam     | JK    |  455876 |
| 48 | shahibe alam         | anantnag   | JK    |   57610 |
| 49 | guddu thomas         | imphal     | MN    |  920423 |
| 50 | pradeep gurung       | chandel    | MN    |  429282 |
| 51 | sujeet thapa         | bishnupur  | MN    |  385144 |
| 52 | shankey ale          | imphal     | MN    |  637873 |
| 53 | iti saxena           | nagpur     | MH    |   33934 |
| 54 | chitra chak          | latur      | MH    |  256051 |
| 55 | rinki pal            | jaipur     | RJ    |  178453 |
| 56 | poornima sahay       | pune       | MH    |  124112 |
| 57 | kishan bajpai        | banglore   | KA    |   85200 |
| 58 | sonia dwivedi        | bokaro     | JH    |   53664 |
| 59 | sanjay shukla        | ambala     | HR    |   12721 |
| 60 | sudhir chaudhary     | kutch      | GJ    |  902611 |
+----+----------------------+------------+-------+---------+
56 rows in set (0.00 sec)


SELECT * FROM courses;
+----+-------------------------------+-----------------+-------+
| id | course_name                   | instructor_name | fees  |
+----+-------------------------------+-----------------+-------+
|  1 | MySQL Database                | Sandeep Ganguly |  4500 |
|  2 | PHP Development               | Dolly Singh     |  1500 |
|  3 | Java Complete Tutorial        | Ramesh Yadav    |  7500 |
|  4 | Swing GUI In Depth            | Guddu Sharma    | 15000 |
|  5 | Computer Vision Using Python  | Narendra Murthy | 25000 |
|  6 | AI In Real World Using Python | Satya Kundu     | 45000 |
|  7 | 2D Games Using PyGame         | Sandeep Ganguly | 18000 |
|  8 | GIMP Photo Editing            | Rachna Mishra   |  5000 |
|  9 | HTML                          | Chatur Singh    |  1000 |
| 10 | CSS3                          | pinky singh     |  1500 |
| 11 | Amazon Cloud AWS              | Ruchi Singhania | 75000 |
| 12 | Hadoop Big Data               | Ankita Ganguly  | 95000 |
| 13 | Natural Language Processing   | Sandeep Ganguly | 45999 |
| 14 | The C Ninja                   | Pradeep Gurung  |  3599 |
| 15 | Java Database Connectivity    | Ratan Tata      |  6599 |
| 16 | Dynamic Website Development   | Girish Patel    |  8599 |
| 17 | Android App Development       | Rishi Khanna    | 17999 |
| 18 | IOS Developer                 | Umesh Verma     | 25000 |
| 19 | Algorithms In Depth           | Arjun Thapa     |  9999 |
| 20 | Data Structure In Depth       | Ashok Kalia     | 15000 |
| 21 | JQuery Ninja                  | James Guido     |  6500 |
| 22 | Twitter Bootstrap             | Mitali Ghosh    | 14999 |
| 23 | Codeigniter                   | Pawan Kumar     |  7599 |
| 24 | Struts Framework              | Umesh Verma     |  7500 |
| 25 | CakePHP                       | Parvez Khan     | 60000 |
| 26 | Machine Learning              | Faisal Qureshi  | 45000 |
| 27 | Computer Networks             | Saleem Khan     | 12599 |
| 28 | C++ STL Library Tutorial      | Kareem Sheikh   | 25000 |
| 29 | Kali Linux                    | Jitan Majhi     |  4500 |
| 30 | SQLite Tutorial               | Nitish Kumar    |  6500 |
+----+-------------------------------+-----------------+-------+
30 rows in set (0.01 sec)

// use BETWEEN when you want to retrive data in range
// you can also write query SELECT * FROM courses WHERE fees > 5000 AND fees < 15000;
SELECT * FROM courses where fees BETWEEN 5000 AND 15000; 
+----+-----------------------------+-----------------+-------+
| id | course_name                 | instructor_name | fees  |
+----+-----------------------------+-----------------+-------+
|  3 | Java Complete Tutorial      | Ramesh Yadav    |  7500 |
|  4 | Swing GUI In Depth          | Guddu Sharma    | 15000 |
|  8 | GIMP Photo Editing          | Rachna Mishra   |  5000 |
| 15 | Java Database Connectivity  | Ratan Tata      |  6599 |
| 16 | Dynamic Website Development | Girish Patel    |  8599 |
| 19 | Algorithms In Depth         | Arjun Thapa     |  9999 |
| 20 | Data Structure In Depth     | Ashok Kalia     | 15000 |
| 21 | JQuery Ninja                | James Guido     |  6500 |
| 22 | Twitter Bootstrap           | Mitali Ghosh    | 14999 |
| 23 | Codeigniter                 | Pawan Kumar     |  7599 |
| 24 | Struts Framework            | Umesh Verma     |  7500 |
| 27 | Computer Networks           | Saleem Khan     | 12599 |
| 30 | SQLite Tutorial             | Nitish Kumar    |  6500 |
+----+-----------------------------+-----------------+-------+
13 rows in set (0.00 sec)

// IN use when you want to retrive data on the basis of present 
SELECT * FROM students WHERE state IN('UP','WB'); // you can also change or add or remove more parameter
+----+----------------------+-----------+-------+---------+
| id | name                 | city      | state | pincode |
+----+----------------------+-----------+-------+---------+
|  1 | sandeep ganguly      | kanpur    | UP    |  601988 |
|  3 | divyanshu shukla     | kanpur    | UP    |  940965 |
|  4 | ankita               | kanpur    | UP    |   56669 |
|  5 | brijesh gupta        | gorakhpur | UP    |  460450 |
|  6 | siddhartha singh     | kanpur    | UP    |  132244 |
|  7 | parvez hasan         | faizabad  | UP    |  279869 |
|  9 | umesh verma          | kolkata   | WB    |  173453 |
| 15 | varsha singh         | mathura   | UP    |  770636 |
| 23 | sarvik roy           | purulia   | WB    |  460485 |
| 24 | mamta banerjee       | kolkata   | WB    |  813736 |
| 25 | dolly ganguly        | howrah    | WB    |  687224 |
| 26 | shubhojeet mukherjee | birbhum   | WB    |  994915 |
| 27 | shubham das          | jhargram  | WB    |  912900 |
| 28 | tapas paul           | bankura   | WB    |  579758 |
| 29 | sbhubendu sarkar     | kolkatta  | WB    |  160089 |
| 30 | kaveri bose          | howrah    | WB    |   61170 |
| 31 | mitali chatterjee    | kolkata   | WB    |  825583 |
| 32 | rupoma biswas        | howrah    | WB    |  944403 |
| 33 | sujeet ghara         | howrah    | WB    |  245270 |
| 34 | shweta ghara         | kolkata   | WB    |  393138 |
| 35 | nita ganguly         | kolkata   | WB    |  229879 |
| 36 | sumita ganguly       | kolkata   | WB    |  969984 |
| 41 | rahul gautam         | ballia    | UP    |  109681 |
| 42 | nishi siddiqi        | moradabad | UP    |  925020 |
+----+----------------------+-----------+-------+---------+
24 rows in set (0.00 sec)

// same as IN but it shows not present data
SELECT * FROM students WHERE state NOT IN('UP','WB'); // you can also change or add or remove more parameter
+----+------------------+------------+-------+---------+
| id | name             | city       | state | pincode |
+----+------------------+------------+-------+---------+
|  2 | piyush chandel   | nainital   | UK    |  549386 |
|  8 | pawan kumar      | banglore   | KA    |    2612 |
| 10 | ayushi sharma    | jammu      | JK    |  859431 |
| 11 | shameem beg      | mumbai     | MH    |  776793 |
| 12 | Arun Bhatia      | pune       | MH    |  305673 |
| 13 | shiv patel       | surat      | GJ    |  197988 |
| 14 | aman ali         | ajmer      | RJ    |   72920 |
| 16 | deepak yadav     | gurugram   | HR    |  634419 |
| 17 | manjul saini     | dhanbad    | JH    |  860186 |
| 18 | Ankur sharma     | ranchi     | JH    |  397676 |
| 19 | saurabh gupta    | ahemdabad  | GJ    |  407819 |
| 20 | soumya pandey    | srinagar   | JK    |  846069 |
| 21 | digvijay patel   | jamnagar   | GJ    |    6887 |
| 22 | shivani singh    | faridabad  | HR    |  496229 |
| 37 | sumit thakrey    | mumbai     | MH    |  160281 |
| 38 | nana patekar     | mumbai     | MH    |  891455 |
| 39 | nitin gadkari    | nagpur     | MH    |  976432 |
| 40 | dharmesh pradhan | latur      | MH    |  207796 |
| 43 | disha chandok    | ludhiana   | PB    |  296055 |
| 44 | jimmy gill       | chandigarh | PB    |  705216 |
| 45 | deepak sharma    | gurdaspur  | PB    |  637914 |
| 46 | ankur bagga      | chandigarh | PB    |   73924 |
| 47 | asif sheikh      | kulgam     | JK    |  455876 |
| 48 | shahibe alam     | anantnag   | JK    |   57610 |
| 49 | guddu thomas     | imphal     | MN    |  920423 |
| 50 | pradeep gurung   | chandel    | MN    |  429282 |
| 51 | sujeet thapa     | bishnupur  | MN    |  385144 |
| 52 | shankey ale      | imphal     | MN    |  637873 |
| 53 | iti saxena       | nagpur     | MH    |   33934 |
| 54 | chitra chak      | latur      | MH    |  256051 |
| 55 | rinki pal        | jaipur     | RJ    |  178453 |
| 56 | poornima sahay   | pune       | MH    |  124112 |
| 57 | kishan bajpai    | banglore   | KA    |   85200 |
| 58 | sonia dwivedi    | bokaro     | JH    |   53664 |
| 59 | sanjay shukla    | ambala     | HR    |   12721 |
| 60 | sudhir chaudhary | kutch      | GJ    |  902611 |
+----+------------------+------------+-------+---------+
36 rows in set (0.00 sec)

SELECT * FROM courses ORDER BY fees ASC;
+----+-------------------------------+-----------------+-------+
| id | course_name                   | instructor_name | fees  |
+----+-------------------------------+-----------------+-------+
|  9 | HTML                          | Chatur Singh    |  1000 |
|  2 | PHP Development               | Dolly Singh     |  1500 |
| 10 | CSS3                          | pinky singh     |  1500 |
| 14 | The C Ninja                   | Pradeep Gurung  |  3599 |
|  1 | MySQL Database                | Sandeep Ganguly |  4500 |
| 29 | Kali Linux                    | Jitan Majhi     |  4500 |
|  8 | GIMP Photo Editing            | Rachna Mishra   |  5000 |
| 21 | JQuery Ninja                  | James Guido     |  6500 |
| 30 | SQLite Tutorial               | Nitish Kumar    |  6500 |
| 15 | Java Database Connectivity    | Ratan Tata      |  6599 |
|  3 | Java Complete Tutorial        | Ramesh Yadav    |  7500 |
| 24 | Struts Framework              | Umesh Verma     |  7500 |
| 23 | Codeigniter                   | Pawan Kumar     |  7599 |
| 16 | Dynamic Website Development   | Girish Patel    |  8599 |
| 19 | Algorithms In Depth           | Arjun Thapa     |  9999 |
| 27 | Computer Networks             | Saleem Khan     | 12599 |
| 22 | Twitter Bootstrap             | Mitali Ghosh    | 14999 |
|  4 | Swing GUI In Depth            | Guddu Sharma    | 15000 |
| 20 | Data Structure In Depth       | Ashok Kalia     | 15000 |
| 17 | Android App Development       | Rishi Khanna    | 17999 |
|  7 | 2D Games Using PyGame         | Sandeep Ganguly | 18000 |
| 28 | C++ STL Library Tutorial      | Kareem Sheikh   | 25000 |
| 18 | IOS Developer                 | Umesh Verma     | 25000 |
|  5 | Computer Vision Using Python  | Narendra Murthy | 25000 |
|  6 | AI In Real World Using Python | Satya Kundu     | 45000 |
| 26 | Machine Learning              | Faisal Qureshi  | 45000 |
| 13 | Natural Language Processing   | Sandeep Ganguly | 45999 |
| 25 | CakePHP                       | Parvez Khan     | 60000 |
| 11 | Amazon Cloud AWS              | Ruchi Singhania | 75000 |
| 12 | Hadoop Big Data               | Ankita Ganguly  | 95000 |
+----+-------------------------------+-----------------+-------+
30 rows in set (0.00 sec)

SELECT * FROM courses ORDER BY fees DESC;
+----+-------------------------------+-----------------+-------+
| id | course_name                   | instructor_name | fees  |
+----+-------------------------------+-----------------+-------+
| 12 | Hadoop Big Data               | Ankita Ganguly  | 95000 |
| 11 | Amazon Cloud AWS              | Ruchi Singhania | 75000 |
| 25 | CakePHP                       | Parvez Khan     | 60000 |
| 13 | Natural Language Processing   | Sandeep Ganguly | 45999 |
|  6 | AI In Real World Using Python | Satya Kundu     | 45000 |
| 26 | Machine Learning              | Faisal Qureshi  | 45000 |
|  5 | Computer Vision Using Python  | Narendra Murthy | 25000 |
| 18 | IOS Developer                 | Umesh Verma     | 25000 |
| 28 | C++ STL Library Tutorial      | Kareem Sheikh   | 25000 |
|  7 | 2D Games Using PyGame         | Sandeep Ganguly | 18000 |
| 17 | Android App Development       | Rishi Khanna    | 17999 |
|  4 | Swing GUI In Depth            | Guddu Sharma    | 15000 |
| 20 | Data Structure In Depth       | Ashok Kalia     | 15000 |
| 22 | Twitter Bootstrap             | Mitali Ghosh    | 14999 |
| 27 | Computer Networks             | Saleem Khan     | 12599 |
| 19 | Algorithms In Depth           | Arjun Thapa     |  9999 |
| 16 | Dynamic Website Development   | Girish Patel    |  8599 |
| 23 | Codeigniter                   | Pawan Kumar     |  7599 |
| 24 | Struts Framework              | Umesh Verma     |  7500 |
|  3 | Java Complete Tutorial        | Ramesh Yadav    |  7500 |
| 15 | Java Database Connectivity    | Ratan Tata      |  6599 |
| 21 | JQuery Ninja                  | James Guido     |  6500 |
| 30 | SQLite Tutorial               | Nitish Kumar    |  6500 |
|  8 | GIMP Photo Editing            | Rachna Mishra   |  5000 |
| 29 | Kali Linux                    | Jitan Majhi     |  4500 |
|  1 | MySQL Database                | Sandeep Ganguly |  4500 |
| 14 | The C Ninja                   | Pradeep Gurung  |  3599 |
| 10 | CSS3                          | pinky singh     |  1500 |
|  2 | PHP Development               | Dolly Singh     |  1500 |
|  9 | HTML                          | Chatur Singh    |  1000 |
+----+-------------------------------+-----------------+-------+
30 rows in set (0.00 sec)

 DESC courses; //its descibe the table;
+-----------------+-------------+------+-----+---------+----------------+
| Field           | Type        | Null | Key | Default | Extra          |
+-----------------+-------------+------+-----+---------+----------------+
| id              | int(11)     | NO   | PRI | NULL    | auto_increment |
| course_name     | varchar(30) | NO   |     | NULL    |                |
| instructor_name | varchar(30) | NO   |     | NULL    |                |
| fees            | int(11)     | NO   |     | NULL    |                |
+-----------------+-------------+------+-----+---------+----------------+
4 rows in set (0.02 sec)

SELECT * FROM courses ORDER BY fees ASC LIMIT 5;
+----+-----------------+-----------------+------+
| id | course_name     | instructor_name | fees |
+----+-----------------+-----------------+------+
|  9 | HTML            | Chatur Singh    | 1000 |
|  2 | PHP Development | Dolly Singh     | 1500 |
| 10 | CSS3            | pinky singh     | 1500 |
| 14 | The C Ninja     | Pradeep Gurung  | 3599 |
|  1 | MySQL Database  | Sandeep Ganguly | 4500 |
+----+-----------------+-----------------+------+
5 rows in set (0.00 sec)

SELECT * FROM courses ORDER BY id DESC;
+----+-------------------------------+-----------------+-------+
| id | course_name                   | instructor_name | fees  |
+----+-------------------------------+-----------------+-------+
| 30 | SQLite Tutorial               | Nitish Kumar    |  6500 |
| 29 | Kali Linux                    | Jitan Majhi     |  4500 |
| 28 | C++ STL Library Tutorial      | Kareem Sheikh   | 25000 |
| 27 | Computer Networks             | Saleem Khan     | 12599 |
| 26 | Machine Learning              | Faisal Qureshi  | 45000 |
| 25 | CakePHP                       | Parvez Khan     | 60000 |
| 24 | Struts Framework              | Umesh Verma     |  7500 |
| 23 | Codeigniter                   | Pawan Kumar     |  7599 |
| 22 | Twitter Bootstrap             | Mitali Ghosh    | 14999 |
| 21 | JQuery Ninja                  | James Guido     |  6500 |
| 20 | Data Structure In Depth       | Ashok Kalia     | 15000 |
| 19 | Algorithms In Depth           | Arjun Thapa     |  9999 |
| 18 | IOS Developer                 | Umesh Verma     | 25000 |
| 17 | Android App Development       | Rishi Khanna    | 17999 |
| 16 | Dynamic Website Development   | Girish Patel    |  8599 |
| 15 | Java Database Connectivity    | Ratan Tata      |  6599 |
| 14 | The C Ninja                   | Pradeep Gurung  |  3599 |
| 13 | Natural Language Processing   | Sandeep Ganguly | 45999 |
| 12 | Hadoop Big Data               | Ankita Ganguly  | 95000 |
| 11 | Amazon Cloud AWS              | Ruchi Singhania | 75000 |
| 10 | CSS3                          | pinky singh     |  1500 |
|  9 | HTML                          | Chatur Singh    |  1000 |
|  8 | GIMP Photo Editing            | Rachna Mishra   |  5000 |
|  7 | 2D Games Using PyGame         | Sandeep Ganguly | 18000 |
|  6 | AI In Real World Using Python | Satya Kundu     | 45000 |
|  5 | Computer Vision Using Python  | Narendra Murthy | 25000 |
|  4 | Swing GUI In Depth            | Guddu Sharma    | 15000 |
|  3 | Java Complete Tutorial        | Ramesh Yadav    |  7500 |
|  2 | PHP Development               | Dolly Singh     |  1500 |
|  1 | MySQL Database                | Sandeep Ganguly |  4500 |
+----+-------------------------------+-----------------+-------+
30 rows in set (0.00 sec)

SELECT * FROM courses WHERE course_name LIKE "java%";
+----+----------------------------+-----------------+------+
| id | course_name                | instructor_name | fees |
+----+----------------------------+-----------------+------+
|  3 | Java Complete Tutorial     | Ramesh Yadav    | 7500 |
| 15 | Java Database Connectivity | Ratan Tata      | 6599 |
+----+----------------------------+-----------------+------+
2 rows in set (0.00 sec)

SELECT * FROM courses WHERE course_name LIKE "%depth";
+----+-------------------------+-----------------+-------+
| id | course_name             | instructor_name | fees  |
+----+-------------------------+-----------------+-------+
|  4 | Swing GUI In Depth      | Guddu Sharma    | 15000 |
| 19 | Algorithms In Depth     | Arjun Thapa     |  9999 |
| 20 | Data Structure In Depth | Ashok Kalia     | 15000 |
+----+-------------------------+-----------------+-------+
3 rows in set (0.00 sec)

SELECT * FROM courses WHERE course_name LIKE "% IN %";
+----+-------------------------------+-----------------+-------+
| id | course_name                   | instructor_name | fees  |
+----+-------------------------------+-----------------+-------+
|  4 | Swing GUI In Depth            | Guddu Sharma    | 15000 |
|  6 | AI In Real World Using Python | Satya Kundu     | 45000 |
| 19 | Algorithms In Depth           | Arjun Thapa     |  9999 |
| 20 | Data Structure In Depth       | Ashok Kalia     | 15000 |
+----+-------------------------------+-----------------+-------+
4 rows in set (0.00 sec)

SELECT * FROM courses WHERE course_name LIKE "c_m%";
+----+------------------------------+-----------------+-------+
| id | course_name                  | instructor_name | fees  |
+----+------------------------------+-----------------+-------+
|  5 | Computer Vision Using Python | Narendra Murthy | 25000 |
| 27 | Computer Networks            | Saleem Khan     | 12599 |
+----+------------------------------+-----------------+-------+
2 rows in set (0.00 sec)

SELECT * FROM courses WHERE course_name LIKE "J_v_ %";
+----+----------------------------+-----------------+------+
| id | course_name                | instructor_name | fees |
+----+----------------------------+-----------------+------+
|  3 | Java Complete Tutorial     | Ramesh Yadav    | 7500 |
| 15 | Java Database Connectivity | Ratan Tata      | 6599 |
+----+----------------------------+-----------------+------+
2 rows in set (0.00 sec)

SELECT * FROM courses WHERE course_name LIKE "J_v %";
Empty set (0.00 sec)

/-------------Aggregate Function ---------------/

SELECT * FROM marks;
+----+-------------------------------+-------+-----+
| id | course_name                   | score | sid |
+----+-------------------------------+-------+-----+
|  1 | AI In Real World Using Python |    14 |  38 |
|  2 | AI In Real World Using Python |    99 |  51 |
|  3 | GIMP Photo Editing            |    51 |  29 |
|  4 | SQLite Tutorial               |    57 |  13 |
|  5 | Swing GUI In Depth            |    31 |  34 |
|  6 | CSS3                          |    83 |  36 |
|  7 | Codeigniter                   |    22 |  39 |
|  8 | 2D Games Using PyGame         |    60 |  37 |
|  9 | Data Structure In Depth       |    31 |  32 |
| 10 | Amazon Cloud AWS              |    76 |  12 |
| 11 | Amazon Cloud AWS              |    86 |  27 |
| 12 | Computer Networks             |     2 |  34 |
| 13 | Swing GUI In Depth            |    52 |   1 |
| 14 | Dynamic Website Development   |    52 |   3 |
| 15 | CakePHP                       |     2 |  27 |
| 16 | Natural Language Processing   |    55 |   6 |
| 17 | HTML                          |    68 |   6 |
| 18 | Computer Vision Using Python  |    72 |  47 |
| 19 | Computer Vision Using Python  |    58 |  24 |
| 20 | Data Structure In Depth       |    70 |  14 |
| 21 | Kali Linux                    |    76 |  18 |
| 22 | Java Complete Tutorial        |    67 |  32 |
| 23 | Java Database Connectivity    |     8 |  25 |
| 24 | The C Ninja                   |    39 |  10 |
| 25 | SQLite Tutorial               |    69 |  60 |
+----+-------------------------------+-------+-----+
25 rows in set (0.01 sec)

SELECT MIN(score) FROM marks;
+------------+
| MIN(score) |
+------------+
|          2 |
+------------+
1 row in set (0.00 sec)

 SELECT MAX(score) FROM marks;
+------------+
| MAX(score) |
+------------+
|         99 |
+------------+
1 row in set (0.00 sec)

SELECT COUNT(score) FROM marks;
+--------------+
| COUNT(score) |
+--------------+
|           25 |
+--------------+
1 row in set (0.00 sec)

SELECT SUM(score) FROM marks;
+------------+
| SUM(score) |
+------------+
|       1300 |
+------------+
1 row in set (0.00 sec)

SELECT AVG(score) FROM marks;
+------------+
| AVG(score) |
+------------+
|    52.0000 |
+------------+
1 row in set (0.00 sec)

/--- subquery with aggregate function ---/
SELECT * FROM marks WHERE score = (SELECT MIN(score) FROM marks);
+----+-------------------+-------+-----+
| id | course_name       | score | sid |
+----+-------------------+-------+-----+
| 12 | Computer Networks |     2 |  34 |
| 15 | CakePHP           |     2 |  27 |
+----+-------------------+-------+-----+

SELECT * FROM marks WHERE score = (SELECT SUM(score) FROM marks);
Empty set (0.00 sec)

SELECT * FROM marks WHERE score = (SELECT MAX(score) FROM marks);
+----+-------------------------------+-------+-----+
| id | course_name                   | score | sid |
+----+-------------------------------+-------+-----+
|  2 | AI In Real World Using Python |    99 |  51 |
+----+-------------------------------+-------+-----+
1 row in set (0.00 sec)

SELECT * FROM marks WHERE score = (SELECT MAX(score) FROM marks);
+----+-------------------------------+-------+-----+
| id | course_name                   | score | sid |
+----+-------------------------------+-------+-----+
|  2 | AI In Real World Using Python |    99 |  51 |
+----+-------------------------------+-------+-----+
1 row in set (0.00 sec)

SELECT name,pincode, CONCAT(city," ",state) FROM students LIMIT 10;
+------------------+---------+------------------------+
| name             | pincode | CONCAT(city," ",state) |
+------------------+---------+------------------------+
| sandeep ganguly  |  601988 | kanpur UP              |
| piyush chandel   |  549386 | nainital UK            |
| divyanshu shukla |  940965 | kanpur UP              |
| ankita           |   56669 | kanpur UP              |
| brijesh gupta    |  460450 | gorakhpur UP           |
| siddhartha singh |  132244 | kanpur UP              |
| parvez hasan     |  279869 | faizabad UP            |
| pawan kumar      |    2612 | banglore KA            |
| umesh verma      |  173453 | kolkata WB             |
| ayushi sharma    |  859431 | jammu JK               |
+------------------+---------+------------------------+
10 rows in set (0.00 sec)

SELECT name,pincode, CONCAT(city,",",state) FROM students LIMIT 10;
+------------------+---------+------------------------+
| name             | pincode | CONCAT(city,",",state) |
+------------------+---------+------------------------+
| sandeep ganguly  |  601988 | kanpur,UP              |
| piyush chandel   |  549386 | nainital,UK            |
| divyanshu shukla |  940965 | kanpur,UP              |
| ankita           |   56669 | kanpur,UP              |
| brijesh gupta    |  460450 | gorakhpur,UP           |
| siddhartha singh |  132244 | kanpur,UP              |
| parvez hasan     |  279869 | faizabad,UP            |
| pawan kumar      |    2612 | banglore,KA            |
| umesh verma      |  173453 | kolkata,WB             |
| ayushi sharma    |  859431 | jammu,JK               |
+------------------+---------+------------------------+
10 rows in set (0.00 sec)

select fees AS charges from courses;
+---------+
| charges |
+---------+
|    4500 |
|    1500 |
|    7500 |
|   15000 |
|   25000 |
|   45000 |
|   18000 |
|    5000 |
|    1000 |
|    1500 |
|   75000 |
|   95000 |
|   45999 |
|    3599 |
|    6599 |
|    8599 |
|   17999 |
|   25000 |
|    9999 |
|   15000 |
|    6500 |
|   14999 |
|    7599 |
|    7500 |
|   60000 |
|   45000 |
|   12599 |
|   25000 |
|    4500 |
|    6500 |
+---------+
30 rows in set (0.00 sec)

select count(fees) AS CountOfFees from courses;
+-------------+
| CountOfFees |
+-------------+
|          30 |
+-------------+
1 row in set (0.00 sec)

SELECT courses.course_name, courses.fees From courses; //also known as fully qualified queries.
+-------------------------------+-------+
| course_name                   | fees  |
+-------------------------------+-------+
| MySQL Database                |  4500 |
| PHP Development               |  1500 |
| Java Complete Tutorial        |  7500 |
| Swing GUI In Depth            | 15000 |
| Computer Vision Using Python  | 25000 |
| AI In Real World Using Python | 45000 |
| 2D Games Using PyGame         | 18000 |
| GIMP Photo Editing            |  5000 |
| HTML                          |  1000 |
| CSS3                          |  1500 |
| Amazon Cloud AWS              | 75000 |
| Hadoop Big Data               | 95000 |
| Natural Language Processing   | 45999 |
| The C Ninja                   |  3599 |
| Java Database Connectivity    |  6599 |
| Dynamic Website Development   |  8599 |
| Android App Development       | 17999 |
| IOS Developer                 | 25000 |
| Algorithms In Depth           |  9999 |
| Data Structure In Depth       | 15000 |
| JQuery Ninja                  |  6500 |
| Twitter Bootstrap             | 14999 |
| Codeigniter                   |  7599 |
| Struts Framework              |  7500 |
| CakePHP                       | 60000 |
| Machine Learning              | 45000 |
| Computer Networks             | 12599 |
| C++ STL Library Tutorial      | 25000 |
| Kali Linux                    |  4500 |
| SQLite Tutorial               |  6500 |
+-------------------------------+-------+
30 rows in set (0.00 sec)

SELECT c.course_name, c.fees FROM courses AS c;
+-------------------------------+-------+
| course_name                   | fees  |
+-------------------------------+-------+
| MySQL Database                |  4500 |
| PHP Development               |  1500 |
| Java Complete Tutorial        |  7500 |
| Swing GUI In Depth            | 15000 |
| Computer Vision Using Python  | 25000 |
| AI In Real World Using Python | 45000 |
| 2D Games Using PyGame         | 18000 |
| GIMP Photo Editing            |  5000 |
| HTML                          |  1000 |
| CSS3                          |  1500 |
| Amazon Cloud AWS              | 75000 |
| Hadoop Big Data               | 95000 |
| Natural Language Processing   | 45999 |
| The C Ninja                   |  3599 |
| Java Database Connectivity    |  6599 |
| Dynamic Website Development   |  8599 |
| Android App Development       | 17999 |
| IOS Developer                 | 25000 |
| Algorithms In Depth           |  9999 |
| Data Structure In Depth       | 15000 |
| JQuery Ninja                  |  6500 |
| Twitter Bootstrap             | 14999 |
| Codeigniter                   |  7599 |
| Struts Framework              |  7500 |
| CakePHP                       | 60000 |
| Machine Learning              | 45000 |
| Computer Networks             | 12599 |
| C++ STL Library Tutorial      | 25000 |
| Kali Linux                    |  4500 |
| SQLite Tutorial               |  6500 |
+-------------------------------+-------+
30 rows in set (0.00 sec)

/------------ Look for update operations -------------/

update marks SET score = 55 Where id = 9;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

select * from marks;
+----+-------------------------------+-------+-----+
| id | course_name                   | score | sid |
+----+-------------------------------+-------+-----+
|  1 | AI In Real World Using Python |    14 |  38 |
|  2 | AI In Real World Using Python |    99 |  51 |
|  3 | GIMP Photo Editing            |    51 |  29 |
|  4 | SQLite Tutorial               |    57 |  13 |
|  5 | Swing GUI In Depth            |    31 |  34 |
|  6 | CSS3                          |    83 |  36 |
|  7 | Codeigniter                   |    22 |  39 |
|  8 | 2D Games Using PyGame         |    60 |  37 |
|  9 | Data Structure In Depth       |    55 |  32 |
| 10 | Amazon Cloud AWS              |    76 |  12 |
| 11 | Amazon Cloud AWS              |    86 |  27 |
| 12 | Computer Networks             |     2 |  34 |
| 13 | Swing GUI In Depth            |    52 |   1 |
| 14 | Dynamic Website Development   |    52 |   3 |
| 15 | CakePHP                       |     2 |  27 |
| 16 | Natural Language Processing   |    55 |   6 |
| 17 | HTML                          |    68 |   6 |
| 18 | Computer Vision Using Python  |    72 |  47 |
| 19 | Computer Vision Using Python  |    58 |  24 |
| 20 | Data Structure In Depth       |    70 |  14 |
| 21 | Kali Linux                    |    76 |  18 |
| 22 | Java Complete Tutorial        |    67 |  32 |
| 23 | Java Database Connectivity    |     8 |  25 |
| 24 | The C Ninja                   |    39 |  10 |
| 25 | SQLite Tutorial               |    69 |  60 |
+----+-------------------------------+-------+-----+
25 rows in set (0.00 sec)

update marks SET score = 600 , course_name = "Advance DataStructure" Where id = 9;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

select * from marks;
+----+-------------------------------+-------+-----+
| id | course_name                   | score | sid |
+----+-------------------------------+-------+-----+
|  1 | AI In Real World Using Python |    14 |  38 |
|  2 | AI In Real World Using Python |    99 |  51 |
|  3 | GIMP Photo Editing            |    51 |  29 |
|  4 | SQLite Tutorial               |    57 |  13 |
|  5 | Swing GUI In Depth            |    31 |  34 |
|  6 | CSS3                          |    83 |  36 |
|  7 | Codeigniter                   |    22 |  39 |
|  8 | 2D Games Using PyGame         |    60 |  37 |
|  9 | Advance DataStructure         |   600 |  32 |
| 10 | Amazon Cloud AWS              |    76 |  12 |
| 11 | Amazon Cloud AWS              |    86 |  27 |
| 12 | Computer Networks             |     2 |  34 |
| 13 | Swing GUI In Depth            |    52 |   1 |
| 14 | Dynamic Website Development   |    52 |   3 |
| 15 | CakePHP                       |     2 |  27 |
| 16 | Natural Language Processing   |    55 |   6 |
| 17 | HTML                          |    68 |   6 |
| 18 | Computer Vision Using Python  |    72 |  47 |
| 19 | Computer Vision Using Python  |    58 |  24 |
| 20 | Data Structure In Depth       |    70 |  14 |
| 21 | Kali Linux                    |    76 |  18 |
| 22 | Java Complete Tutorial        |    67 |  32 |
| 23 | Java Database Connectivity    |     8 |  25 |
| 24 | The C Ninja                   |    39 |  10 |
| 25 | SQLite Tutorial               |    69 |  60 |
+----+-------------------------------+-------+-----+
25 rows in set (0.00 sec)

update marks AS c SET c.score = 55 , c.course_name = "Advance Data Structure" Where id = 9;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

select * from marks;
+----+-------------------------------+-------+-----+
| id | course_name                   | score | sid |
+----+-------------------------------+-------+-----+
|  1 | AI In Real World Using Python |    14 |  38 |
|  2 | AI In Real World Using Python |    99 |  51 |
|  3 | GIMP Photo Editing            |    51 |  29 |
|  4 | SQLite Tutorial               |    57 |  13 |
|  5 | Swing GUI In Depth            |    31 |  34 |
|  6 | CSS3                          |    83 |  36 |
|  7 | Codeigniter                   |    22 |  39 |
|  8 | 2D Games Using PyGame         |    60 |  37 |
|  9 | Advance Data Structure        |    55 |  32 |
| 10 | Amazon Cloud AWS              |    76 |  12 |
| 11 | Amazon Cloud AWS              |    86 |  27 |
| 12 | Computer Networks             |     2 |  34 |
| 13 | Swing GUI In Depth            |    52 |   1 |
| 14 | Dynamic Website Development   |    52 |   3 |
| 15 | CakePHP                       |     2 |  27 |
| 16 | Natural Language Processing   |    55 |   6 |
| 17 | HTML                          |    68 |   6 |
| 18 | Computer Vision Using Python  |    72 |  47 |
| 19 | Computer Vision Using Python  |    58 |  24 |
| 20 | Data Structure In Depth       |    70 |  14 |
| 21 | Kali Linux                    |    76 |  18 |
| 22 | Java Complete Tutorial        |    67 |  32 |
| 23 | Java Database Connectivity    |     8 |  25 |
| 24 | The C Ninja                   |    39 |  10 |
| 25 | SQLite Tutorial               |    69 |  60 |
+----+-------------------------------+-------+-----+
25 rows in set (0.00 sec)


//By Normal Way
SELECT students.id, marks.sid, students.name, marks.course_name, marks.score FROM marks, students 
WHERE students.id = marks.sid;
+----+-----+------------------+-------------------------------+-------+
| id | sid | name             | course_name                   | score |
+----+-----+------------------+-------------------------------+-------+
| 38 |  38 | nana patekar     | AI In Real World Using Python |    14 |
| 51 |  51 | sujeet thapa     | AI In Real World Using Python |    99 |
| 29 |  29 | sbhubendu sarkar | GIMP Photo Editing            |    51 |
| 13 |  13 | shiv patel       | SQLite Tutorial               |    57 |
| 34 |  34 | shweta ghara     | Swing GUI In Depth            |    31 |
| 36 |  36 | sumita ganguly   | CSS3                          |    83 |
| 39 |  39 | nitin gadkari    | Codeigniter                   |    22 |
| 37 |  37 | sumit thakrey    | 2D Games Using PyGame         |    60 |
| 32 |  32 | rupoma biswas    | Advance Data Structure        |    55 |
| 12 |  12 | Arun Bhatia      | Amazon Cloud AWS              |    76 |
| 27 |  27 | shubham das      | Amazon Cloud AWS              |    86 |
| 34 |  34 | shweta ghara     | Computer Networks             |     2 |
|  1 |   1 | sandeep ganguly  | Swing GUI In Depth            |    52 |
|  3 |   3 | divyanshu shukla | Dynamic Website Development   |    52 |
| 27 |  27 | shubham das      | CakePHP                       |     2 |
|  6 |   6 | siddhartha singh | Natural Language Processing   |    55 |
|  6 |   6 | siddhartha singh | HTML                          |    68 |
| 47 |  47 | asif sheikh      | Computer Vision Using Python  |    72 |
| 24 |  24 | mamta banerjee   | Computer Vision Using Python  |    58 |
| 14 |  14 | aman ali         | Data Structure In Depth       |    70 |
| 18 |  18 | Ankur sharma     | Kali Linux                    |    76 |
| 32 |  32 | rupoma biswas    | Java Complete Tutorial        |    67 |
| 25 |  25 | dolly ganguly    | Java Database Connectivity    |     8 |
| 10 |  10 | ayushi sharma    | The C Ninja                   |    39 |
| 60 |  60 | sudhir chaudhary | SQLite Tutorial               |    69 |
+----+-----+------------------+-------------------------------+-------+
25 rows in set (0.01 sec)

//now do it by Join Operations.
SELECT students.id, marks.sid, students.name, marks.course_name, marks.score FROM marks INNER JOIN students ON students.id = marks.sid;
+----+-----+------------------+-------------------------------+-------+
| id | sid | name             | course_name                   | score |
+----+-----+------------------+-------------------------------+-------+
| 38 |  38 | nana patekar     | AI In Real World Using Python |    14 |
| 51 |  51 | sujeet thapa     | AI In Real World Using Python |    99 |
| 29 |  29 | sbhubendu sarkar | GIMP Photo Editing            |    51 |
| 13 |  13 | shiv patel       | SQLite Tutorial               |    57 |
| 34 |  34 | shweta ghara     | Swing GUI In Depth            |    31 |
| 36 |  36 | sumita ganguly   | CSS3                          |    83 |
| 39 |  39 | nitin gadkari    | Codeigniter                   |    22 |
| 37 |  37 | sumit thakrey    | 2D Games Using PyGame         |    60 |
| 32 |  32 | rupoma biswas    | Advance Data Structure        |    55 |
| 12 |  12 | Arun Bhatia      | Amazon Cloud AWS              |    76 |
| 27 |  27 | shubham das      | Amazon Cloud AWS              |    86 |
| 34 |  34 | shweta ghara     | Computer Networks             |     2 |
|  1 |   1 | sandeep ganguly  | Swing GUI In Depth            |    52 |
|  3 |   3 | divyanshu shukla | Dynamic Website Development   |    52 |
| 27 |  27 | shubham das      | CakePHP                       |     2 |
|  6 |   6 | siddhartha singh | Natural Language Processing   |    55 |
|  6 |   6 | siddhartha singh | HTML                          |    68 |
| 47 |  47 | asif sheikh      | Computer Vision Using Python  |    72 |
| 24 |  24 | mamta banerjee   | Computer Vision Using Python  |    58 |
| 14 |  14 | aman ali         | Data Structure In Depth       |    70 |
| 18 |  18 | Ankur sharma     | Kali Linux                    |    76 |
| 32 |  32 | rupoma biswas    | Java Complete Tutorial        |    67 |
| 25 |  25 | dolly ganguly    | Java Database Connectivity    |     8 |
| 10 |  10 | ayushi sharma    | The C Ninja                   |    39 |
| 60 |  60 | sudhir chaudhary | SQLite Tutorial               |    69 |
+----+-----+------------------+-------------------------------+-------+
25 rows in set (0.00 sec)

//LEFT OUTER JOIN
SELECT courses.id, marks.sid, courses.course_name, marks.course_name, marks.score FROM marks LEFT OUTER JOIN courses ON courses.id = marks.sid;
+------+-----+-------------------------------+-------------------------------+-------+
| id   | sid | course_name                   | course_name                   | score |
+------+-----+-------------------------------+-------------------------------+-------+
| NULL |  38 | NULL                          | AI In Real World Using Python |    14 |
| NULL |  51 | NULL                          | AI In Real World Using Python |    99 |
|   29 |  29 | Kali Linux                    | GIMP Photo Editing            |    51 |
|   13 |  13 | Natural Language Processing   | SQLite Tutorial               |    57 |
| NULL |  34 | NULL                          | Swing GUI In Depth            |    31 |
| NULL |  36 | NULL                          | CSS3                          |    83 |
| NULL |  39 | NULL                          | Codeigniter                   |    22 |
| NULL |  37 | NULL                          | 2D Games Using PyGame         |    60 |
| NULL |  32 | NULL                          | Advance Data Structure        |    55 |
|   12 |  12 | Hadoop Big Data               | Amazon Cloud AWS              |    76 |
|   27 |  27 | Computer Networks             | Amazon Cloud AWS              |    86 |
| NULL |  34 | NULL                          | Computer Networks             |     2 |
|    1 |   1 | MySQL Database                | Swing GUI In Depth            |    52 |
|    3 |   3 | Java Complete Tutorial        | Dynamic Website Development   |    52 |
|   27 |  27 | Computer Networks             | CakePHP                       |     2 |
|    6 |   6 | AI In Real World Using Python | Natural Language Processing   |    55 |
|    6 |   6 | AI In Real World Using Python | HTML                          |    68 |
| NULL |  47 | NULL                          | Computer Vision Using Python  |    72 |
|   24 |  24 | Struts Framework              | Computer Vision Using Python  |    58 |
|   14 |  14 | The C Ninja                   | Data Structure In Depth       |    70 |
|   18 |  18 | IOS Developer                 | Kali Linux                    |    76 |
| NULL |  32 | NULL                          | Java Complete Tutorial        |    67 |
|   25 |  25 | CakePHP                       | Java Database Connectivity    |     8 |
|   10 |  10 | CSS3                          | The C Ninja                   |    39 |
| NULL |  60 | NULL                          | SQLite Tutorial               |    69 |
+------+-----+-------------------------------+-------------------------------+-------+
25 rows in set (0.00 sec)

//RIGHT OUTER JOIN
SELECT courses.id, marks.sid, courses.course_name, marks.course_name, marks.score FROM courses RIGHT OUTER JOIN marks ON courses.id = marks.sid;
+------+-----+-------------------------------+-------------------------------+-------+
| id   | sid | course_name                   | course_name                   | score |
+------+-----+-------------------------------+-------------------------------+-------+
| NULL |  38 | NULL                          | AI In Real World Using Python |    14 |
| NULL |  51 | NULL                          | AI In Real World Using Python |    99 |
|   29 |  29 | Kali Linux                    | GIMP Photo Editing            |    51 |
|   13 |  13 | Natural Language Processing   | SQLite Tutorial               |    57 |
| NULL |  34 | NULL                          | Swing GUI In Depth            |    31 |
| NULL |  36 | NULL                          | CSS3                          |    83 |
| NULL |  39 | NULL                          | Codeigniter                   |    22 |
| NULL |  37 | NULL                          | 2D Games Using PyGame         |    60 |
| NULL |  32 | NULL                          | Advance Data Structure        |    55 |
|   12 |  12 | Hadoop Big Data               | Amazon Cloud AWS              |    76 |
|   27 |  27 | Computer Networks             | Amazon Cloud AWS              |    86 |
| NULL |  34 | NULL                          | Computer Networks             |     2 |
|    1 |   1 | MySQL Database                | Swing GUI In Depth            |    52 |
|    3 |   3 | Java Complete Tutorial        | Dynamic Website Development   |    52 |
|   27 |  27 | Computer Networks             | CakePHP                       |     2 |
|    6 |   6 | AI In Real World Using Python | Natural Language Processing   |    55 |
|    6 |   6 | AI In Real World Using Python | HTML                          |    68 |
| NULL |  47 | NULL                          | Computer Vision Using Python  |    72 |
|   24 |  24 | Struts Framework              | Computer Vision Using Python  |    58 |
|   14 |  14 | The C Ninja                   | Data Structure In Depth       |    70 |
|   18 |  18 | IOS Developer                 | Kali Linux                    |    76 |
| NULL |  32 | NULL                          | Java Complete Tutorial        |    67 |
|   25 |  25 | CakePHP                       | Java Database Connectivity    |     8 |
|   10 |  10 | CSS3                          | The C Ninja                   |    39 |
| NULL |  60 | NULL                          | SQLite Tutorial               |    69 |
+------+-----+-------------------------------+-------------------------------+-------+
25 rows in set (0.00 sec)

//GROUP BY
SELECT * FROM students GROUP BY state;
+----+-----------------+----------+-------+---------+
| id | name            | city     | state | pincode |
+----+-----------------+----------+-------+---------+
| 13 | shiv patel      | surat    | GJ    |  197988 |
| 16 | deepak yadav    | gurugram | HR    |  634419 |
| 17 | manjul saini    | dhanbad  | JH    |  860186 |
| 10 | ayushi sharma   | jammu    | JK    |  859431 |
|  8 | pawan kumar     | banglore | KA    |    2612 |
| 11 | shameem beg     | mumbai   | MH    |  776793 |
| 49 | guddu thomas    | imphal   | MN    |  920423 |
| 43 | disha chandok   | ludhiana | PB    |  296055 |
| 14 | aman ali        | ajmer    | RJ    |   72920 |
|  2 | piyush chandel  | nainital | UK    |  549386 |
|  1 | sandeep ganguly | kanpur   | UP    |  601988 |
|  9 | umesh verma     | kolkata  | WB    |  173453 |
+----+-----------------+----------+-------+---------+
12 rows in set (0.00 sec)

SELECT state,COUNT(state) AS NoOfStudents FROM students GROUP BY state;
+-------+--------------+
| state | NoOfStudents |
+-------+--------------+
| GJ    |            4 |
| HR    |            3 |
| JH    |            3 |
| JK    |            4 |
| KA    |            2 |
| MH    |            9 |
| MN    |            4 |
| PB    |            4 |
| RJ    |            2 |
| UK    |            1 |
| UP    |            9 |
| WB    |           15 |
+-------+--------------+
12 rows in set (0.00 sec)

"HAVING CLAUSE NOTE:- you can't use where clause with group by so having is used."
SELECT state,COUNT(state) AS NoOfStudents FROM students GROUP BY state HAVING count(state) > 5;
+-------+--------------+
| state | NoOfStudents |
+-------+--------------+
| MH    |            9 |
| UP    |            9 |
| WB    |           15 |
+-------+--------------+
3 rows in set (0.00 sec)

//Create a VIEW
CREATE VIEW StudCourse AS SELECT course_name,instructor_name,fees FROM courses ASEC WHERE fees >= 5000 LIMIT 5;
Query OK, 0 rows affected (0.01 sec)

select * from StudCourse;
+-------------------------------+-----------------+-------+
| course_name                   | instructor_name | fees  |
+-------------------------------+-----------------+-------+
| Java Complete Tutorial        | Ramesh Yadav    |  7500 |
| Swing GUI In Depth            | Guddu Sharma    | 15000 |
| Computer Vision Using Python  | Narendra Murthy | 25000 |
| AI In Real World Using Python | Satya Kundu     | 45000 |
| 2D Games Using PyGame         | Sandeep Ganguly | 18000 |
+-------------------------------+-----------------+-------+
5 rows in set (0.00 sec)

 SHOW TABLES;
+-----------------------+
| Tables_in_gangulytech |
+-----------------------+
| courses               |
| enrolls               |
| marks                 |
| studcourse            |
| students              |
+-----------------------+
5 rows in set (0.00 sec)

//even you make changes in main table its reflected in view also
update courses SET fees = 6500 Where instructor_name = "Ramesh Yadav";
Rows matched: 1  Changed: 1  Warnings: 0

SELECT * FROM courses ASEC LIMIT 5;
+----+------------------------------+-----------------+-------+
| id | course_name                  | instructor_name | fees  |
+----+------------------------------+-----------------+-------+
|  1 | MySQL Database               | Sandeep Ganguly |  4500 |
|  2 | PHP Development              | Dolly Singh     |  1500 |
|  3 | Java Complete Tutorial       | Ramesh Yadav    |  6500 |
|  4 | Swing GUI In Depth           | Guddu Sharma    | 15000 |
|  5 | Computer Vision Using Python | Narendra Murthy | 25000 |
+----+------------------------------+-----------------+-------+
5 rows in set (0.00 sec)

//now look for view its auto updates its contents. and you can see the main difference.
SELECT * FROM studcourse;
+-------------------------------+-----------------+-------+
| course_name                   | instructor_name | fees  |
+-------------------------------+-----------------+-------+
| Java Complete Tutorial        | Ramesh Yadav    |  6500 |
| Swing GUI In Depth            | Guddu Sharma    | 15000 |
| Computer Vision Using Python  | Narendra Murthy | 25000 |
| AI In Real World Using Python | Satya Kundu     | 45000 |
| 2D Games Using PyGame         | Sandeep Ganguly | 18000 |
+-------------------------------+-----------------+-------+
5 rows in set (0.00 sec)
