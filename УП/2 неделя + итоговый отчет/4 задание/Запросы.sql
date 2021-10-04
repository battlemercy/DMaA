USE gr691_msi
GO

--1-ый запрос

SELECT Last_Name AS 'Фамилия', First_Name AS 'Имя', Middle_Name AS 'Отчество' FROM Student

--2-ой запрос

SELECT Teacher.Last_Name AS 'Фамилия', Subject.Name FROM Teacher
JOIN Subject ON Subject.FK_Teacher_ID = Teacher.ID
WHERE Subject.Name = 'Программирование'

--3-ий запрос

SELECT Homework.Description FROM Homework
WHERE Homework.Status = 'Выдано'

--4-ый запрос

SELECT Student.Last_Name AS 'Фамилия', 
	   Student.First_Name AS 'Имя',
	   Student.Middle_Name AS 'Отчество',
	   FK_Course_ID AS 'Курс'
FROM Student
JOIN [Group] ON FK_Student_ID = Student.ID
WHERE FK_Course_ID = '1'

--5-ый запрос

SELECT Student.Last_Name AS 'Фамилия', 
	   Student.First_Name AS 'Имя',
	   Student.Middle_Name AS 'Отчество',
	   Faculty.Name AS 'Факультет',
	   FK_Course_ID AS 'Курс'
FROM Student
JOIN [Group] ON FK_Student_ID = Student.ID
JOIN Faculty ON Faculty.ID = FK_Faculty_ID
WHERE Faculty.Name = 'Филологический факультет' AND FK_Course_ID = '4'

--6-ой запрос

SELECT Student.Last_Name AS 'Фамилия', 
	   Student.First_Name AS 'Имя',
	   Student.Middle_Name AS 'Отчество',
	   DATEDIFF(YEAR, Student.Date_Of_Birth, GETDATE()) AS 'Количество полных лет'
FROM Student
WHERE DATEDIFF(YEAR, Student.Date_Of_Birth, GETDATE()) > 30

--7-ой запрос

SELECT Student.Last_Name AS 'Фамилия', 
	   Student.First_Name AS 'Имя',
	   Student.Middle_Name AS 'Отчество',
	   [Group].Name AS 'Группа'
FROM Student
JOIN [Group] ON FK_Student_ID = Student.ID
WHERE [Group].Name = '602' OR [Group].Name = '603' OR [Group].Name = '609'

--8-ой запрос

SELECT [Group].Name, Subject.Name
FROM [Group]
JOIN Subject_Group ON Subject_Group.PK_FK_Group_ID = [Group].ID
JOIN Subject ON Subject_Group.PK_FK_Subject_ID = Subject.ID

--9-ой запрос

SELECT TOP 1 Student.Last_Name AS 'Фамилия',
AVG(CAST(Mark.Mark AS INT)) AS 'Средняя оценка'
FROM Student
JOIN Mark
ON Mark.FK_Student_ID = Student.ID
GROUP BY Student.Last_Name ORDER BY 'Средняя оценка' DESC

--10-ый запрос

SELECT Teacher.Last_Name AS 'Фамилия',
	   Teacher.First_Name AS 'Имя',
	   Teacher.Middle_Name AS 'Отчество',
	   COUNT(FK_TEACHER_ID) AS 'Количество предметов'
FROM Teacher
JOIN Subject ON Teacher.ID = Subject.FK_Teacher_ID
GROUP BY Teacher.Last_Name, Teacher.First_Name, Teacher.Middle_Name

--11-ый запрос

SELECT Student.Last_Name AS 'Фамилия',
	   Student.First_Name AS 'Имя',
	   Student.Middle_Name AS 'Отчество',
	   [Group].FK_Course_ID AS 'Курс'
FROM Student
JOIN [Group] ON [Group].FK_Student_ID = Student.ID

--12-ый запрос

SELECT Specialty.Name AS 'Название специальности', Subject.NAME AS 'Название предмета'
FROM Specialty
JOIN [Group] ON Specialty.ID = [Group].FK_Specialty_ID
JOIN Subject_Group ON Subject_Group.PK_FK_Group_ID = [Group].ID
JOIN Subject ON Subject.ID = Subject_Group.PK_FK_Subject_ID

--13-ый запрос

SELECT [Group].Name AS 'Группа',
Student.Last_Name AS 'Фамилия',
Subject.Name AS 'Предмет',
Mark.Date AS 'Оценка'
FROM Student
JOIN [Group] ON Student.FK_Group_ID = [Group].ID
JOIN Mark ON Mark.FK_Student_ID = Student.ID
JOIN Subject ON Subject.ID = Mark.FK_Subject_ID
WHERE Subject.Name = 'Программирование' AND [Group].Name= '602' AND MONTH(MARK.DATE) = 3 AND YEAR(Mark.Date) = 2020
ORDER BY FK_GROUP_ID

--14-ый запрос

SELECT TOP 1 Student.Last_Name AS 'Фамилия',
AVG(CAST(Mark.Mark AS INT)) AS 'Средняя оценка'
FROM Student
JOIN Mark
ON Mark.FK_Student_ID = Student.ID
GROUP BY Student.Last_Name ORDER BY 'Средняя оценка' ASC

--15-ый запрос

SELECT Homework.Description FROM Homework
WHERE Homework.Status != 'Выдано'