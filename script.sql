USE [master]
GO
/****** Object:  Database [KT05]    Script Date: 16.10.2024 14:36:40 ******/
CREATE DATABASE [KT05]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KT05', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KT05.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KT05_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KT05_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KT05] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KT05].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KT05] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KT05] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KT05] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KT05] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KT05] SET ARITHABORT OFF 
GO
ALTER DATABASE [KT05] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KT05] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KT05] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KT05] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KT05] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KT05] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KT05] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KT05] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KT05] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KT05] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KT05] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KT05] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KT05] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KT05] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KT05] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KT05] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KT05] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KT05] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KT05] SET  MULTI_USER 
GO
ALTER DATABASE [KT05] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KT05] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KT05] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KT05] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KT05] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KT05] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KT05] SET QUERY_STORE = OFF
GO
USE [KT05]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 16.10.2024 14:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 16.10.2024 14:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeEnter]    Script Date: 16.10.2024 14:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeEnter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Enter] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeEnter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16.10.2024 14:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDRole] [int] NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[PasportSeri] [int] NOT NULL,
	[PasportNum] [int] NOT NULL,
	[DateofBirth] [date] NOT NULL,
	[LastEnter] [datetime] NULL,
	[IDEnter] [int] NULL,
	[IDGender] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([Id], [Name]) VALUES (1, N'женский')
INSERT [dbo].[Gender] ([Id], [Name]) VALUES (2, N'мужской')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Исполнитель')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeEnter] ON 

