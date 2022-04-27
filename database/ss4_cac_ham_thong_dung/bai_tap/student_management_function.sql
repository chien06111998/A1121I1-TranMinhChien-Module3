use quan_ly_sinh_vien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) all.
select * from Subject;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.

Select * from subject 
where Credit in 
(
	select max(subject.Credit) from Subject
);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select * from mark
where Mark in (
	select max(mark.Mark) from mark
);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần.

select * , avg(Mark) from student join mark on student.StudentId = Mark.StudentId
group by mark.StudentId
order by avg(mark.Mark) asc;




	