use QuanLySinhVien;

select *
from subject
where credit >= all(select credit from subject);

select * from Mark;

select sub.SubID, sub.SubName, sub.Credit, sub.Status, m.Mark
from Subject sub
         join Mark m on sub.SubID = m.SubID
where m.Mark >= all(select mark from Mark);

select * from Student;

select s.StudentID, s.StudentName, s.Address, s.Phone, s.Status, avg(m.Mark) as AverageMark
from Student s
         left join Mark m on s.StudentID = m.StudentID
group by s.StudentID
order by AverageMark desc;