INSERT [dbo].[TypeEnter] ([Id], [Enter]) VALUES (1, N'Неуспешно')
INSERT [dbo].[TypeEnter] ([Id], [Enter]) VALUES (2, N'Успешно')
SET IDENTITY_INSERT [dbo].[TypeEnter] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (1, 3, N'Акимов', N'Ян', N'Алексеевич', N'gohufreilagrau-3818@yopmail.com', N'akimovya', N'bn069Caj', N'+7(781) 785-5837', 2367, 558134, CAST(N'1993-07-03' AS Date), CAST(N'2023-02-01T05:59:51.000' AS DateTime), 2, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (2, 2, N'Гончарова', N'Ульяна', N'Львовна', N'xawugosune-1385@yopmail.com', N'goncharovaul', N'pW4qZhL!', N'+7(230) 906-8815', 7101, 669343, CAST(N'1975-06-22' AS Date), CAST(N'2023-02-13T13:59:08.000' AS DateTime), 2, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (3, 1, N'Анохина', N'Елизавета', N'Матвеевна', N'leuttevitrafo1998@mail.ru', N'anochinaem', N'y6UNmaJg', N'+7(555) 444-8316', 3455, 719630, CAST(N'1991-08-16' AS Date), CAST(N'2023-02-10T17:58:02.000' AS DateTime), 2, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (4, 3, N'Николаев', N'Илья', N'Владиславович', N'frapreubrulloba1141@yandex.ru', N'nickolaeviv', N'ebOt@4y$', N'+7(392) 682-4442', 2377, 871623, CAST(N'1970-12-22' AS Date), CAST(N'2023-02-03T03:35:08.000' AS DateTime), 2, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (5, 2, N'Уткин', N'Дмитрий', N'Платонович', N'zapramaxesu-7741@yopmail.com', N'utkindp', N'zQt8g@GH', N'+7(836) 429-0386', 8755, 921148, CAST(N'1999-05-04' AS Date), CAST(N'2023-02-15T21:35:55.000' AS DateTime), 1, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (6, 2, N'Куликова', N'Стефания', N'Никитична', N'rouzecroummegre-3899@yopmail.com', N'kulikovasn', N'TCmE7Jon', N'+7(283) 945-3092', 4355, 104594, CAST(N'1994-12-06' AS Date), CAST(N'2023-02-11T20:22:23.000' AS DateTime), 2, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (7, 2, N'Волков', N'Егор', N'Матвеевич', N'ziyeuddocrabri-4748@@yopmail.com', N'volkovem', N'pbgO3Vv5', N'+7(621) 359-3669', 2791, 114390, CAST(N'1995-03-28' AS Date), CAST(N'2023-02-15T18:22:26.000' AS DateTime), 2, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (8, 1, N'Соколова', N'Софья', N'Георгиевна', N'ketameissoinnei-1951@yopmail.com', N'sokolovasg', N'lITaH?Bs', N'+7(440) 561-0314', 5582, 126286, CAST(N'1977-03-27' AS Date), CAST(N'2023-02-15T23:03:04.000' AS DateTime), 1, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (9, 3, N'Голубева', N'Полина', N'Андреевна', N'yipraubaponou-5849@yopmail.com', N'golubevapa', N's|ke*p@~', N'+7(331) 918-2434', 2978, 133653, CAST(N'1975-04-12' AS Date), CAST(N'2023-02-05T05:55:20.000' AS DateTime), 2, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (10, 3, N'Вишневская', N'Мария', N'Андреевна', N'crapedocouca-3572@yopmail.com', N'vishnevskayama', N'OCaywHJZ', N'+7(493) 219-3942', 7512, 141956, CAST(N'1975-12-23' AS Date), NULL, 2, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (11, 3, N'Васильева', N'Арина', N'Данииловна', N'ceigoixakaunni-9227@yopmail.com', N'vasilevad', N'DAWuV%#u', N'+7(407) 485-5030', 5046, 158433, CAST(N'2000-01-22' AS Date), NULL, 1, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (12, 3, N'Павлов', N'Дмитрий', N'Максимович', N'yeimmeiwauzomo-7054@yopmail.com', N'pavlovdm', N'ptoED%zE', N'+7(919) 478-2497', 2460, 169505, CAST(N'1983-10-03' AS Date), CAST(N'2023-02-04T19:26:44.000' AS DateTime), 1, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (13, 2, N'Горбунова', N'Мирослава', N'Артуровна', N'pixil59@gmail.com', N'gorbunovama', N'ZFR2~Zl*', N'+7(482) 802-9580', 3412, 174593, CAST(N'1998-03-03' AS Date), CAST(N'2023-02-16T05:30:24.000' AS DateTime), 2, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (14, 3, N'Демина', N'София', N'Романовна', N'deummecillummu-4992@mail.ru', N'deminasr', N'D%DVKyDN', N'+7(455) 944-6449', 4950, 183034, CAST(N'1993-06-08' AS Date), CAST(N'2023-02-10T23:46:25.000' AS DateTime), 1, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (15, 2, N'Петрова', N'Алина', N'Робертовна', N'vilagajaunne-5170@yandex.ru', N'petrovaar', N'z7ZE?8N5', N'+7(710) 388-2563', 5829, 219464, CAST(N'1980-09-23' AS Date), CAST(N'2023-02-01T17:56:56.000' AS DateTime), 2, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (16, 2, N'Плотников', N'Григорий', N'Александрович', N'frusubroppotou656@yandex.ru', N'plotnikovga', N'yh+S4@yc', N'+7(759) 452-3846', 6443, 208059, CAST(N'1991-03-13' AS Date), CAST(N'2023-02-08T19:05:56.000' AS DateTime), 2, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (17, 2, N'Прохорова', N'Есения', N'Тимофеевна', N'vhopkins@lewis-mullen.com', N'prochorovaet', N'wLF186dB', N'+7(687) 801-1332', 7079, 213265, CAST(N'1998-04-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (18, 2, N'Чернов', N'Алексей', N'Егорович', N'nlewis@yahoo.com', N'chernovae', N'Sjkr*1zV', N'+7(425) 783-2253', 8207, 522702, CAST(N'1980-04-16' AS Date), CAST(N'2023-02-05T15:05:42.000' AS DateTime), 2, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (19, 3, N'Горбунов', N'Степан', N'Артёмович', N'garciadavid@mckinney-mcbride.com', N'gorbunovsa', N'hFhK%$JI', N'+7(889) 449-4391', 9307, 232158, CAST(N'1993-07-23' AS Date), CAST(N'2023-02-13T21:13:14.000' AS DateTime), 2, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (20, 2, N'Рябинина', N'Софья', N'Артёмовна', N'loudittoimmolau1900@gmail.com', N'ryabininasa', N'&yw1da4K', N'+7(825) 301-8250', 1357, 242839, CAST(N'1990-06-01' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (21, 2, N'Козлова', N'Яна', N'Даниловна', N'hittuprofassa4984@mail.com', N'kozlovayd', N'wCH7dl3k', N'+7(397) 334-2086', 1167, 256636, CAST(N'1987-12-21' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (22, 3, N'Лукьянова', N'Ульяна', N'Олеговна', N'freineiciweijau888@yandex.ru', N'lyckyanovayo', N'JadQ24D5', N'+7(241) 570-3040', 1768, 266986, CAST(N'1981-10-22' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (23, 2, N'Кондрашова', N'Арина', N'Ивановна', N'jessica84@hotmail.com', N'kondrashovai', N'YlBz$8vJ', N'+7(713) 462-8265', 1710, 427875, CAST(N'1976-12-22' AS Date), CAST(N'2023-02-07T20:30:21.000' AS DateTime), 1, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (24, 3, N'Быкова', N'Виктория', N'Тимуровна', N'nokupekidda2001@gmail.com', N'bykovavt', N'nx8Z$K98', N'+7(854) 822-2331', 1806, 289145, CAST(N'1973-06-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNum], [DateofBirth], [LastEnter], [IDEnter], [IDGender]) VALUES (25, 2, N'Гуляев', N'Тимофей', N'Даниилович', N'ginaritter@schneider-buchanan.com', N'gylyaevtd', N'lz$kp1?f', N'+7(439) 713-6117', 1587, 291249, CAST(N'1987-02-05' AS Date), CAST(N'1970-01-01T00:00:45.000' AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Gender] FOREIGN KEY([IDGender])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Gender]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_TypeEnter] FOREIGN KEY([IDEnter])
REFERENCES [dbo].[TypeEnter] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_TypeEnter]
GO
USE [master]
GO
ALTER DATABASE [KT05] SET  READ_WRITE 
GO
