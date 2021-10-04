USE gr691_msi
GO

----��������� �������� ������ � ��������� �� ���������� ���� ��� ���������

--EXEC sp_rename 'ACDEGREE', 'Academic_Degree'
--EXEC sp_rename 'ACKBOOK', 'Record_Book'
--EXEC sp_rename 'DOLZNOST', 'Post'
--EXEC sp_rename 'EKZAMEN', 'Exam'
--EXEC sp_rename 'FACULTY', 'Faculty'
--EXEC sp_rename 'GRUPPA', 'Group'
--EXEC sp_rename 'KAFEDRA', 'Department'
--EXEC sp_rename 'KURS', 'Course'
--EXEC sp_rename 'OBLAST', 'Field'
--EXEC sp_rename 'POL', 'Gender'
--EXEC sp_rename 'PREPOD', 'Teacher'
--EXEC sp_rename 'SEMESTR', 'Semester'
--EXEC sp_rename 'SPECIALNOST', 'Specialty'
--EXEC sp_rename 'STUD', 'Student'
--EXEC sp_rename 'SUBJECT', 'Subject'
--EXEC sp_rename 'TYPEOCH', 'Type_Of_Evaluation'
--EXEC sp_rename 'UROVEN', 'Level'

----��������� �������� ����� � ��������� �� ���������� ���� ��� ���������

--EXEC sp_rename 'Academic_Degree.ACDEGREE_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Academic_Degree.FK_UROVEN_ID', 'FK_Level_ID', 'COLUMN'
--EXEC sp_rename 'Academic_Degree.FK_OBLAST_ID', 'FK_Field_ID', 'COLUMN'
--EXEC sp_rename 'Academic_Degree.ACDEGREE', 'Name', 'COLUMN'
--EXEC sp_rename 'Academic_Degree.ACDEGREESHORT', 'Short_Name', 'COLUMN'

--EXEC sp_rename 'Course.KURS_ID', 'ID', 'COLUMN'

--EXEC sp_rename 'Department.KAFEDRA_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Department.KAFEDRA', 'Name', 'COLUMN'
--EXEC sp_rename 'Department.KAFEDRASHORT', 'Short_Name', 'COLUMN'

--EXEC sp_rename 'Exam.EKZAMEN_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Exam.FK_SPECIALNOST_ID', 'FK_Specialty_ID', 'COLUMN'
--EXEC sp_rename 'Exam.FK_SEMESTR_ID', 'FK_Semester_ID', 'COLUMN'
--EXEC sp_rename 'Exam.FK_SUBJECT_ID', 'FK_Subject_ID', 'COLUMN'
--EXEC sp_rename 'Exam.FK_PREPOD_ID', 'FK_Teacher_ID', 'COLUMN'

--EXEC sp_rename 'Faculty.FACULTY_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Faculty.FACULTY', 'Name', 'COLUMN'
--EXEC sp_rename 'Faculty.FACSHORT', 'Short_Name', 'COLUMN'

--EXEC sp_rename 'Field.OBLAST_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Field.OBLAST', 'Name', 'COLUMN'

--EXEC sp_rename 'Gender.POL_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Gender.POL', 'Name', 'COLUMN'
--EXEC sp_rename 'Gender.POL_SHORT', 'Short_Name', 'COLUMN'

--EXEC sp_rename 'Group.GRUPPA_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Group.FK_FACULTY_ID', 'FK_Faculty_ID', 'COLUMN'
--EXEC sp_rename 'Group.FK_KURS_ID', 'FK_Course_ID', 'COLUMN'
--EXEC sp_rename 'Group.FK_SPECIALNOST_ID', 'FK_Specialty_ID', 'COLUMN'
--EXEC sp_rename 'Group.GRUPPA', 'Name', 'COLUMN'

--EXEC sp_rename 'Level.UROVEN_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Level.UROVEN', 'Name', 'COLUMN'

--EXEC sp_rename 'Post.DOLZNOST_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Post.DOLZNOST', 'Name', 'COLUMN'

--EXEC sp_rename 'Record_Book.ACKBOOK_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Record_Book.FK_EKZAMEN_ID', 'FK_Exam_ID', 'COLUMN'
--EXEC sp_rename 'Record_Book.FK_STUD_ID', 'FK_Student_ID', 'COLUMN'
--EXEC sp_rename 'Record_Book.FK_TYPEOCH_ID', 'FK_Type_Of_Evaluation_ID', 'COLUMN'
--EXEC sp_rename 'Record_Book.DATAREC', 'Date_Of_Record', 'COLUMN'

--EXEC sp_rename 'Semester.SEMESTR_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Semester.FK_KURS_ID', 'FK_Course_ID', 'COLUMN'
--EXEC sp_rename 'Semester.SEMESTR', 'Number', 'COLUMN'

--EXEC sp_rename 'Specialty.SPECIALNOST_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Specialty.SPECIALNOST', 'Name', 'COLUMN'
--EXEC sp_rename 'Specialty.CODOCSO', 'Specialty_Code', 'COLUMN'

