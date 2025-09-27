select st.student_id,st.student_name, st.subject_name, isnull(ex.attended_exams ,0)attended_exams 

from (select * from Students,Subjects) st left outer join 

(select student_id, subject_name, count(*) attended_exams  from Examinations
	group by student_id, subject_name
)  ex	 

on st.student_id = ex.student_id and st.subject_name = ex.subject_name

order by student_id, subject_name
