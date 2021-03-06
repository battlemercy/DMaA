USE gr691_msi
GO

INSERT INTO Course (ID) VALUES (1),
							   (2),
							   (3),
							   (4),
							   (5),
							   (6)

INSERT INTO Teacher VALUES ('????????', '?????', '???????????', '1980-11-27', 'Dankina', 'Alena'),
						   ('????????', '???????', '?????????', '1963-03-03', 'Stepanof', '228'),
						   ('??????', '???', '??????????', '1970-11-30', 'TitovaYana', '19701130'),
						   ('????????', '??????', '????????', '1974-05-30', 'Ermak', 'GETOVERHERE'),
						   ('?????????', '???????', '?????????', '1979-11-24', 'Chernishova', 'HeroIsMyth'),
						   ('???????', '?????', '????????????', '1964-11-11', 'Bocharov', 'ILoveYou'),
						   ('???????', '???????', '??????????', '1974-12-15', 'Smirnov', 'YarikBlin'),
						   ('????????', '?????', '????????', '1973-07-21', 'Kuznetsov', 'Romanchek1337'),
						   ('?????????', '??????', '?????????', '1950-01-06', 'Kirichenko', 'EdikMedik'),
						   ('????????', '??????', '??????????', '1980-11-27', 'Odintsova', 'Kekekekech')

INSERT INTO SUBJECT VALUES ('?????????????? ???????', 1),
						   ('????????????????', 2),
						   ('?????????????? ??????', 3),
						   ('???????????', 4),
						   ('????????????? ?????????', 5),
						   ('????????????? ???????', 6),
						   ('??????? ????', 7),
						   ('?????', 8),
						   ('???????', 9),
						   ('?????????', 10)

INSERT INTO Faculty VALUES ('??????????????? ????????'),
						   ('?????????????? ?????????'),
						   ('????????? ?????????? ????????'),
						   ('???????????? ?????????'),
						   ('???????? ?????????? ? ??????????'),
						   ('???????? ???-??? ???????????'),
						   ('??????????? ????????'),
						   ('????????-?????????????? ?????????'),
						   ('????????? ????????????? ??????????'),
						   ('??????-??????????? ?????????')

INSERT INTO Specialty VALUES ('?????????? ? ????????????', '111-222-333333'),
							 ('?????????????? ?????? ? ?????????', '222-333-444444'),
							 ('?????', '333-444-555666'),
							 ('??????? ???? ? ??????????', '456-789-000000'),
							 ('?????????? ??????????', '123-456-789123'),
							 ('?????????? ? ??????????', '228-322-133728'),
							 ('?????????? ? ???????? ??????????? ???????????', '322-228-148828'),
							 ('???????? ?????????????? ??????????', '133-722-814883'),
							 ('?????? ? ???. ????. ???????????', '548-547-345985'),
							 ('?????????-?????????? ?????? ? ??????', '475-584-278465')

INSERT INTO Student VALUES ('1', '?????????', '??????', '??????????', '1992-04-29', 'Kuznechik', 'Nina0'),
						   ('1', '???????', '?????', '??????????', '1991-08-20', 'Gladkaya', 'Lidiya'),
						   ('2', '???????', '????????', '?????????', '1992-04-27', 'Hohol', 'LYALYA'),
						   ('2', '??????????', '????????', '????????', '1991-02-04', 'Cherdak', 'Malvina'),
						   ('3', '????????', '????', '????????????', '1991-12-25', 'Savchenko', 'Emmo4ka'),
						   ('3', '?????????', '???????', '???????????', '1991-07-23', 'Stepanova', 'Valeriya'),
						   ('4', '???????', '???????', '???????????', '1991-12-07', 'Belka', 'Eveline'),
						   ('4', '????????', '??????', '?????????', '1989-11-21', 'Morozova', 'Karina'),
						   ('5', '????????', '?????????', '?????????????', '1989-03-19', 'Kuda', 'Tuda'),
						   ('5', '???????????', '?????', '????????????', '1991-09-08', 'Koleso', 'Egine'),
						   ('6', '???????', '???????', '??????????', '1992-06-30', 'Black', 'Warwara'),
						   ('6', '??????', '???????', '????????', '1989-05-21', 'Ushakov', 'Allo'),
						   ('7', '????????', '??????', '???????????', '1989-01-03', 'Shevchenko', 'Rusich'),
						   ('7', '?????', '?????????', '???????', '1992-07-02', 'Fomka', 'Stasik'),
						   ('8', '?????????', '?????', '??????????', '1989-01-27', 'Kirill', 'Roman'),
						   ('8', '?????????', '????', '?????????', '1989-01-17', 'Plochadka', 'Egorka'),
						   ('9', '??????', 'ϸ??', '??????????', '1992-07-22', 'Zlobin', 'Shutka'),
						   ('9', '????????', '???????', '??????????', '1992-02-14', 'Scherbinin', 'LEHA'),
						   ('10', '?????????', '????', '???????????', '1990-12-31', 'Kovalski', 'Ilya'),
						   ('10', '??????', '???????', '???????????', '1989-07-20', 'Ivanov', 'Ivan')

INSERT INTO Mark VALUES ('3', '1', '14-01-2021', '5'),
						('2', '2', '25-03-2020', '4'),
						('1', '3', '05-05-2019', '3'),
						('4', '4', '10-07-2018', '2'),
						('5', '7', '20-09-2017', '?'),
						('7', '9', '27-02-2016', '?'),
						('9', '15', '15-06-2022', '5'),
						('10', '19', '23-02-2015', '2'),
						('6', '20', '20-03-2014', '3'),
						('8', '10', '10-10-2010', '?')

INSERT INTO [Group] VALUES ('1', '10', '1', '1', '10', '602'),
						   ('3', '19', '2', '3', '2', '603'),
						   ('4', '9', '2', '3', '4', '605'),
						   ('2', '6', '4', '5', '6', '607'),
						   ('7', '3', '4', '4', '8', '606'),
						   ('6', '4', '5', '2', '1', '604'),
						   ('9', '15', '5', '7', '3', '608'),
						   ('5', '17', '6', '7', '5', '609'),
						   ('10', '13', '6', '9', '7', '601'),
						   ('8', '12', '6', '8', '8', '600')

INSERT INTO Homework VALUES ('3', '2', '25-02-2021', '????????? ???. 45-60', '??????'),
							('5', '1', '01-01-2020', '????????? ??????????', '?? ??????'),
							('7', '5', '03-05-2021', '??? ???????', '??????'),
							('9', '7', '07-07-2019', '??????? ?????', '??????'),
							('10', '10', '10-09-2020', '????????????? ? ???. ??????', '??????'),
							('2', '9', '12-12-2018', '?????????', '??????'),
							('4', '9', '10-10-2017', '?????????? ????', '?? ??????'),
							('6', '3', '06-08-2020', '?????? ????????', '??????'),
							('8', '6', '20-05-2020', '???', '??????'),
							('1', '8', '15-03-2017', '??? ????', '????')

INSERT INTO Subject_Group VALUES (1, 2),
								 (1, 3),
								 (2, 4),
								 (5, 10),
								 (6, 5),
								 (7, 6),
								 (8, 9),
								 (1, 10),
								 (3, 1),
								 (6, 6)