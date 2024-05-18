USE [SEDC_ACADEMY_HOMEWORK]

SELECT * FROM [dbo].[Student]
WHERE [FirstName] = 'Antonio'

SELECT * FROM [dbo].[Student]
WHERE [DateOfBirth] > '1999.01.01'

SELECT * FROM [dbo].[Student]
WHERE [LastName] LIKE 'J%' AND [EnrolledDate] >= '1998.01.01' AND [EnrolledDate] <= '1998.01.31'

SELECT * FROM [dbo].[Student]
ORDER BY [FirstName]

SELECT [LastName] FROM [dbo].[Teacher]
UNION
SELECT [LastName] FROM [dbo].[Student]