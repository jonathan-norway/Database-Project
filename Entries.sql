-- PROFESSOR TABLE ENTRIES --
-- Department='Econ' OR Department='Math' OR Department='English' OR 'A --
INSERT INTO professors (Department,Lastname,Firstname,State)
VALUES
	('Math', 'Johnsen', 'Carl', 'Arizona'),
    ('Econ', 'Harris', 'Mary', 'New York'),
    ('Art', "O'Connor", 'London', "Maine"),
    ('English', 'Dela', "Robert", "Illinois"),
	('English', 'Thompson', 'Linn', "North Dakota");
    
INSERT INTO professors(Email)
	SELECT CONCAT(SUBSTRING(professors.Firstname,1,1),professors.Lastname,FacultyID,"@faculty-school.edu")
	FROM professors;

    


-- COURSES TABLE ENTRIES 	Room>=50 AND Room<=120			STR_TO_DATE('07-25-2012','%m-%d-%y')
INSERT INTO course (Classname,FacultyID,Room,EndDate)
	VALUES
    ("Pre-Calculus", 870, 60, "2019-12-20"),
    ("Calculus I", 870, 66, "2019-12-20"),
    ("Statistics", 870, 62, "2019-12-20"),
    ("Quantitive Analysis", 870, 63, "2020-05-11"),
    ("Trigonometry", 870, 65, "2020-05-11"),
    ("Calculus II", 870, 70, "2020-05-11"),
	("Pre-Calculus", 870, 60, "2020-12-20"),
    ("Calculus I", 870, 66, "2020-12-20"),
    ("Discrete Structures", 870, 62, "2020-12-20"),
    ("Quantitive Analysis", 870, 63, "2021-05-11"),
    ("Trigonometry", 870, 65, "2021-05-11"),
    ("Calculus II", 870, 70, "2021-05-11"),
    ("Macro Economics", 871, 110, "2019-12-20"),
    ("Micro Economics", 871, 112, "2019-12-20"),
    ("Advertising", 871, 116, "2019-12-20"),
    ("Business Admin", 871, 120, "2020-05-11"),
    ("Market Analysis", 871, 80, "2020-05-11"),
    ("Recession Analysis", 871, 89, "2020-05-11"),
	("Macro Economics", 871, 110, "2020-12-20"),
    ("Micro Economics", 871, 92, "2020-12-20"),
    ("Advertising", 871, 110, "2020-12-20"),
    ("Business Admin", 871, 118, "2021-05-11"),
    ("Market Analysis", 871, 67, "2021-05-11"),
    ("Recession Analysis", 871, 90, "2021-05-11"),
    ("European Art", 872, 100, "2019-12-20"),
    ("Asian Art", 872, 105, "2019-12-20"),
    ("Modern Art", 872, 110, "2019-12-20"),
    ("Street Art", 872, 74, "2020-05-11"),
    ("Art Mediums", 872, 80, "2020-05-11"),
    ("Paint Analysis", 872, 102, "2020-05-11"),
    ("European Art", 872, 101, "2020-12-20"),
    ("Asian Art", 872, 106, "2020-12-20"),
    ("Modern Art", 872, 111, "2020-12-20"),
    ("Street Art", 872, 89, "2021-05-11"),
    ("Art Mediums", 872, 103, "2021-05-11"),
    ("Paint Analysis", 872, 65, "2021-05-11"),
    ("English Lit", 873, 60, "2020-12-20"),
    ("American Lit", 873, 61, "2020-12-20"),
    ("Social Justice", 873, 70, "2020-12-20"),
    ("Nordic Lit", 873, 89, "2021-05-11"),
    ("Journalism", 873, 93, "2021-05-11"),
    ("Religious Writings", 873, 101, "2021-05-11"),
    ("English Lit", 873, 60, "2019-12-20"),
    ("American Lit", 873, 61, "2019-12-20"),
    ("Social Justice", 873, 70, "2019-12-20"),
    ("Nordic Lit", 873, 89, "2020-05-11"),
    ("Journalism", 873, 93, "2020-05-11"),
    ("Religious Writings", 873, 101, "2020-05-11"),
    ("Movie Lit", 874, 66, "2020-12-20"),
    ("English Writing", 874, 117, "2020-12-20"),
    ("English Reading", 874, 71, "2020-12-20"),
    ("Text Translations", 874, 98, "2021-05-11"),
    ("Arabic Literature", 874, 96, "2021-05-11"),
    ("Essays", 874, 101, "2021-05-11"),
    ("English Lit", 874, 60, "2019-12-20"),
    ("American Lit", 874, 61, "2019-12-20"),
    ("Social Justice", 874, 78, "2019-12-20"),
    ("French Lit", 874, 90, "2020-05-11"),
    ("Journalism", 874, 103, "2020-05-11"),
    ("Political Writings", 874, 101, "2020-05-11");
    

