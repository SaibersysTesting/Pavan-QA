Create Schema Practice
Create Table Practice.Student
(
StudentID Int Identity(1,1),
FirstName Varchar(20)
)
Select * From Practice.Student
;
Create Procedure Usp_iStudentDetails
@StudentName Varchar(20)
As
Begin
Insert Practice.Student(FirstName)
Values(@StudentName)
Select SCOPE_IDENTITY() As StudentID
End
Exec Usp_iStudentDetails 'Satya'
------------------------------

Create Table Practice.Professor
(
ProfessorID Int Identity(1,1),
ProfessorName Varchar(20)
)

Create Procedure Usp_iStudenProfDetails
@StudentName Varchar(20),
@ProfessorName Varchar(20)
As
Begin
Insert Practice.Professor(professorName)
Values(@ProfessorName)
Insert Practice.Student(FirstName)
Values(@StudentName)
Select SCOPE_IDENTITY() As StudentID
End
Exec Usp_iStudentDetails 'Satya'