USE [WDT_A2]
GO
/****** Object:  StoredProcedure [dbo].[Current_Movies_Info]    Script Date: 20-Oct-15 12:44:46 AM ******/
DROP PROCEDURE [dbo].[Current_Movies_Info]
GO
/****** Object:  StoredProcedure [dbo].[Admin_Login]    Script Date: 20-Oct-15 12:44:46 AM ******/
DROP PROCEDURE [dbo].[Admin_Login]
GO
ALTER TABLE [dbo].[CineplexMovie] DROP CONSTRAINT [FK__CineplexM__Movie__1920BF5C]
GO
ALTER TABLE [dbo].[CineplexMovie] DROP CONSTRAINT [FK__CineplexM__Cinep__182C9B23]
GO
/****** Object:  Table [dbo].[Sessions]    Script Date: 20-Oct-15 12:44:46 AM ******/
DROP TABLE [dbo].[Sessions]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 20-Oct-15 12:44:46 AM ******/
DROP TABLE [dbo].[Movies]
GO
/****** Object:  Table [dbo].[MovieComingSoon]    Script Date: 20-Oct-15 12:44:46 AM ******/
DROP TABLE [dbo].[MovieComingSoon]
GO
/****** Object:  Table [dbo].[Enquiry]    Script Date: 20-Oct-15 12:44:46 AM ******/
DROP TABLE [dbo].[Enquiry]
GO
/****** Object:  Table [dbo].[CineplexMovie]    Script Date: 20-Oct-15 12:44:46 AM ******/
DROP TABLE [dbo].[CineplexMovie]
GO
/****** Object:  Table [dbo].[Cineplex]    Script Date: 20-Oct-15 12:44:46 AM ******/
DROP TABLE [dbo].[Cineplex]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 20-Oct-15 12:44:46 AM ******/
DROP TABLE [dbo].[Admins]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 20-Oct-15 12:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Passwords] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[FamilyName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cineplex]    Script Date: 20-Oct-15 12:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cineplex](
	[Cineplex_ID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[ShortDescription] [nvarchar](max) NOT NULL,
	[LongDescription] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cineplex_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CineplexMovie]    Script Date: 20-Oct-15 12:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CineplexMovie](
	[CineplexID] [int] NOT NULL,
	[MovieID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CineplexID] ASC,
	[MovieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Enquiry]    Script Date: 20-Oct-15 12:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enquiry](
	[EnquiryID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EnquiryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MovieComingSoon]    Script Date: 20-Oct-15 12:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieComingSoon](
	[MovieComingSoonID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[ShortDescription] [nvarchar](max) NOT NULL,
	[LongDescription] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MovieComingSoonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Movies]    Script Date: 20-Oct-15 12:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Movie_ID] [int] IDENTITY(1,1) NOT NULL,
	[Movie_Title] [nvarchar](max) NOT NULL,
	[Short_Description] [nvarchar](max) NOT NULL,
	[Long_Description] [nvarchar](max) NOT NULL,
	[Poster] [nvarchar](max) NULL,
	[Duration] [int] NOT NULL,
	[Rating] [nvarchar](1) NULL,
	[Price] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Movie_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sessions]    Script Date: 20-Oct-15 12:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sessions](
	[Session_ID] [int] NOT NULL,
	[Movie_ID] [int] NOT NULL,
	[Movie_Title] [nvarchar](max) NOT NULL,
	[CineplexID] [int] NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[Session_Time] [char](10) NOT NULL,
	[Session_Day] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Sessions] PRIMARY KEY CLUSTERED 
