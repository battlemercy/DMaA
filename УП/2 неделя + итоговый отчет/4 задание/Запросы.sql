USE gr691_msi
GO

--1-�� ������

SELECT Last_Name AS '�������', First_Name AS '���', Middle_Name AS '��������' FROM Student

--2-�� ������

SELECT Teacher.Last_Name AS '�������', Subject.Name FROM Teacher
JOIN Subject ON Subject.FK_Teacher_ID = Teacher.ID
WHERE Subject.Name = '����������������'

--3-�� ������

SELECT Homework.Description FROM Homework
WHERE Homework.Status = '������'

--4-�� ������

SELECT Student.Last_Name AS '�������', 
	   Student.First_Name AS '���',
	   Student.Middle_Name AS '��������',
	   FK_Course_ID AS '����'
FROM Student
JOIN [Group] ON FK_Student_ID = Student.ID
WHERE FK_Course_ID = '1'

--5-�� ������

SELECT Student.Last_Name AS '�������', 
	   Student.First_Name AS '���',
	   Student.Middle_Name AS '��������',
	   Faculty.Name AS '���������',
	   FK_Course_ID AS '����'
FROM Student
JOIN [Group] ON FK_Student_ID = Student.ID
JOIN Faculty ON Faculty.ID = FK_Faculty_ID
WHERE Faculty.Name = '�������������� ���������' AND FK_Course_ID = '4'

--6-�� ������

SELECT Student.Last_Name AS '�������', 
	   Student.First_Name AS '���',
	   Student.Middle_Name AS '��������',
	   DATEDIFF(YEAR, Student.Date_Of_Birth, GETDATE()) AS '���������� ������ ���'
FROM Student
WHERE DATEDIFF(YEAR, Student.Date_Of_Birth, GETDATE()) > 30

--7-�� ������

SELECT Student.Last_Name AS '�������', 
	   Student.First_Name AS '���',
	   Student.Middle_Name AS '��������',
	   [Group].Name AS '������'
FROM Student
JOIN [Group] ON FK_Student_ID = Student.ID
WHERE [Group].Name = '602' OR [Group].Name = '603' OR [Group].Name = '609'

--8-�� ������

SELECT [Group].Name, Subject.Name
FROM [Group]
JOIN Subject_Group ON Subject_Group.PK_FK_Group_ID = [Group].ID
JOIN Subject ON Subject_Group.PK_FK_Subject_ID = Subject.ID

--9-�� ������

SELECT TOP 1 Student.Last_Name AS '�������',
AVG(CAST(Mark.Mark AS INT)) AS '������� ������'
FROM Student
JOIN Mark
ON Mark.FK_Student_ID = Student.ID
GROUP BY Student.Last_Name ORDER BY '������� ������' DESC

--10-�� ������

SELECT Teacher.Last_Name AS '�������',
	   Teacher.First_Name AS '���',
	   Teacher.Middle_Name AS '��������',
	   COUNT(FK_TEACHER_ID) AS '���������� ���������'
FROM Teacher
JOIN Subject ON Teacher.ID = Subject.FK_Teacher_ID
GROUP BY Teacher.Last_Name, Teacher.First_Name, Teacher.Middle_Name

--11-�� ������

SELECT Student.Last_Name AS '�������',
	   Student.First_Name AS '���',
	   Student.Middle_Name AS '��������',
	   [Group].FK_Course_ID AS '����'
FROM Student
JOIN [Group] ON [Group].FK_Student_ID = Student.ID

--12-�� ������

SELECT Specialty.Name AS '�������� �������������', Subject.NAME AS '�������� ��������'
FROM Specialty
JOIN [Group] ON Specialty.ID = [Group].FK_Specialty_ID
JOIN Subject_Group ON Subject_Group.PK_FK_Group_ID = [Group].ID
JOIN Subject ON Subject.ID = Subject_Group.PK_FK_Subject_ID

--13-�� ������

SELECT [Group].Name AS '������',
Student.Last_Name AS '�������',
Subject.Name AS '�������',
Mark.Date AS '������'
FROM Student
JOIN [Group] ON Student.FK_Group_ID = [Group].ID
JOIN Mark ON Mark.FK_Student_ID = Student.ID
JOIN Subject ON Subject.ID = Mark.FK_Subject_ID
WHERE Subject.Name = '����������������' AND [Group].Name= '602' AND MONTH(MARK.DATE) = 3 AND YEAR(Mark.Date) = 2020
ORDER BY FK_GROUP_ID

--14-�� ������

SELECT TOP 1 Student.Last_Name AS '�������',
AVG(CAST(Mark.Mark AS INT)) AS '������� ������'
FROM Student
JOIN Mark
ON Mark.FK_Student_ID = Student.ID
GROUP BY Student.Last_Name ORDER BY '������� ������' ASC

--15-�� ������

SELECT Homework.Description FROM Homework
WHERE Homework.Status != '������'