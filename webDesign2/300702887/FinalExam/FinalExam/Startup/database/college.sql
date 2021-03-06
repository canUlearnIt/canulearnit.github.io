USE [master]
GO
/****** Object:  Database [College]    Script Date: 12/01/2013 20:52:54 ******/
CREATE DATABASE [College] 
GO
ALTER DATABASE [College] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [College].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [College] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [College] SET ANSI_NULLS OFF
GO
ALTER DATABASE [College] SET ANSI_PADDING OFF
GO
ALTER DATABASE [College] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [College] SET ARITHABORT OFF
GO
ALTER DATABASE [College] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [College] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [College] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [College] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [College] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [College] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [College] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [College] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [College] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [College] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [College] SET  ENABLE_BROKER
GO
ALTER DATABASE [College] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [College] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [College] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [College] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [College] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [College] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [College] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [College] SET  READ_WRITE
GO
ALTER DATABASE [College] SET RECOVERY FULL
GO
ALTER DATABASE [College] SET  MULTI_USER
GO
ALTER DATABASE [College] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [College] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'College', N'ON'
GO
USE [College]
GO
/****** Object:  Table [dbo].[course]    Script Date: 12/01/2013 20:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[course_id] [int] NOT NULL,
	[call_id] [nvarchar](10) NULL,
	[course_name] [nvarchar](25) NULL,
	[credits] [int] NULL,
 CONSTRAINT [course_course_id_pk] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[course] ([course_id], [call_id], [course_name], [credits]) VALUES (1, N'MIS 101', N'Intro. to Info. Systems', 3)
INSERT [dbo].[course] ([course_id], [call_id], [course_name], [credits]) VALUES (2, N'MIS 301', N'Systems Analysis', 3)
INSERT [dbo].[course] ([course_id], [call_id], [course_name], [credits]) VALUES (3, N'MIS 441', N'Database Management', 3)
INSERT [dbo].[course] ([course_id], [call_id], [course_name], [credits]) VALUES (4, N'CS 155', N'Programming in C++', 3)
INSERT [dbo].[course] ([course_id], [call_id], [course_name], [credits]) VALUES (5, N'MIS 451', N'Web-Based Systems', 3)
/****** Object:  Table [dbo].[term]    Script Date: 12/01/2013 20:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[term](
	[term_id] [int] NOT NULL,
	[term_desc] [nvarchar](20) NULL,
	[status] [nvarchar](20) NULL,
 CONSTRAINT [term_term_id_pk] PRIMARY KEY CLUSTERED 
(
	[term_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[term] ([term_id], [term_desc], [status]) VALUES (1, N'Fall 2005', N'CLOSED')
INSERT [dbo].[term] ([term_id], [term_desc], [status]) VALUES (2, N'Spring 2006', N'CLOSED')
INSERT [dbo].[term] ([term_id], [term_desc], [status]) VALUES (3, N'Summer 2006', N'CLOSED')
INSERT [dbo].[term] ([term_id], [term_desc], [status]) VALUES (4, N'Fall 2006', N'CLOSED')
INSERT [dbo].[term] ([term_id], [term_desc], [status]) VALUES (5, N'Spring 2007', N'CLOSED')
INSERT [dbo].[term] ([term_id], [term_desc], [status]) VALUES (6, N'Summer 2007', N'OPEN')
/****** Object:  Table [dbo].[state]    Script Date: 12/01/2013 20:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[state](
	[s_abbreviation] [char](2) NOT NULL,
	[s_name] [nvarchar](100) NOT NULL,
 CONSTRAINT [state_s_abbreviation_pk] PRIMARY KEY CLUSTERED 
(
	[s_abbreviation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'AK', N'ALASKA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'AL', N'ALABAMA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'AR', N'ARKANSAS')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'AS', N'AMERICAN SAMOA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'AZ', N'ARIZONA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'CA', N'CALIFORNIA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'CO', N'COLORADO')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'CT', N'CONNECTICUT')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'DC', N'DISTRICT OF COLUMBIA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'DE', N'DELAWARE')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'FL', N'FLORIDA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'FM', N'FEDERATED STATES OF MICRONESIA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'GA', N'GEORGIA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'GU', N'GUAM')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'HI', N'HAWAII')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'IA', N'IOWA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'ID', N'IDAHO')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'IL', N'ILLINOIS')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'IN', N'INDIANA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'KS', N'KANSAS')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'KY', N'KENTUCKY')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'LA', N'LOUISIANA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'MA', N'MASSACHUSETTS')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'MD', N'MARYLAND')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'ME', N'MAINE')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'MH', N'MARSHALL ISLANDS')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'MI', N'MICHIGAN')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'MN', N'MINNESOTA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'MO', N'MISSOURI')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'MP', N'NORTHERN MARIANA ISLANDS')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'MS', N'MISSISSIPPI')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'MT', N'MONTANA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'NC', N'NORTH CAROLINA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'ND', N'NORTH DAKOTA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'NE', N'NEBRASKA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'NH', N'NEW HAMPSHIRE')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'NJ', N'NEW JERSEY')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'NM', N'NEW MEXICO')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'NV', N'NEVADA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'NY', N'NEW YORK')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'OH', N'OHIO')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'OK', N'OKLAHOMA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'OR', N'OREGON')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'PA', N'PENNSYLVANIA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'PR', N'PUERTO RICO')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'PW', N'PALAU')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'RI', N'RHODE ISLAND')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'SC', N'SOUTH CAROLINA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'SD', N'SOUTH DAKOTA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'TN', N'TENNESSEE')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'TX', N'TEXAS')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'UT', N'UTAH')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'VA', N'VIRGINIA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'VI', N'VIRGIN ISLANDS')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'VT', N'VERMONT')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'WA', N'WASHINGTON')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'WI', N'WISCONSIN')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'WV', N'WEST VIRGINIA')
INSERT [dbo].[state] ([s_abbreviation], [s_name]) VALUES (N'WY', N'WYOMING')
/****** Object:  Table [dbo].[location]    Script Date: 12/01/2013 20:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[location](
	[loc_id] [int] NOT NULL,
	[bldg_code] [nvarchar](10) NULL,
	[room] [nvarchar](6) NULL,
	[capacity] [int] NULL,
 CONSTRAINT [location_loc_id_pk] PRIMARY KEY CLUSTERED 
(
	[loc_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[location] ([loc_id], [bldg_code], [room], [capacity]) VALUES (1, N'CR', N'101', 150)
INSERT [dbo].[location] ([loc_id], [bldg_code], [room], [capacity]) VALUES (2, N'CR', N'202', 40)
INSERT [dbo].[location] ([loc_id], [bldg_code], [room], [capacity]) VALUES (3, N'CR', N'103', 35)
INSERT [dbo].[location] ([loc_id], [bldg_code], [room], [capacity]) VALUES (4, N'CR', N'105', 35)
INSERT [dbo].[location] ([loc_id], [bldg_code], [room], [capacity]) VALUES (5, N'BUS', N'105', 42)
INSERT [dbo].[location] ([loc_id], [bldg_code], [room], [capacity]) VALUES (6, N'BUS', N'404', 35)
INSERT [dbo].[location] ([loc_id], [bldg_code], [room], [capacity]) VALUES (7, N'BUS', N'421', 35)
INSERT [dbo].[location] ([loc_id], [bldg_code], [room], [capacity]) VALUES (8, N'BUS', N'211', 55)
INSERT [dbo].[location] ([loc_id], [bldg_code], [room], [capacity]) VALUES (9, N'BUS', N'424', 1)
INSERT [dbo].[location] ([loc_id], [bldg_code], [room], [capacity]) VALUES (10, N'BUS', N'402', 1)
INSERT [dbo].[location] ([loc_id], [bldg_code], [room], [capacity]) VALUES (11, N'BUS', N'433', 1)
INSERT [dbo].[location] ([loc_id], [bldg_code], [room], [capacity]) VALUES (12, N'LIB', N'217', 2)
INSERT [dbo].[location] ([loc_id], [bldg_code], [room], [capacity]) VALUES (13, N'LIB', N'222', 1)
/****** Object:  Table [dbo].[faculty]    Script Date: 12/01/2013 20:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[faculty](
	[f_id] [int] NOT NULL,
	[f_last] [nvarchar](30) NULL,
	[f_first] [nvarchar](30) NULL,
	[f_mi] [char](1) NULL,
	[loc_id] [int] NULL,
	[f_phone] [nvarchar](10) NULL,
	[f_email] [nvarchar](40) NULL,
	[f_rank] [nvarchar](8) NULL,
	[f_pin] [int] NULL,
	[f_image] [nvarchar](30) NULL,
 CONSTRAINT [faculty_f_id_pk] PRIMARY KEY CLUSTERED 
(
	[f_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[faculty] ([f_id], [f_last], [f_first], [f_mi], [loc_id], [f_phone], [f_email], [f_rank], [f_pin], [f_image]) VALUES (1, N'Cox', N'Kim', N'J', 9, N'7155551234', N'kcox@centennialcollege.ca', N'ASSO', 1181, N'cox.jpg')
INSERT [dbo].[faculty] ([f_id], [f_last], [f_first], [f_mi], [loc_id], [f_phone], [f_email], [f_rank], [f_pin], [f_image]) VALUES (2, N'Blanchard', N'Jane', N'R', 10, N'7155559087', N'jblanchard@centennialcollege.ca', N'FULL', 1075, N'blanchard.jpg')
INSERT [dbo].[faculty] ([f_id], [f_last], [f_first], [f_mi], [loc_id], [f_phone], [f_email], [f_rank], [f_pin], [f_image]) VALUES (3, N'Williams', N'Jerry', N'F', 12, N'7155555412', N'jwilliams@centennialcollege.ca', N'ASST', 8531, N'williams.jpg')
INSERT [dbo].[faculty] ([f_id], [f_last], [f_first], [f_mi], [loc_id], [f_phone], [f_email], [f_rank], [f_pin], [f_image]) VALUES (4, N'Sheng', N'Laura', N'M', 11, N'7155556409', N'lsheng@centennialcollege.ca', N'INST', 1690, N'sheng.jpg')
INSERT [dbo].[faculty] ([f_id], [f_last], [f_first], [f_mi], [loc_id], [f_phone], [f_email], [f_rank], [f_pin], [f_image]) VALUES (5, N'Brown', N'Philip', N'E', 13, N'7155556082', N'pbrown@centennialcollege.ca', N'ASSO', 9899, N'brown.jpg')
/****** Object:  Table [dbo].[student]    Script Date: 12/01/2013 20:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[s_id] [int] NOT NULL,
	[s_last] [nvarchar](30) NULL,
	[s_first] [nvarchar](30) NULL,
	[s_mi] [char](1) NULL,
	[s_address] [nvarchar](25) NULL,
	[s_city] [nvarchar](20) NULL,
	[s_state] [char](2) NULL,
	[s_zip] [nvarchar](10) NULL,
	[s_phone] [nvarchar](10) NULL,
	[s_class] [char](2) NULL,
	[s_dob] [date] NULL,
	[s_pin] [int] NULL,
	[f_id] [int] NULL,
 CONSTRAINT [student_s_id_pk] PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[student] ([s_id], [s_last], [s_first], [s_mi], [s_address], [s_city], [s_state], [s_zip], [s_phone], [s_class], [s_dob], [s_pin], [f_id]) VALUES (1, N'Miller', N'Sarah', N'M', N'144 Windridge Blvd.', N'Eau Claire', N'WI', N'54703', N'7155559876', N'SR', CAST(0x630F0B00 AS Date), 8891, 1)
INSERT [dbo].[student] ([s_id], [s_last], [s_first], [s_mi], [s_address], [s_city], [s_state], [s_zip], [s_phone], [s_class], [s_dob], [s_pin], [f_id]) VALUES (2, N'Umato', N'Brian', N'D', N'454 St. John''s Place', N'Eau Claire', N'WI', N'54702', N'7155552345', N'SR', CAST(0x870F0B00 AS Date), 1230, 1)
INSERT [dbo].[student] ([s_id], [s_last], [s_first], [s_mi], [s_address], [s_city], [s_state], [s_zip], [s_phone], [s_class], [s_dob], [s_pin], [f_id]) VALUES (3, N'Black', N'Daniel', NULL, N'8921 Circle Drive', N'Bloomer', N'WI', N'54715', N'7155553907', N'JR', CAST(0x730B0B00 AS Date), 1613, 1)
INSERT [dbo].[student] ([s_id], [s_last], [s_first], [s_mi], [s_address], [s_city], [s_state], [s_zip], [s_phone], [s_class], [s_dob], [s_pin], [f_id]) VALUES (4, N'Mobley', N'Amanda', N'J', N'1716 Summit St.', N'Eau Claire', N'WI', N'54703', N'7155556902', N'SO', CAST(0x18110B00 AS Date), 1841, 2)
INSERT [dbo].[student] ([s_id], [s_last], [s_first], [s_mi], [s_address], [s_city], [s_state], [s_zip], [s_phone], [s_class], [s_dob], [s_pin], [f_id]) VALUES (5, N'Sanchez', N'Ruben', N'R', N'1780 Samantha Court', N'Eau Claire', N'WI', N'54701', N'7155558899', N'SO', CAST(0x51110B00 AS Date), 4420, 4)
INSERT [dbo].[student] ([s_id], [s_last], [s_first], [s_mi], [s_address], [s_city], [s_state], [s_zip], [s_phone], [s_class], [s_dob], [s_pin], [f_id]) VALUES (6, N'Connoly', N'Michael', N'S', N'1818 Silver Street', N'Elk Mound', N'WI', N'54712', N'7155554944', N'FR', CAST(0x5F110B00 AS Date), 9188, 3)
/****** Object:  Table [dbo].[course_section]    Script Date: 12/01/2013 20:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course_section](
	[c_sec_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
	[term_id] [int] NOT NULL,
	[sec_num] [int] NOT NULL,
	[f_id] [int] NULL,
	[c_sec_day] [nvarchar](10) NULL,
	[c_sec_time] [date] NULL,
	[loc_id] [int] NULL,
	[max_enrl] [int] NOT NULL,
 CONSTRAINT [course_section_csec_id_pk] PRIMARY KEY CLUSTERED 
(
	[c_sec_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[course_section] ([c_sec_id], [course_id], [term_id], [sec_num], [f_id], [c_sec_day], [c_sec_time], [loc_id], [max_enrl]) VALUES (1, 1, 4, 1, 2, N'MWF', CAST(0x5B950A00 AS Date), 1, 140)
INSERT [dbo].[course_section] ([c_sec_id], [course_id], [term_id], [sec_num], [f_id], [c_sec_day], [c_sec_time], [loc_id], [max_enrl]) VALUES (2, 1, 4, 2, 3, N'TR', CAST(0x5B950A00 AS Date), 7, 35)
INSERT [dbo].[course_section] ([c_sec_id], [course_id], [term_id], [sec_num], [f_id], [c_sec_day], [c_sec_time], [loc_id], [max_enrl]) VALUES (3, 1, 4, 3, 3, N'MWF', CAST(0x5B950A00 AS Date), 2, 35)
INSERT [dbo].[course_section] ([c_sec_id], [course_id], [term_id], [sec_num], [f_id], [c_sec_day], [c_sec_time], [loc_id], [max_enrl]) VALUES (4, 2, 4, 1, 4, N'TR', CAST(0x5B950A00 AS Date), 6, 35)
INSERT [dbo].[course_section] ([c_sec_id], [course_id], [term_id], [sec_num], [f_id], [c_sec_day], [c_sec_time], [loc_id], [max_enrl]) VALUES (5, 2, 5, 2, 4, N'TR', CAST(0x5B950A00 AS Date), 6, 35)
INSERT [dbo].[course_section] ([c_sec_id], [course_id], [term_id], [sec_num], [f_id], [c_sec_day], [c_sec_time], [loc_id], [max_enrl]) VALUES (6, 3, 5, 1, 1, N'MWF', CAST(0x5B950A00 AS Date), 5, 30)
INSERT [dbo].[course_section] ([c_sec_id], [course_id], [term_id], [sec_num], [f_id], [c_sec_day], [c_sec_time], [loc_id], [max_enrl]) VALUES (7, 3, 5, 2, 1, N'MWF', CAST(0x5B950A00 AS Date), 5, 30)
INSERT [dbo].[course_section] ([c_sec_id], [course_id], [term_id], [sec_num], [f_id], [c_sec_day], [c_sec_time], [loc_id], [max_enrl]) VALUES (8, 4, 5, 1, 5, N'TR', CAST(0x5B950A00 AS Date), 3, 35)
INSERT [dbo].[course_section] ([c_sec_id], [course_id], [term_id], [sec_num], [f_id], [c_sec_day], [c_sec_time], [loc_id], [max_enrl]) VALUES (9, 5, 5, 1, 2, N'MWF', CAST(0x5B950A00 AS Date), 5, 35)
INSERT [dbo].[course_section] ([c_sec_id], [course_id], [term_id], [sec_num], [f_id], [c_sec_day], [c_sec_time], [loc_id], [max_enrl]) VALUES (10, 5, 5, 2, 2, N'MWF', CAST(0x5B950A00 AS Date), 5, 35)
INSERT [dbo].[course_section] ([c_sec_id], [course_id], [term_id], [sec_num], [f_id], [c_sec_day], [c_sec_time], [loc_id], [max_enrl]) VALUES (11, 1, 6, 1, 1, N'MTWRF', CAST(0x5B950A00 AS Date), 1, 50)
INSERT [dbo].[course_section] ([c_sec_id], [course_id], [term_id], [sec_num], [f_id], [c_sec_day], [c_sec_time], [loc_id], [max_enrl]) VALUES (12, 2, 6, 1, 2, N'MTWRF', CAST(0x5B950A00 AS Date), 6, 35)
INSERT [dbo].[course_section] ([c_sec_id], [course_id], [term_id], [sec_num], [f_id], [c_sec_day], [c_sec_time], [loc_id], [max_enrl]) VALUES (13, 3, 6, 1, 3, N'MTWRF', CAST(0x5B950A00 AS Date), 5, 35)
/****** Object:  Table [dbo].[enrolment]    Script Date: 12/01/2013 20:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[enrolment](
	[s_id] [int] NOT NULL,
	[c_sec_id] [int] NOT NULL,
	[grade] [char](1) NULL,
 CONSTRAINT [enrollment_pk] PRIMARY KEY CLUSTERED 
(
	[s_id] ASC,
	[c_sec_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (1, 1, N'A')
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (1, 4, N'A')
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (1, 6, N'B')
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (1, 9, N'B')
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (2, 1, N'C')
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (2, 5, N'B')
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (2, 6, N'A')
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (2, 9, N'B')
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (3, 1, N'C')
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (3, 12, NULL)
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (3, 13, NULL)
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (4, 11, NULL)
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (4, 12, NULL)
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (5, 1, N'B')
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (5, 5, N'C')
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (5, 9, N'C')
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (5, 11, NULL)
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (5, 13, NULL)
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (6, 11, NULL)
INSERT [dbo].[enrolment] ([s_id], [c_sec_id], [grade]) VALUES (6, 12, NULL)
/****** Object:  Check [term_status_cc]    Script Date: 12/01/2013 20:52:56 ******/
ALTER TABLE [dbo].[term]  WITH CHECK ADD  CONSTRAINT [term_status_cc] CHECK  (([status]='OPEN' OR [status]='CLOSED'))
GO
ALTER TABLE [dbo].[term] CHECK CONSTRAINT [term_status_cc]
GO
/****** Object:  Check [enrollment_grade_cc]    Script Date: 12/01/2013 20:52:56 ******/
ALTER TABLE [dbo].[enrolment]  WITH CHECK ADD  CONSTRAINT [enrollment_grade_cc] CHECK  (([grade]='A' OR [grade]='B' OR [grade]='C' OR [grade]='D' OR [grade]='F' OR [grade]='N'))
GO
ALTER TABLE [dbo].[enrolment] CHECK CONSTRAINT [enrollment_grade_cc]
GO
/****** Object:  ForeignKey [faculty_loc_id_fk]    Script Date: 12/01/2013 20:52:56 ******/
ALTER TABLE [dbo].[faculty]  WITH CHECK ADD  CONSTRAINT [faculty_loc_id_fk] FOREIGN KEY([loc_id])
REFERENCES [dbo].[location] ([loc_id])
GO
ALTER TABLE [dbo].[faculty] CHECK CONSTRAINT [faculty_loc_id_fk]
GO
/****** Object:  ForeignKey [student_f_id_fk]    Script Date: 12/01/2013 20:52:56 ******/
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [student_f_id_fk] FOREIGN KEY([f_id])
REFERENCES [dbo].[faculty] ([f_id])
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [student_f_id_fk]
GO
/****** Object:  ForeignKey [student_s_state_fk]    Script Date: 12/01/2013 20:52:56 ******/
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [student_s_state_fk] FOREIGN KEY([s_state])
REFERENCES [dbo].[state] ([s_abbreviation])
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [student_s_state_fk]
GO
/****** Object:  ForeignKey [course_section_cid_fk]    Script Date: 12/01/2013 20:52:56 ******/
ALTER TABLE [dbo].[course_section]  WITH CHECK ADD  CONSTRAINT [course_section_cid_fk] FOREIGN KEY([course_id])
REFERENCES [dbo].[course] ([course_id])
GO
ALTER TABLE [dbo].[course_section] CHECK CONSTRAINT [course_section_cid_fk]
GO
/****** Object:  ForeignKey [course_section_fid_fk]    Script Date: 12/01/2013 20:52:56 ******/
ALTER TABLE [dbo].[course_section]  WITH CHECK ADD  CONSTRAINT [course_section_fid_fk] FOREIGN KEY([f_id])
REFERENCES [dbo].[faculty] ([f_id])
GO
ALTER TABLE [dbo].[course_section] CHECK CONSTRAINT [course_section_fid_fk]
GO
/****** Object:  ForeignKey [course_section_loc_id_fk]    Script Date: 12/01/2013 20:52:56 ******/
ALTER TABLE [dbo].[course_section]  WITH CHECK ADD  CONSTRAINT [course_section_loc_id_fk] FOREIGN KEY([loc_id])
REFERENCES [dbo].[location] ([loc_id])
GO
ALTER TABLE [dbo].[course_section] CHECK CONSTRAINT [course_section_loc_id_fk]
GO
/****** Object:  ForeignKey [course_section_termid_fk]    Script Date: 12/01/2013 20:52:56 ******/
ALTER TABLE [dbo].[course_section]  WITH CHECK ADD  CONSTRAINT [course_section_termid_fk] FOREIGN KEY([term_id])
REFERENCES [dbo].[term] ([term_id])
GO
ALTER TABLE [dbo].[course_section] CHECK CONSTRAINT [course_section_termid_fk]
GO
/****** Object:  ForeignKey [enrollment_csecid_fk]    Script Date: 12/01/2013 20:52:56 ******/
ALTER TABLE [dbo].[enrolment]  WITH CHECK ADD  CONSTRAINT [enrollment_csecid_fk] FOREIGN KEY([c_sec_id])
REFERENCES [dbo].[course_section] ([c_sec_id])
GO
ALTER TABLE [dbo].[enrolment] CHECK CONSTRAINT [enrollment_csecid_fk]
GO
/****** Object:  ForeignKey [enrollment_sid_fk]    Script Date: 12/01/2013 20:52:56 ******/
ALTER TABLE [dbo].[enrolment]  WITH CHECK ADD  CONSTRAINT [enrollment_sid_fk] FOREIGN KEY([s_id])
REFERENCES [dbo].[student] ([s_id])
GO
ALTER TABLE [dbo].[enrolment] CHECK CONSTRAINT [enrollment_sid_fk]
GO