(
	[Session_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (1, N'Avenger0', N'pw0000', N'Steven', N'Rogers', N'Da_Captain@gmail.com')
INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (3, N'Avenger1', N'pw1111', N'Tony', N'Stark', N'I_am_Ironman@gmail.com')
INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (4, N'Avenger2', N'pw2222', N'Bruce', N'Banner', N'Green_Machine@gmail.com')
INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (5, N'Avenger3', N'pw3333', N'Thor', N'Odinson', N'MC_Hammer@gmail.com')
INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (6, N'Avenger4', N'pw4444', N'Clint', N'Burton', N'NoScope_TrickShot@gmail.com')
INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (7, N'Avenger5', N'pw5555', N'Natasha', N'Romanoff', N'Charlottes_Web@gmail.com')
INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (9, N'Avenger6', N'pw6666', N'Wonda', N'Maximoff', N'Space_Psychdelic@gmail.com')
INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (10, N'Avenger7', N'pw7777', N'The', N'Vision', N'RoboCop_is_cool@gmail.com')
SET IDENTITY_INSERT [dbo].[Admins] OFF
SET IDENTITY_INSERT [dbo].[MovieComingSoon] ON 

INSERT [dbo].[MovieComingSoon] ([MovieComingSoonID], [Title], [ShortDescription], [LongDescription], [ImageUrl]) VALUES (1, N'Burnt', N'Bradley Cooper plays Adam Jones, an up-and-coming chef whose drug 
use and erratic behavior lead him to lose his restaurant.', N'Adam Jones is a Chef who destroyed his career with drugs and diva behavior. 
He cleans up and returns to London, determined to redeem himself by spearheading 
a top restaurant that can gain three Michelin stars.', N'https://upload.wikimedia.org/wikipedia/en/2/21/Burnt_Poster_Updated.jpg')
INSERT [dbo].[MovieComingSoon] ([MovieComingSoonID], [Title], [ShortDescription], [LongDescription], [ImageUrl]) VALUES (2, N'The Last Witch Hunter', N'The last remaining witch hunter battles against an uprising of witches in modern day New York.', N'An immortal witch-hunter is tasked with the job of coming between the covens of New York City 
and their goal to destroy humanity by way of a horrific plague.
In order to accomplish this, he must partner up with a beautiful female witch, 
something he thought he would never do.	', N'https://upload.wikimedia.org/wikipedia/en/8/8f/The_Last_Witch_Hunter_poster.jpg')
INSERT [dbo].[MovieComingSoon] ([MovieComingSoonID], [Title], [ShortDescription], [LongDescription], [ImageUrl]) VALUES (3, N'Paranormal Activity: Ghost Dimension', N'Using a special camera that can see spirits, a family must protect their daughter from an evil entity with a sinister plan.', N'The film will follow supernatural occurrences that take place in a newly moved family''s home in Palo Alto, California.
The family consists of four members including Ryan, a game developer, Ryan''s wife Emily, a stay-at-home mom described as 
"more serious than her young husband—she''s constantly on the go, does yoga, and though loving, has an air of maturity about her", 
their 6-year old daughter Leila, described as "a fearless, opinionated tomboy", and Ryan''s younger brother described as a "less fit, 
less funky version of his brother". The brothers find tapes of young Katie and Kristi being taught supernatural abilities by their grandmother. 
Despite the video being filmed 20 years ago, Katie breaks the fourth wall by noticing the brothers'' presence. They also find a camera which can see 
paranormal phenomena that the human eye can''t see. With Leila being targeted by supernatural forces, Ryan must find a way to protect his daughter before 
it is too late.	', N'https://upload.wikimedia.org/wikipedia/commons/e/e8/Paranormal_Activity_The_ghost_dimension_Poster.jpg')
INSERT [dbo].[MovieComingSoon] ([MovieComingSoonID], [Title], [ShortDescription], [LongDescription], [ImageUrl]) VALUES (4, N'Legend', N'The film focuses on the life of Reggie Kray as he seeks to control the psychotic tendencies of his twin, Ronald Kray.', N'From Academy Award winner Brian Helgeland comes the true story of the rise and fall of London''s most notorious gangsters, 
Reggie and Ron Kray, who ruled London during the 1950s and 1960s, both portrayed by Tom Hardy in an amazing double performance.', N'https://encrypted-tbn3.gstatic.com/images?')
SET IDENTITY_INSERT [dbo].[MovieComingSoon] OFF
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Movie_ID], [Movie_Title], [Short_Description], [Long_Description], [Poster], [Duration], [Rating], [Price]) VALUES (14, N'Everest', N'A climbing expedition on Mt. Everest is devastated by a severe snow storm.', N'Inspired by the incredible events surrounding an attempt to reach the summit of the world''''s highest mountain, Everest documents the awe-inspiring journey of two different expeditions challenged beyond their limits by one of the fiercest snowstorms ever encountered by mankind. Their mettle tested by the harshest elements found on the planet, the climbers will face nearly impossible obstacles as a lifelong obsession becomes a breathtaking struggle for survival.', N'https://upload.wikimedia.org/wikipedia/en/2/28/Everest_poster.jpg', 2, N'G', CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[Movies] ([Movie_ID], [Movie_Title], [Short_Description], [Long_Description], [Poster], [Duration], [Rating], [Price]) VALUES (17, N'The Walk 2D', N'The story of French high-wire artist Philippe Petit''s attempt to cross the Twin Towers of the World Trade Center in 1974.', N'In 1974, high-wire artist Philippe Petit recruits a team of people to help him realize 
his dream: to walk the immense void between the World Trade Center towers.', N'https://upload.wikimedia.org/wikipedia/en/5/57/The_Walk_%282015_film%29_poster.jpg', 2, N'G', CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[Movies] ([Movie_ID], [Movie_Title], [Short_Description], [Long_Description], [Poster], [Duration], [Rating], [Price]) VALUES (19, N'Crimson Peak', N'In the aftermath of a family tragedy, an aspiring author is torn between love for her childhood friend and the temptation of a mysterious outsider. ', N'Trying to escape the ghosts of her past, she is swept away to a house that breathes, bleeds...and remembers.	
When her heart is stolen by a seductive stranger, a young woman is swept away to a house atop a mountain of blood-red clay: 
a place filled with secrets that will haunt her forever. Between desire and darkness, between mystery and madness, lies the truth behind Crimson Peak. 
From the imagination of director Guillermo del Toro comes a gothic romance starring Tom Hiddleston, Jessica Chastain, Mia Wasikowska and Charlie Hunnam.', N'https://upload.wikimedia.org/wikipedia/en/a/ad/Crimson_Peak_theatrical_poster.jpg', 2, N'G', CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[Movies] ([Movie_ID], [Movie_Title], [Short_Description], [Long_Description], [Poster], [Duration], [Rating], [Price]) VALUES (20, N'Black Mass', N'Based on the 2001 book Black Mass: The True Story of an Unholy Alliance Between the FBI and the Irish Mob by Dick Lehr and Gerard O''Neill.', N'The true story of Whitey Bulger, the brother of a state senator and the most infamous violent criminal in the history of South Boston, who became an FBI informant to take down a Mafia family invading his turf.', N'https://upload.wikimedia.org/wikipedia/en/c/c0/Black_Mass_%28film%29_poster.jpg', 2, N'G', CAST(10 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Movies] OFF
ALTER TABLE [dbo].[CineplexMovie]  WITH CHECK ADD FOREIGN KEY([CineplexID])
REFERENCES [dbo].[Cineplex] ([Cineplex_ID])
GO
ALTER TABLE [dbo].[CineplexMovie]  WITH CHECK ADD FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movies] ([Movie_ID])
GO
/****** Object:  StoredProcedure [dbo].[Admin_Login]    Script Date: 20-Oct-15 12:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Admin_Login]
(
@username NVARCHAR(50),
@password NVARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;

SELECT  *
FROM dbo.Admins
WHERE
UserName=@Username 
AND 
[Passwords]=@Password
end
GO
/****** Object:  StoredProcedure [dbo].[Current_Movies_Info]    Script Date: 20-Oct-15 12:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Current_Movies_Info]
AS
BEGIN
    SELECT  Movie_ID, Movie_Title, Short_Description, Long_Description, Poster, Duration, Rating, Price
	From Movies
END
GO
