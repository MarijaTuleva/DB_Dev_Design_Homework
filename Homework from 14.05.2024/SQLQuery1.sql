USE [master]

DROP DATABASE IF EXISTS [SEDCACADEMYDB]
GO

CREATE DATABASE [SEDCACADEMYDB]
GO
USE [SEDCACADEMYDB]

DROP TABLE IF EXISTS [dbo].[Teacher]
DROP TABLE IF EXISTS [dbo].[Student]
DROP TABLE IF EXISTS [dbo].[GradeDetails]
DROP TABLE IF EXISTS [dbo].[Grade]
DROP TABLE IF EXISTS [dbo].[Course]
DROP TABLE IF EXISTS [dbo].[AchievementType]
GO

CREATE TABLE [Student](
	Id INT IDENTITY(1,1) NOT NULL,
	FirstName NVARCHAR(40) NOT NULL,
	LastName NVARCHAR(40) NOT NULL,
	DateOfBirth date NULL,
	EnrolledDate date NULL,
	Gender NVARCHAR(20) NOT NULL,
	NationalIDNumber INT NULL,
	StudentCardNumber INT NULL
	
)

CREATE TABLE [Teacher](
	Id INT IDENTITY(1,1) NOT NULL,
	FirstName NVARCHAR(40) NOT NULL,
	LastName NVARCHAR(40) NOT NULL,
	DateOfBirth date NULL,
	AcademicRank date NULL,
	HireDate date NULL
)

CREATE TABLE [Grade](
	Id INT IDENTITY(1,1) NOT NULL,
	StudentID INT NOT NULL,
	CourseID INT NOT NULL,
	TeacherID INT NOT NULL,
	Grade INT NOT NULL,
	Comment NVARCHAR(60) NOT NULL,
	CreatedDate date NOT NULL
)

CREATE TABLE [Course](
	Id INT IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR(40) NOT NULL,
	Credit NVARCHAR(40) NOT NULL,
	AcademicYear date NOT NULL,
	Semester NVARCHAR(15) NOT NULL
)

CREATE TABLE [AchievementType](
	Id INT IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR(40) NOT NULL,
	[Description] NVARCHAR(40) NOT NULL,
	ParticipationRate Decimal(5,2) NULL
)

CREATE TABLE [GradeDetails](
	Id INT IDENTITY(1,1) NOT NULL,
	GradeID INT NULL,
	AchievementTypeID INT NULL,
	AchievementPoints INT NULL,
	AchievementMaxPoints INT NULL,
	AchievementDate date NULL
)

SELECT * FROM dbo.Student
SELECT * FROM dbo.Teacher
SELECT * FROM dbo.Grade
SELECT * FROM dbo.Course
SELECT * FROM dbo.AchievementType
SELECT * FROM dbo.GradeDetails