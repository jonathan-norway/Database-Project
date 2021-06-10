-- PROFESSORS --
select *, CONCAT(SUBSTRING(firstname,1,1),lastname,facultyID,"@faculty-school.edu") as Email
from professors;

-- PROFESSORS WHERE DEPARTMENT IS ENGLISH --
select *
from professors
WHERE Department = 'ENGLISH';

-- PROFESSORS WHERE STATE IS NEW YORK --
SELECT *
FROM PROFESSORS
WHERE State='New York';