USE quan_ly_sinh_vien;
SELECT 
  * 
FROM 
  classes;
SELECT 
  * 
FROM 
  subjects;
SELECT 
  * 
FROM 
  students;
SELECT 
  * 
FROM 
  mark;
  
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất
SELECT 
  * 
FROM 
  subjects s 
WHERE s.credit=( SELECT max(credit) FROM subjects);
  
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT 
    s.*, m.mark
FROM
    subjects s
        INNER JOIN
    mark m
ORDER BY m.mark DESC
LIMIT 1;
  
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT 
  s.*, 
  AVG(m.mark) AS diem_trung_binh 
FROM 
  students s 
  INNER JOIN mark m ON m.student_id = s.student_id 
GROUP BY 
  m.student_id 
ORDER BY 
  diem_trung_binh DESC;
