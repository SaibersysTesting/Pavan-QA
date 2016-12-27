Drop Table Student
Create Table Student
(
StudentID Int,
FirstName Varchar(30),
ProfessorID Int
)

Insert into Student(StudentID, FirstName, ProfessorID)
Values (1, 'S1', '1'),
	(2, 'S2', '1'),
	(3, 'S3', '2'),
	(4, 'S4', '2'),
	(5, 'S5', '3'),
	(6, 'S6', '6'),
	(7, 'S7', '6')
Select * From Student

Create Table Professor
(
ProfessorID Int,
ProfessorName Varchar(30)
)

Insert into Professor(ProfessorID, ProfessorName)
Values (1, 'P1'),
	(2, 'P2'),
	(3, 'P3'),
	(4, 'P4')
Select * From Professor 
--1)WAQ TO DISPLAY PROFESSOR NAME AND STUDENT NAME (RESULT SET:PROFESSORNAME,STUDENTNAME)
	Select P.ProfessorName, S.FirstName As StudentName
From Professor P	
Join Student S On P.ProfessorID=S.ProfessorID 	


--2)WAQ TO DISPLAY ALL THE STUDENTNAMES AND PROFESSOR NAMES EVEN IF THERE IS NO PROFESOR ASSIGNED
--(RESULT SET:PROFESSORNAME,STUDENTNAME)
	Select P.ProfessorName, S.FirstName As StudentName
From Professor P	
Right Outer Join Student S On P.ProfessorID=S.ProfessorID

--3)WAQ TO DISPLAY ALL THE PROFESSORNAMES AND STUDENT NAMES EVEN IF THERE IS NO STUDENT 
--(RESULT SET:PROFESSORNAME,STUDENTNAME)

	Select P.ProfessorName, S.FirstName As StudentName
From Professor P	
Left Outer Join Student S On P.ProfessorID=S.ProfessorID

--4)WAQ TO DISPLAY PROFESSORNAME WITH MORE THAN 1 STUDENT  (RESULT SET:PROFESSORNAME)
With Student1 As
(
Select ProfessorName, Count(FirstName) As StuCount
From Professor P
Join Student S On S.ProfessorID=P.ProfessorID  
Group By ProfessorName
)
Select ProfessorName from Student1
where StuCount>1



--5)WAQ TO DISPLAY PROFESSOR NAME WITH NO STUDENTS ASSGINED(RESULT SET:PROFESSORNAME)
Select ProfessorName
 From Professor
  where ProfessorName not in (
 Select P.ProfessorName
From Professor P	
Join Student S On P.ProfessorID=S.ProfessorID 	
 )

--6)WAQ TO DISPLAY STUDENT NAME WITH NO PROFESSOR (RESULT SET:STUDENTNAME)

Select S.FirstName As StudentName
From Student S
Where FirstName not in(
Select S.FirstName 
 From Professor p
  join Student S on P.ProfessorID=S.ProfessorID 	
 )

