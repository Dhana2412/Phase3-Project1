create database Phase3Db
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(50)
);
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender CHAR(1),
    ClassID INT
    
);

-- Create the Subjects table
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(100)
);

select* from classes;
select* from Student;
select * from subjects;
CREATE INDEX IX_Student_ClassID ON Student (ClassID);

-- Create an index on the SubjectName column of the Subjects table
CREATE INDEX IX_Subjects_SubjectName ON Subjects (SubjectName);
CREATE INDEX IX_Classes_ClassName ON Classes (ClassName);
