
USE QuanLySinhVien;

SELECT * FROM Mark;

SELECT * FROM Student
WHERE StudentName LIKE 'h%';

SELECT * FROM Class
WHERE MONTH(startdate) = 12;

SELECT * FROM Subject
WHERE credit BETWEEN 3 AND 5;

UPDATE student
SET classID = 2
WHERE studentName = 'Hung';

SELECT s.studentName, m.Mark, sub.subName
FROM student s
         JOIN Mark m ON s.studentID = m.studentID
         JOIN subject sub ON m.subID = sub.subID
ORDER BY m.Mark DESC, s.studentName ASC;
