use assessment;
CREATE TABLE Worker(
	WORKER_ID INT primary key,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY INT NOT NULL,
    JOINING_DATE datetime,
    DEPARTMENT VARCHAR(20)
);

INSERT INTO WORKER
VALUES
(1, "Monika", "Arora", 100000, "2014/02/20 09:00", "HR"),
(2, "Niharika", "Verma", 80000, "2014/11/06 09:00", "Admin"),
(3, "Vishal", "Singhal", 300000, "2014/02/20 09:00", "HR"),
(4, "Amitbh", "Singh", 500000, "2014/02/20 09:00", "Admin"),
(5, "Vivek", "Bhati", 500000, "2014/11/06 09:00", "Admin"),
(6, "Vipul", "Diwan", 200000, "2014/11/06 09:00", "Account"),
(7, "Satish", "Kumar", 75000, "2014/01/20 09:00", "Account"),
(8, "Geetika", "Chauhan", 90000, "2014/04/11 09:00", "Admin");

SELECT * From Worker;

use assessment;
SELECT * FROM Worker
order by FIRST_NAME ASC, DEPARTMENT DESC;

SELECT * FROM Worker
WHERE FIRST_NAME IN ("Vipul", "Satish");

SELECT * FROM Worker
WHERE RIGHT(FIRST_NAME, 1) = 'h' AND LENGTH(FIRST_NAME) = 6;

SELECT * FROM Worker
WHERE SALARY BETWEEN 100000 AND 500000;

SELECT FIRST_NAME, LAST_NAME, COUNT(*)
FROM Worker
GROUP BY FIRST_NAME, LAST_NAME
HAVING COUNT(*) > 1;

SELECT * FROM Worker
LIMIT 6;

SELECT DEPARTMENT, COUNT(*) AS TotalPeople
FROM Worker
GROUP BY DEPARTMENT
HAVING TotalPeople < 5;

SELECT DEPARTMENT, COUNT(*) AS TotalPeople
FROM Worker
GROUP BY DEPARTMENT;

SELECT FIRST_NAME, SALARY, DEPARTMENT
from worker 
order by SALARY ASC;


-- QUESTION 2 ---

CREATE DATABASE open_school;
use open_school;

CREATE TABLE STUDENT
(
	StdID INT primary key,
    StdName varchar(20),
    Sex varchar(10),
    Percentage INT,
    Class INT,
    Sec varchar(20),
    Strm varchar(20),
    DOB date 
);

INSERT INTO STUDENT VALUES 
(1001, 'Surekha Joshi', 'Female', 82, 12, 'A', 'Science', '1998-03-08'),
(1002, 'Maahi Agrawal', 'Female', 56, 11, 'C', 'Commerce', '2008-11-23'),
(1003, 'Sanam Verma', 'Male', 59, 11, 'C', 'Commerce', '2006-06-29'),
(1004, 'Ronit Kumar', 'Male', 63, 11, 'C', 'Commerce', '1997-11-05'),
(1005, 'Dipesh Pulkit', 'Male', 78, 11, 'B', 'Science', '2003-09-14'),
(1006, 'JAHANVI Puri', 'Female', 60, 11, 'B', 'Commerce', '2008-11-07'),
(1007, 'Sanam Kumar', 'Male', 23, 12, 'F', 'Commerce', '1998-03-08'),
(1008, 'SAHIL SARAS', 'Male', 56, 11, 'C', 'Commerce', '2008-11-07'),
(1009, 'AKSHRA AGRAWAL', 'Female', 72, 12, 'B', 'Commerce', '1996-10-01'),
(1010, 'STUTI MISHRA', 'Female', 39, 11, 'F', 'Science', '2008-11-23'),
(1011, 'HARSH AGRAWAL', 'Male', 42, 11, 'C', 'Science', '1998-03-08'),
(1012, 'NIKUNJ AGRAWAL', 'Male', 49, 12, 'C', 'Commerce', '1998-06-28'),
(1013, 'AKRITI SAXENA', 'Female', 89, 12, 'A', 'Science', '2008-11-23'),
(1014, 'TANI RASTOGI', 'Female', 82, 12, 'A', 'Science', '2008-11-23');

SELECT * FROM STUDENT;

SELECT StdName, DOB
FROM STUDENT;

SELECT * FROM student 
WHERE percentage >= 80;

SELECT StdName, Strm, Percentage
FROM student
WHERE Percentage > 80;

SELECT * FROM student 
WHERE strm = 'Science' AND percentage > 75;










    
    
    
    