--EXEC sp_rename 'Student.STUD_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Student.FK_POL_ID', 'FK_Gender_ID', 'COLUMN'
--EXEC sp_rename 'Student.FK_GRUPPA_ID', 'FK_Group_ID', 'COLUMN'
--EXEC sp_rename 'Student.NOZACH', 'Record_Book_Number', 'COLUMN'
--EXEC sp_rename 'Student.LNAME', 'Last_Name', 'COLUMN'
--EXEC sp_rename 'Student.FNAME', 'First_Name', 'COLUMN'
--EXEC sp_rename 'Student.MNAME', 'Middle_Name', 'COLUMN'
--EXEC sp_rename 'Student.BIRTHDAY', 'Birthday', 'COLUMN'
--EXEC sp_rename 'Student.ROST', 'Height', 'COLUMN'
--EXEC sp_rename 'Student.VES', 'Weight', 'COLUMN'
--EXEC sp_rename 'Student.STIPENDIA', 'Scholarship', 'COLUMN'

--EXEC sp_rename 'Subject.SUBJECT_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Subject.SUBJECT', 'Name', 'COLUMN'
--EXEC sp_rename 'Subject.SHORTSUBJECT', 'Short_Name', 'COLUMN'

--EXEC sp_rename 'Teacher.PREPOD_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Teacher.FK_DOLZNOST_ID', 'FK_Post_ID', 'COLUMN'
--EXEC sp_rename 'Teacher.FK_ACDEGREE_ID', 'FK_Academic_Degree_ID', 'COLUMN'
--EXEC sp_rename 'Teacher.FK_KAFEDRA_ID', 'FK_Department_ID', 'COLUMN'
--EXEC sp_rename 'Teacher.LNAME', 'Last_Name', 'COLUMN'
--EXEC sp_rename 'Teacher.FNAME', 'First_Name', 'COLUMN'
--EXEC sp_rename 'Teacher.MNAME', 'Middle_Name', 'COLUMN'
--EXEC sp_rename 'Teacher.BIRTHDAY', 'Birthday', 'COLUMN'

--EXEC sp_rename 'Type_Of_Evaluation.TYPEOCH_ID', 'ID', 'COLUMN'
--EXEC sp_rename 'Type_Of_Evaluation.TYPEOCH', 'Evaluation', 'COLUMN'
--EXEC sp_rename 'Type_Of_Evaluation.COMENT', 'Comment', 'COLUMN'

--���������� � �������� ������

--ALTER TABLE Exam ADD FOREIGN KEY (FK_Specialty_ID) REFERENCES Specialty (ID) ON DELETE NO ACTION ON UPDATE NO ACTION
--ALTER TABLE Exam ADD FOREIGN KEY (FK_Subject_ID) REFERENCES Subject (ID) ON DELETE NO ACTION ON UPDATE NO ACTION
--ALTER TABLE Exam ADD FOREIGN KEY (FK_Teacher_ID) REFERENCES Teacher (ID) ON DELETE NO ACTION ON UPDATE NO ACTION
--ALTER TABLE Exam DROP CONSTRAINT FK__EKZAMEN__FK_SEME__373B3228

--ALTER TABLE [Group] ADD FOREIGN KEY (FK_Faculty_ID) REFERENCES Faculty (ID)
--ALTER TABLE [Group] ADD FOREIGN KEY (FK_Specialty_ID) REFERENCES Specialty (ID)
--ALTER TABLE [Group] DROP CONSTRAINT FK__GRUPPA__FK_KURS___39237A9A

--ALTER TABLE Student DROP CONSTRAINT FK__STUD__FK_GRUPPA___42ACE4D4
--ALTER TABLE Student DROP CONSTRAINT FK__STUD__FK_POL_ID__43A1090D

--ALTER TABLE Semester DROP CONSTRAINT FK__SEMESTR__FK_KURS__40C49C62

--ALTER TABLE Record_Book ADD FOREIGN KEY (FK_Type_Of_Evaluation_ID) REFERENCES Type_Of_Evaluation (ID) ON DELETE NO ACTION ON UPDATE NO ACTION
--ALTER TABLE Record_Book DROP CONSTRAINT FK__ACKBOOK__FK_EKZA__3552E9B6

--ALTER TABLE Teacher DROP CONSTRAINT FK__PREPOD__FK_ACDEG__3BFFE745
--ALTER TABLE Teacher DROP CONSTRAINT FK__PREPOD__FK_DOLZN__3CF40B7E
--ALTER TABLE Teacher DROP CONSTRAINT FK__PREPOD__FK_KAFED__3B0BC30C

--ALTER TABLE Academic_Degree DROP CONSTRAINT FK__ACDEGREE__FK_OBL__318258D2
--ALTER TABLE Academic_Degree DROP CONSTRAINT FK__ACDEGREE__FK_URO__32767D0B

--1-�� ������

--SELECT Student.Last_Name + ' ' + (SELECT SUBSTRING(Student.First_Name, 1, 1)) + '.' + (SELECT SUBSTRING(Student.Middle_Name, 1, 1)) + '.'
--AS '������� �.�.', '������ � ' + [Group].Name AS '������ � XXX'
--FROM [Group]
--JOIN Student ON Student.FK_Group_ID = [Group].ID

