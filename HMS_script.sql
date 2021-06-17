USE [His_db]
GO

/****** Object: Table [dbo].[Appointments] Script Date: 17.06.2021 02:12:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [dbo].[Appointments];


GO
CREATE TABLE [dbo].[Appointments] (
    [Id]              INT      IDENTITY (1, 1) NOT NULL,
    [PatientId]       INT      NOT NULL,
    [DoctorId]        INT      NOT NULL,
    [AppointmentDate] DATETIME NOT NULL
);


USE [His_db]
GO

/****** Object: Table [dbo].[Doctors] Script Date: 17.06.2021 02:13:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Doctors] (
    [Id]        INT          IDENTITY (1, 1) NOT NULL,
    [FirstName] VARCHAR (50) NOT NULL,
    [LastName]  VARCHAR (50) NOT NULL
);


USE [His_db]
GO

/****** Object: Table [dbo].[Patients] Script Date: 17.06.2021 02:14:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Patients] (
    [Id]        INT          IDENTITY (1, 1) NOT NULL,
    [Tc_no]     VARCHAR (50) NOT NULL,
    [FirstName] VARCHAR (50) NOT NULL,
    [LastName]  VARCHAR (50) NOT NULL
);


SET IDENTITY_INSERT [dbo].[Appointments] ON
INSERT INTO [dbo].[Appointments] ([Id], [PatientId], [DoctorId], [AppointmentDate]) VALUES (6, 1002, 10, N'2021-06-16 10:15:00')
SET IDENTITY_INSERT [dbo].[Appointments] OFF


SET IDENTITY_INSERT [dbo].[Doctors] ON
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (3, N'Yalin', N'DEMIRCI')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (5, N'Asu', N'SAFAK')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (6, N'Canan', N'KÖKTAS')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (7, N'Erdem', N'ERYILDIZ')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (8, N'Ümmühan', N'KARADENIZ')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (9, N'Tugçe', N'DEVELI')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (10, N'Cevahir', N'SEGMEN')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (11, N'Mesut', N'ÇETINER')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (12, N'Betül', N'KAYA')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (13, N'Ahmet', N'KIRHAN')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (14, N'Ayse', N'DISLI')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (16, N'Sevim', N'KARAGÖL')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (17, N'Sifa', N'TEPECIK')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (18, N'Eyüpcan', N'ÇIRAK')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (19, N'Mehmet', N'SEN')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (20, N'Hüseyin', N'YALÇIN')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (21, N'Emine', N'ABACI')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (22, N'Ethem', N'EMEL')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (23, N'Aleyna', N'BOLAT')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (24, N'Dursun', N'GÜLYURT')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (7003, N'Ilkay', N'Çarikçi')
INSERT INTO [dbo].[Doctors] ([Id], [FirstName], [LastName]) VALUES (8004, N'Ahmet', N'Baran')
SET IDENTITY_INSERT [dbo].[Doctors] OFF


SET IDENTITY_INSERT [dbo].[Patients] ON
INSERT INTO [dbo].[Patients] ([Id], [Tc_no], [FirstName], [LastName]) VALUES (2, N'12345678984', N'Mehmet', N'Yıldırım')
INSERT INTO [dbo].[Patients] ([Id], [Tc_no], [FirstName], [LastName]) VALUES (1002, N'98745632115', N'Nehir', N'Çiçek')
INSERT INTO [dbo].[Patients] ([Id], [Tc_no], [FirstName], [LastName]) VALUES (2002, N'85479637412', N'Alihan', N'Çarikçi')
SET IDENTITY_INSERT [dbo].[Patients] OFF


