
use QuanLySinhVien;

select * from student;
select * from mark;

select Address, count(*) as 'Số lượng học viên'
from student
group by address;

select s.StudentID, s.StudentName, avg(m.Mark) as 'AverageMark'
from Student s
         join Mark m on s.StudentID = m.StudentID
group by s.StudentID
having avg(m.Mark) > 15;

select s.StudentID, s.StudentName, avg(m.Mark) as 'AverageMark'
from Student s
         join Mark m on s.StudentID = m.StudentID
group by s.StudentID
having avg(m.Mark) >= all(select avg(mark) from Mark group by StudentID);