--2-�� ������

--SELECT Student.Last_Name + ' (��. ' + [Group].Name + ')' AS '������� (��. XXX)', Student.Birthday AS '���� ��������',
--CONVERT(NVARCHAR, DATEDIFF(YEAR, Student.Birthday, GETDATE())) + ' ���' AS '����� ������ ���'
--FROM Student
--JOIN [Group] ON Student.FK_Group_ID = [Group].ID

--3-�� ������

--SELECT DISTINCT Student.Last_Name FROM Student

--4-�� ������

--SELECT UPPER(Student.Last_Name) + ' ' + Student.First_Name + ' ' + Student.Middle_Name
--AS '���', [Group].Name + ' ������' AS 'XXX ��.'
--FROM [Group]
--JOIN Student ON Student.FK_Group_ID = [Group].ID
--WHERE Student.FK_Group_ID = 394

--5-�� ������

--SELECT Student.Record_Book_Number + '_' + Student.Last_Name + ' ' + Student.First_Name AS '������ ��������� �������� ����' FROM Student
--JOIN Gender ON Gender.ID = Student.FK_Gender_ID
--WHERE Gender.ID = 1 AND SUBSTRING(Student.Last_Name, 1, 1) = SUBSTRING(Student.First_Name, 1, 1)

--6-�� ������

--SELECT Student.Last_Name + ' ' + (SELECT SUBSTRING(Student.First_Name, 1, 1)) + '. ' + (SELECT SUBSTRING(Student.Middle_Name, 1, 1)) + '.' AS '������� �.�.',
--CONVERT(NVARCHAR, Student.Height) + ' �.' AS '����', 
--CASE 
--WHEN Student.Height < 1.55 THEN '������'
--WHEN Student.Height >= 1.55 AND Student.Height <= 1.85 THEN '�������'
--WHEN Student.Height > 1.85 THEN '�������'
--ELSE '��� ������.'
--END AS '��������� �����'
--FROM Student

--7-�� ������

--SELECT '������ � ' + [Group].Name AS '������ � XXX',
--COUNT(*) AS '���������� ���������',
--AVG(Student.Height) AS '������� ����'
--FROM Student
--JOIN [Group]
--ON Student.FK_Group_ID = [Group].ID
--GROUP BY [Group].Name ORDER BY '������� ����' DESC;

--SELECT TOP 1 '������ � ' + [Group].Name AS '������ � XXX',
--COUNT(*) AS '���������� ���������',
--AVG(Student.Height) AS '������� ����'
--FROM Student
--JOIN [Group]
--ON Student.FK_Group_ID = [Group].ID
--GROUP BY [Group].Name ORDER BY '������� ����' DESC;

--8-�� ������

--SELECT DATENAME(WEEKDAY, DATEPART(WEEKDAY, Student.Birthday)-1) AS '���� ������',
--	   COUNT(Student.ID) AS '���������� ���������',
--	   CAST(AVG(Student.Height) AS NVARCHAR) + ' �.' AS '������� ����',
--	   AVG(Student.Weight) AS '������� ���'
--FROM Student
--WHERE Student.FK_Gender_ID = 1
--GROUP BY DATEPART(WEEKDAY, Student.Birthday) ORDER BY DATEPART(WEEKDAY, Student.Birthday)

--SELECT TOP 1 DATENAME(WEEKDAY, DATEPART(WEEKDAY, Student.Birthday)-1) AS '���� ������',
--	   COUNT(Student.ID) AS '���������� ���������',
--	   CAST(AVG(Student.Height) AS NVARCHAR) + ' �.' AS '������� ����',
--	   AVG(Student.Weight) AS '������� ���'
--FROM Student
--WHERE Student.FK_Gender_ID = 1
--GROUP BY DATEPART(WEEKDAY, Student.Birthday) ORDER BY AVG(Student.Height) ASC

--9-�� ������

--SELECT Student.Last_Name + ' ' + LEFT(Student.First_Name, 1) + '.' + LEFT(Student.Middle_Name, 1) + '.' AS '������� �.�.', 
--Gender.Name AS '���', Student.Weight AS '���' FROM Student
--JOIN Gender ON Gender.ID = Student.FK_Gender_ID
--ORDER BY Gender.Name, Student.Weight

--10-�� ������

--SELECT Student.Last_Name + ' ' + LEFT(Student.First_Name, 1) + '.' + LEFT(Student.Middle_Name, 1) + '.' AS '�������',
--[Group].FK_Course_ID AS '����', '(' + CONVERT(NVARCHAR, Specialty.ID) + ') ' + Specialty.Name AS '�������������', 
--CAST(DATEDIFF(YEAR, Student.Birthday, GETDATE()) AS NVARCHAR) + ' ���' AS '����� ������ ���'
--FROM Student 
--JOIN [Group] ON [Group].ID = Student.FK_Group_ID
--JOIN Specialty ON Specialty.ID = [Group].FK_Specialty_ID 
--WHERE FK_Course_ID = 2