INSERT INTO student (Lastname,Firstname,Major, state)
VALUES 
	("Karlsen", "Jonathan", "Computer Science", "Alaska"),
    ("Carrsen", "Jon", "Cyber Security", "New York"),
    ("Johnsen", "Peter", "English", "California"),
    ("Horton", "Tim", "Journalism", "Delaware"),
    ("Chaim", "Jim", "Mathematics", "Connecticut"),
    ("Hart", "Anna", "Advertising", "Texas"),
    ("Yui", "Yang", "Marketing", "Maine"),
    ("Storm", "Jack", "Accounting", "Vermont"),
    ("Jackson", "Tom", "English", "New Hampshire"),
    ("Thompson", "Jeff", "Education", "Pennsylvania"),
    ("Russell", "Tom", "Criminal Justice", "Kentucky"),
    ("Bergen", "Anita", "Journalism", "New York"),
    ("Jan", "Caroline", "Marketing", "New Jersey"),
    ("White", "Anthony", "Computer Science", "Alabama"),
    ("Onga", "Bjorn", "Physics", "California"),
    ("Chen", "Meghan", "English", "New York"),
    ("Spuyden", "Derek", "Management", "Mississippi");
    INSERT INTO student (Lastname, Firstname, state)
    values
    ("Johnsen", "Andreas", "Nebraska"),
    ("Yim", "Peter", "Minnesota"),
    ("Yeni", "Christina", "Texas"),
    ("Kathrine", "Lena", "New Jersey"),
    ("Kandon", "Matt", "Florida"),
    ("April", "Theresa", "New York");
    
INSERT INTO student (Lastname,Firstname,Major, state)
VALUES 
("Hogli", "Mats", "Cyber Security", "Arizona"),
("Jansen", "Ine", "Finance", "New Mexico"),
("Gjertsen", "Thomas", "Social Work", "Missouri"),
("Sonsen", "Vanessa", "Chemistry", "North Dakota"),
("Moonsen", "Valerie", "Biology", "South Dakota"),
("Svenson", "Scott", "Marketing", "Ohio"),
("Rie", "Marcus", "Accounting", "Illinois"),
("Rum", "Randall", "English", "New York"),
("Stan", "Jim", "Marketing", "New Jersey"),
("McDam", "Herald", "Mathematics", "Vermont"), 
("Church", "Eric", "Finance", "Texas"),
("Lewis", "Stan", "Journalism", "Washington"),
("Pyt", "Olaf", "Computer Science", "Oregon"),
("Reed", "Jerry", "Cyber Security", "California"),
("Rogers", "Kenny", "Education", "Alabama"),
("Bryan", "Luke", "Exercise Science", "Georgia"),
("Stapleton", "Chris", "Cyber Security", "Oklahoma");
    
    

INSERT INTO tuitiontable
VALUES
 ('2019-12-20', 18000),
 ('2020-05-11', 18550),
 ('2020-12-20', 19250),
 ('2021-05-11', 19880);
 

INSERT INTO transcript (StudentID, CourseID, Grade)
SELECT student.StudentID, course.CourseID, SUBSTRING('ABCDF',CEILING(rand()*4.1),1)
FROM student, course;


INSERT INTO sibling(StudentID, SiblingName, Age)
VALUES (4410, 'Valentin', 15),
(4410, 'Peter', 7),
(4440, 'Johnny', 10),
(4420, 'Bradley', 18),
(4414, 'Kim', 9),
(4431, 'Erica', 13),
(4428, 'Elise', 14),
(4444, 'Sophie', 15),
(4413, 'Christian', 4),
(4413, 'Amanda', 6);
	
