DROP database University_DB;
CREATE database if not exists University_DB;
USE University_DB;

CREATE TABLE IF NOT EXISTS professors (
	FacultyID INT NOT NULL AUTO_INCREMENT,
    Department varchar(10) DEFAULT 'Temporary',
    Lastname varchar(40) NOT NULL,
    Firstname varchar(40) NOT NULL,
    State varchar(20),
    Email varchar(50) NULL,
    
    PRIMARY KEY(FacultyID),
    
    CONSTRAINT DEP_OPTIONS CHECK (Department='Econ' OR Department='Math' OR Department='English' OR DEPARTMENT='Art' OR DEPARTMENT='Temporary')
);
ALTER TABLE professors AUTO_INCREMENT=870;
ALTER TABLE professors ADD CONSTRAINT UNIQUE(Firstname, Lastname);
ALTER TABLE professors
	ALTER COLUMN Lastname set default " ",
    ALTER COLUMN Firstname set default " ";
ALTER TABLE professors DROP Email;

CREATE TABLE IF NOT EXISTS course (
	CourseID INT NOT NULL AUTO_INCREMENT,
    Classname varchar(10) NOT NULL,
    FacultyID INT,
    Room INT,
    EndDate date,
    
    PRIMARY KEY(CourseID),
    FOREIGN KEY (FacultyID) REFERENCES professors(FacultyID)
		ON UPDATE CASCADE ON DELETE SET NULL,
    
    CONSTRAINT ROOMNUM CHECK (Room>=50 AND Room<=120)
);
ALTER TABLE course AUTO_INCREMENT=2300;
ALTER TABLE course 
MODIFY COLUMN Classname varchar(25);
ALTER TABLE course
MODIFY COLUMN EndDate varchar(25);



CREATE TABLE IF NOT EXISTS student (
	StudentID INT NOT NULL AUTO_INCREMENT,
    Lastname varchar(30) NOT NULL,
    Firstname varchar(20) NOT NULL,
    Major varchar(20) DEFAULT 'UNDECIDED',
    Email varchar(50) NOT NULL UNIQUE,
	State varchar(20),
    
    PRIMARY KEY(StudentID)
);
ALTER TABLE student AUTO_INCREMENT=4410;
ALTER TABLE student ADD CONSTRAINT VALIDNAME UNIQUE(Firstname, Lastname);
ALTER TABLE student DROP Email;


CREATE TABLE IF NOT EXISTS transcript (
	StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    Grade varchar(5) NOT NULL,
    
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES student(StudentID)
		ON UPDATE CASCADE ON DELETE NO ACTION,
    FOREIGN KEY (CourseID) REFERENCES course(CourseID)
		ON UPDATE NO ACTION ON DELETE NO ACTION
);


CREATE TABLE IF NOT EXISTS tuitiontable (
	dDate DATE NOT NULL,
    TuitionFees DOUBLE NOT NULL UNIQUE,
    
    PRIMARY KEY (dDate)
);
ALTER TABLE tuitiontable
MODIFY COLUMN dDate varchar(25);
Alter table billing
modify column dDate varchar(25);

CREATE TABLE IF NOT EXISTS billing (
	BillNumber INT NOT NULL AUTO_INCREMENT,
    StudentID INT NOT NULL,
    dDate DATE NOT NULL,
    Paid DOUBLE NOT NULL,
    TuitionFees DOUBLE NOT NULL,
    OutstandingBalance DOUBLE NOT NULL,
    
    PRIMARY KEY (BillNumber),
    FOREIGN KEY (StudentID) REFERENCES student(StudentID)
		ON UPDATE CASCADE ON DELETE NO ACTION,
    FOREIGN KEY (TuitionFees) REFERENCES tuitiontable(TuitionFees)
		ON UPDATE CASCADE ON DELETE NO ACTION,
    FOREIGN KEY (dDate) REFERENCES tuitiontable(dDate)
		ON UPDATE CASCADE ON DELETE NO ACTION
);
ALTER TABLE billing AUTO_INCREMENT=9970;
ALTER TABLE billing DROP FOREIGN KEY billing_ibfk_2;
ALTER TABLE billing DROP TuitionFees;

CREATE TABLE IF NOT EXISTS sibling (
	SiblingNumber INT NOT NULL AUTO_INCREMENT,
	StudentID INT NOT NULL,
    SiblingName varChar(20) NOT NULL,
    Age INT NOT NULL DEFAULT '10',
    
    PRIMARY KEY (SiblingNumber),
    FOREIGN KEY (StudentID) REFERENCES student(StudentID)
		ON UPDATE CASCADE ON DELETE NO ACTION
);
ALTER TABLE sibling ADD CONSTRAINT VALIDSIBLING UNIQUE(StudentID, SiblingName);



