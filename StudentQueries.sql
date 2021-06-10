
 -- OUTPUTS ALL STUDENTS INCL EMAILS
select *, CONCAT(SUBSTRING(firstname,1,1),lastname,studentid,"@school.edu") as Email
from student;

-- OUTPUTS ALL STUDENTS WITH SIBLINGS
select student.studentID, student.Lastname, student.Firstname, student.Major,
	student.State, sibling.SiblingName, sibling.Age
from student
INNER JOIN sibling
on sibling.studentID = student.studentID;

-- OUTPUTS ALL STUDENTS WITH NO MAJOR
SELECT *
FROM STUDENT
WHERE Major='UNDECIDED';

