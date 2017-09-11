USE [RemoteControlHTTP]
GO

/****** Object:  Table [dbo].[Category]    Script Date: 11/08/2017 1:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Message]    Script Date: 11/08/2017 1:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[CommanderId] [int] NOT NULL,
	[RobotId] [int] NOT NULL,
	[Command] [varchar](256) NOT NULL,
	[Response] [varchar](256) NOT NULL,
	[IsLog] [bit] NOT NULL,
	[XTimeCommand] [datetime] NULL,
	[XTimeResponse] [datetime] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MessageLog]    Script Date: 11/08/2017 1:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageLog](
	[MessageId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[CommanderId] [int] NOT NULL,
	[RobotId] [int] NOT NULL,
	[Command] [varchar](256) NOT NULL,
	[Response] [varchar](256) NULL,
	[IsLog] [bit] NOT NULL,
	[XTimeCommand] [datetime] NULL,
	[XTimeResponse] [datetime] NULL,
 CONSTRAINT [PK_MessageLog] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[DemoCommander]    Script Date: 10/09/2017 4:36:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoCommander](
	[DemoId] [int] NOT NULL,
	[SessionDateTime] [datetime] NOT NULL,
	[SessionId] [varchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DemoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


INSERT [dbo].[Category] ([CategoryId], [Description]) VALUES (1, N'Command Send')
GO
INSERT [dbo].[Category] ([CategoryId], [Description]) VALUES (2, N'Command Receive')
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28740, 1, 1001, 1002, N'{ "gx1x1":40, "gx1x2":120, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:04.190' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28741, 1, 1001, 1002, N'{ "gx1x1":48, "gx1x2":124, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:04.363' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28742, 1, 1001, 1002, N'{ "gx1x1":66, "gx1x2":142, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:04.427' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28743, 1, 1001, 1002, N'{ "gx1x1":70, "gx1x2":146, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:04.550' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28744, 1, 1001, 1002, N'{ "gx1x1":85, "gx1x2":161, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:04.630' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28745, 1, 1001, 1002, N'{ "gx1x1":90, "gx1x2":166, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:04.677' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28746, 1, 1001, 1002, N'{ "gx1x1":99, "gx1x2":175, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:04.813' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28747, 1, 1001, 1002, N'{ "gx1x1":121, "gx1x2":197, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:05.000' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28748, 1, 1001, 1002, N'{ "gx1x1":139, "gx1x2":215, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:05.080' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28749, 1, 1001, 1002, N'{ "gx1x1":141, "gx1x2":217, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:05.190' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28750, 1, 1001, 1002, N'{ "gx1x1":147, "gx1x2":223, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:05.267' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28751, 1, 1001, 1002, N'{ "gx1x1":145, "gx1x2":221, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:05.597' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28752, 1, 1001, 1002, N'{ "gx1x1":131, "gx1x2":211, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:05.673' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28753, 1, 1001, 1002, N'{ "gx1x1":125, "gx1x2":207, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:05.767' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28754, 1, 1001, 1002, N'{ "gx1x1":122, "gx1x2":204, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:05.953' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28755, 1, 1001, 1002, N'{ "gx1x1":118, "gx1x2":200, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:06.110' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28756, 1, 1001, 1002, N'{ "gx1x1":114, "gx1x2":196, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:06.173' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28757, 1, 1001, 1002, N'{ "gx1x1":109, "gx1x2":191, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:06.360' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28758, 1, 1001, 1002, N'{ "gx1x1":106, "gx1x2":188, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:06.440' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28759, 1, 1001, 1002, N'{ "gx1x1":104, "gx1x2":186, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:06.597' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28760, 1, 1001, 1002, N'{ "gx1x1":102, "gx1x2":184, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:06.720' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28761, 1, 1001, 1002, N'{ "gx1x1":99, "gx1x2":181, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:06.813' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28762, 1, 1001, 1002, N'{ "gx1x1":93, "gx1x2":175, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:07.000' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28763, 1, 1001, 1002, N'{ "gx1x1":88, "gx1x2":170, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:07.063' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28764, 1, 1001, 1002, N'{ "gx1x1":85, "gx1x2":167, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:07.203' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28765, 1, 1001, 1002, N'{ "gx1x1":80, "gx1x2":162, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:07.347' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28766, 1, 1001, 1002, N'{ "gx1x1":75, "gx1x2":157, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:07.563' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28767, 1, 1001, 1002, N'{ "gx1x1":69, "gx1x2":151, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:07.847' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28768, 1, 1001, 1002, N'{ "gx1x1":64, "gx1x2":146, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:08.267' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28769, 1, 1001, 1002, N'{ "gx1x1":61, "gx1x2":61, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:08.533' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28770, 1, 1001, 1002, N'{ "gx1x1":64, "gx1x2":58, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:08.703' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28771, 1, 1001, 1002, N'{ "gx1x1":91, "gx1x2":49, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:08.877' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28772, 1, 1001, 1002, N'{ "gx1x1":99, "gx1x2":41, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:08.987' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28773, 1, 1001, 1002, N'{ "gx1x1":106, "gx1x2":32, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:09.050' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28774, 1, 1001, 1002, N'{ "gx1x1":110, "gx1x2":28, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:09.143' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28775, 1, 1001, 1002, N'{ "gx1x1":109, "gx1x2":29, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:09.610' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28776, 1, 1001, 1002, N'{ "gx1x1":107, "gx1x2":31, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:09.783' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28777, 1, 1001, 1002, N'{ "gx1x1":106, "gx1x2":32, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:09.970' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28778, 1, 1001, 1002, N'{ "gx1x1":102, "gx1x2":36, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:10.063' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28779, 1, 1001, 1002, N'{ "gx1x1":100, "gx1x2":34, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:10.157' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28780, 1, 1001, 1002, N'{ "gx1x1":97, "gx1x2":37, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:10.330' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28781, 1, 1001, 1002, N'{ "gx1x1":96, "gx1x2":38, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:10.407' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28782, 1, 1001, 1002, N'{ "gx1x1":91, "gx1x2":43, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:10.737' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28783, 1, 1001, 1002, N'{ "gx1x1":86, "gx1x2":48, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:10.830' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28784, 1, 1001, 1002, N'{ "gx1x1":83, "gx1x2":51, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:11.063' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28785, 1, 1001, 1002, N'{ "gx1x1":81, "gx1x2":53, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:11.360' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28786, 1, 1001, 1002, N'{ "gx1x1":83, "gx1x2":55, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:11.830' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28787, 1, 1001, 1002, N'{ "gx1x1":86, "gx1x2":58, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:12.110' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28788, 1, 1001, 1002, N'{ "gx1x1":84, "gx1x2":56, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:12.253' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28789, 1, 1001, 1002, N'{ "gx1x1":78, "gx1x2":56, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:12.347' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28790, 1, 1001, 1002, N'{ "gx1x1":72, "gx1x2":56, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:12.440' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28791, 1, 1001, 1002, N'{ "gx1x1":63, "gx1x2":51, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:12.517' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28792, 1, 1001, 1002, N'{ "gx1x1":57, "gx1x2":45, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:12.597' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28793, 1, 1001, 1002, N'{ "gx1x1":54, "gx1x2":42, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:12.673' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28794, 1, 1001, 1002, N'{ "gx1x1":48, "gx1x2":38, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:12.847' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28795, 1, 1001, 1002, N'{ "gx1x1":42, "gx1x2":32, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:12.953' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28796, 1, 1001, 1002, N'{ "gx1x1":40, "gx1x2":30, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:13.203' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28797, 1, 1001, 1002, N'{ "gx1x1":35, "gx1x2":25, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:13.470' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28798, 1, 1001, 1002, N'{ "gx1x1":40, "gx1x2":30, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:13.597' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28799, 1, 1001, 1002, N'{ "gx1x1":46, "gx1x2":36, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:13.703' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28800, 1, 1001, 1002, N'{ "gx1x1":53, "gx1x2":43, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:13.860' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28801, 1, 1001, 1002, N'{ "gx1x1":61, "gx1x2":51, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:13.923' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28802, 1, 1001, 1002, N'{ "gx1x1":67, "gx1x2":55, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:14.080' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28803, 1, 1001, 1002, N'{ "gx1x1":73, "gx1x2":61, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:14.173' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28804, 1, 1001, 1002, N'{ "gx1x1":75, "gx1x2":63, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:14.283' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28805, 1, 1001, 1002, N'{ "gx1x1":83, "gx1x2":71, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:14.453' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28806, 1, 1001, 1002, N'{ "gx1x1":90, "gx1x2":78, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:14.533' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28807, 1, 1001, 1002, N'{ "gx1x1":95, "gx1x2":83, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:14.627' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28808, 1, 1001, 1002, N'{ "gx1x1":100, "gx1x2":88, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:14.737' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28809, 1, 1001, 1002, N'{ "gx1x1":102, "gx1x2":90, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:14.830' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28810, 1, 1001, 1002, N'{ "gx1x1":103, "gx1x2":91, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:14.897' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28811, 1, 1001, 1002, N'{ "gx1x1":108, "gx1x2":96, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:15.007' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28812, 1, 1001, 1002, N'{ "gx1x1":112, "gx1x2":102, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:15.083' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28813, 1, 1001, 1002, N'{ "gx1x1":115, "gx1x2":105, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:15.193' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28814, 1, 1001, 1002, N'{ "gx1x1":118, "gx1x2":108, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:15.630' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28815, 1, 1001, 1002, N'{ "gx1x1":123, "gx1x2":119, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:15.867' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28816, 1, 1001, 1002, N'{ "gx1x1":128, "gx1x2":128, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:16.163' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28817, 1, 1001, 1002, N'{ "gx1x1":130, "gx1x2":134, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:16.600' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28818, 1, 1001, 1002, N'{ "gx1x1":135, "gx1x2":139, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:16.710' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28819, 1, 1001, 1002, N'{ "gx1x1":137, "gx1x2":143, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:16.943' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28820, 1, 1001, 1002, N'{ "gx1x1":145, "gx1x2":151, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:17.100' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28821, 1, 1001, 1002, N'{ "gx1x1":148, "gx1x2":154, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:17.223' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28822, 1, 1001, 1002, N'{ "gx1x1":153, "gx1x2":159, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:17.397' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28823, 1, 1001, 1002, N'{ "gx1x1":158, "gx1x2":164, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:17.507' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28824, 1, 1001, 1002, N'{ "gx1x1":160, "gx1x2":172, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:17.583' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28825, 1, 1001, 1002, N'{ "gx1x1":163, "gx1x2":175, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:17.697' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28826, 1, 1001, 1002, N'{ "gx1x1":161, "gx1x2":181, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:18.210' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28827, 1, 1001, 1002, N'{ "gx1x1":166, "gx1x2":192, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:18.477' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28828, 1, 1001, 1002, N'{ "gx1x1":172, "gx1x2":200, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:18.837' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28829, 1, 1001, 1002, N'{ "gx1x1":172, "gx1x2":204, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:19.117' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28830, 1, 1001, 1002, N'{ "gx1x1":177, "gx1x2":209, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:19.227' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28831, 1, 1001, 1002, N'{ "gx1x1":196, "gx1x2":224, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:19.320' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28832, 1, 1001, 1002, N'{ "gx1x1":200, "gx1x2":228, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:19.400' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28833, 1, 1001, 1002, N'{ "gx1x1":201, "gx1x2":229, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:19.557' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28834, 1, 1001, 1002, N'{ "gx1x1":220, "gx1x2":236, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:19.663' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28835, 1, 1001, 1002, N'{ "gx1x1":224, "gx1x2":236, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:19.807' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28836, 1, 1001, 1002, N'{ "gx1x1":225, "gx1x2":237, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:19.947' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28837, 1, 1001, 1002, N'{ "gx1x1":247, "gx1x2":243, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:20.040' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28838, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":247, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:20.227' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28839, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":248, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:20.383' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28840, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:20.510' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28841, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:20.760' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28842, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:21.023' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28843, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:21.273' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28844, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":238, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:21.430' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28845, 1, 1001, 1002, N'{ "gx1x1":253, "gx1x2":221, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:21.540' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28846, 1, 1001, 1002, N'{ "gx1x1":251, "gx1x2":223, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:24.870' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28847, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":227, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:25.227' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28848, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":231, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:25.510' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28849, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":229, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:26.713' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28850, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":226, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:27.087' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28851, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":227, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:27.213' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28852, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":235, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:27.417' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28853, 1, 1001, 1002, N'{ "gx1x1":241, "gx1x2":247, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:27.493' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28854, 1, 1001, 1002, N'{ "gx1x1":233, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:27.573' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28855, 1, 1001, 1002, N'{ "gx1x1":230, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:27.683' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28856, 1, 1001, 1002, N'{ "gx1x1":228, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:28.153' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28857, 1, 1001, 1002, N'{ "gx1x1":215, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:28.307' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28858, 1, 1001, 1002, N'{ "gx1x1":207, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:28.417' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28859, 1, 1001, 1002, N'{ "gx1x1":204, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:29.003' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28860, 1, 1001, 1002, N'{ "gx1x1":199, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:29.287' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28861, 1, 1001, 1002, N'{ "gx1x1":201, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:29.613' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28862, 1, 1001, 1002, N'{ "gx1x1":212, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:29.770' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28863, 1, 1001, 1002, N'{ "gx1x1":215, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:29.880' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28864, 1, 1001, 1002, N'{ "gx1x1":218, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:29.957' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28865, 1, 1001, 1002, N'{ "gx1x1":221, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:32.380' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28866, 1, 1001, 1002, N'{ "gx1x1":238, "gx1x2":234, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:32.473' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28867, 1, 1001, 1002, N'{ "gx1x1":236, "gx1x2":236, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:32.973' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28868, 1, 1001, 1002, N'{ "gx1x1":231, "gx1x2":241, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:33.270' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28869, 1, 1001, 1002, N'{ "gx1x1":222, "gx1x2":250, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:33.443' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28870, 1, 1001, 1002, N'{ "gx1x1":217, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:33.583' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28871, 1, 1001, 1002, N'{ "gx1x1":206, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:33.647' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28872, 1, 1001, 1002, N'{ "gx1x1":203, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:33.850' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28873, 1, 1001, 1002, N'{ "gx1x1":204, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:34.367' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28874, 1, 1001, 1002, N'{ "gx1x1":223, "gx1x2":249, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:34.460' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28875, 1, 1001, 1002, N'{ "gx1x1":228, "gx1x2":244, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:34.553' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28876, 1, 1001, 1002, N'{ "gx1x1":235, "gx1x2":239, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:34.647' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28877, 1, 1001, 1002, N'{ "gx1x1":237, "gx1x2":237, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:34.787' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28878, 1, 1001, 1002, N'{ "gx1x1":243, "gx1x2":231, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:34.927' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28879, 1, 1001, 1002, N'{ "gx1x1":242, "gx1x2":232, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:35.147' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28880, 1, 1001, 1002, N'{ "gx1x1":239, "gx1x2":235, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:35.257' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28881, 1, 1001, 1002, N'{ "gx1x1":235, "gx1x2":239, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:35.427' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28882, 1, 1001, 1002, N'{ "gx1x1":237, "gx1x2":237, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:36.177' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28883, 1, 1001, 1002, N'{ "gx1x1":239, "gx1x2":235, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:36.490' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28884, 1, 1001, 1002, N'{ "gx1x1":232, "gx1x2":228, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:42.460' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28885, 1, 1001, 1002, N'{ "gx1x1":190, "gx1x2":196, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:42.537' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28886, 1, 1001, 1002, N'{ "gx1x1":146, "gx1x2":156, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:42.617' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28887, 1, 1001, 1002, N'{ "gx1x1":103, "gx1x2":113, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:42.710' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28888, 1, 1001, 1002, N'{ "gx1x1":38, "gx1x2":60, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:56:42.787' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28889, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":43, "gx2x2":5}', N'', 0, CAST(N'2017-08-07T13:56:42.943' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28890, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":160, "gx2x2":110}', N'', 0, CAST(N'2017-08-07T13:56:43.020' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28891, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":166, "gx2x2":112}', N'', 0, CAST(N'2017-08-07T13:56:43.100' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28892, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":182, "gx2x2":124}', N'', 0, CAST(N'2017-08-07T13:56:43.177' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28893, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":196, "gx2x2":168}', N'', 0, CAST(N'2017-08-07T13:56:43.257' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28894, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":192, "gx2x2":196}', N'', 0, CAST(N'2017-08-07T13:56:43.350' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28895, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":189, "gx2x2":209}', N'', 0, CAST(N'2017-08-07T13:56:43.443' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28896, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":192, "gx2x2":220}', N'', 0, CAST(N'2017-08-07T13:56:43.630' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28897, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":209, "gx2x2":221}', N'', 0, CAST(N'2017-08-07T13:56:43.710' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28898, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":215, "gx2x2":221}', N'', 0, CAST(N'2017-08-07T13:56:43.943' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28899, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":242, "gx2x2":226}', N'', 0, CAST(N'2017-08-07T13:56:44.210' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28900, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":240, "gx2x2":228}', N'', 0, CAST(N'2017-08-07T13:56:44.287' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28901, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":236, "gx2x2":232}', N'', 0, CAST(N'2017-08-07T13:56:44.397' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28902, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":226, "gx2x2":242}', N'', 0, CAST(N'2017-08-07T13:56:44.583' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28903, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":224, "gx2x2":244}', N'', 0, CAST(N'2017-08-07T13:56:44.647' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28904, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":217, "gx2x2":255}', N'', 0, CAST(N'2017-08-07T13:56:44.757' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28905, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":215, "gx2x2":257}', N'', 0, CAST(N'2017-08-07T13:56:44.867' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28906, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":217, "gx2x2":255}', N'', 0, CAST(N'2017-08-07T13:56:45.020' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28907, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":223, "gx2x2":245}', N'', 0, CAST(N'2017-08-07T13:56:45.163' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28908, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":225, "gx2x2":241}', N'', 0, CAST(N'2017-08-07T13:56:45.257' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28909, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":234, "gx2x2":228}', N'', 0, CAST(N'2017-08-07T13:56:45.430' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28910, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":238, "gx2x2":218}', N'', 0, CAST(N'2017-08-07T13:56:45.617' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28911, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":245, "gx2x2":207}', N'', 0, CAST(N'2017-08-07T13:56:45.680' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28912, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":247, "gx2x2":199}', N'', 0, CAST(N'2017-08-07T13:56:45.897' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28913, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":245, "gx2x2":201}', N'', 0, CAST(N'2017-08-07T13:56:46.023' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28914, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":237, "gx2x2":209}', N'', 0, CAST(N'2017-08-07T13:56:46.100' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28915, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":229, "gx2x2":217}', N'', 0, CAST(N'2017-08-07T13:56:46.210' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28916, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":220, "gx2x2":226}', N'', 0, CAST(N'2017-08-07T13:56:46.273' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28917, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":218, "gx2x2":228}', N'', 0, CAST(N'2017-08-07T13:56:46.443' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28918, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":210, "gx2x2":236}', N'', 0, CAST(N'2017-08-07T13:56:46.600' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28919, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":212, "gx2x2":234}', N'', 0, CAST(N'2017-08-07T13:56:46.960' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28920, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":228, "gx2x2":212}', N'', 0, CAST(N'2017-08-07T13:56:47.227' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28921, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":235, "gx2x2":199}', N'', 0, CAST(N'2017-08-07T13:56:47.443' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28922, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":228, "gx2x2":206}', N'', 0, CAST(N'2017-08-07T13:56:47.617' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28923, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":215, "gx2x2":219}', N'', 0, CAST(N'2017-08-07T13:56:47.773' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28924, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":216, "gx2x2":220}', N'', 0, CAST(N'2017-08-07T13:56:48.493' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28925, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":233, "gx2x2":229}', N'', 0, CAST(N'2017-08-07T13:56:48.790' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28926, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":238, "gx2x2":234}', N'', 0, CAST(N'2017-08-07T13:56:48.977' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28927, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":242, "gx2x2":236}', N'', 0, CAST(N'2017-08-07T13:56:49.070' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28928, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":245, "gx2x2":239}', N'', 0, CAST(N'2017-08-07T13:56:49.303' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28929, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":248, "gx2x2":242}', N'', 0, CAST(N'2017-08-07T13:56:49.650' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28930, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":251, "gx2x2":239}', N'', 0, CAST(N'2017-08-07T13:56:50.213' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28931, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":256, "gx2x2":234}', N'', 0, CAST(N'2017-08-07T13:56:50.480' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28932, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":255, "gx2x2":235}', N'', 0, CAST(N'2017-08-07T13:56:50.823' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28933, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":232, "gx2x2":252}', N'', 0, CAST(N'2017-08-07T13:56:50.983' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28934, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":233, "gx2x2":245}', N'', 0, CAST(N'2017-08-07T13:56:51.280' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28935, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":236, "gx2x2":232}', N'', 0, CAST(N'2017-08-07T13:56:51.560' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28936, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":234, "gx2x2":234}', N'', 0, CAST(N'2017-08-07T13:56:51.920' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28937, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":215, "gx2x2":253}', N'', 0, CAST(N'2017-08-07T13:56:52.077' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28938, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":203, "gx2x2":269}', N'', 0, CAST(N'2017-08-07T13:56:52.200' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28939, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":204, "gx2x2":268}', N'', 0, CAST(N'2017-08-07T13:56:52.530' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28940, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":212, "gx2x2":260}', N'', 0, CAST(N'2017-08-07T13:56:52.607' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28941, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":220, "gx2x2":252}', N'', 0, CAST(N'2017-08-07T13:56:52.747' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28942, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":230, "gx2x2":242}', N'', 0, CAST(N'2017-08-07T13:56:52.890' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28943, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":231, "gx2x2":237}', N'', 0, CAST(N'2017-08-07T13:56:53.310' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28944, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":235, "gx2x2":231}', N'', 0, CAST(N'2017-08-07T13:56:53.677' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28945, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":233, "gx2x2":229}', N'', 0, CAST(N'2017-08-07T13:56:53.770' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28946, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":229, "gx2x2":233}', N'', 0, CAST(N'2017-08-07T13:56:53.850' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28947, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":226, "gx2x2":236}', N'', 0, CAST(N'2017-08-07T13:56:53.943' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28948, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":220, "gx2x2":242}', N'', 0, CAST(N'2017-08-07T13:56:54.020' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28949, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":212, "gx2x2":250}', N'', 0, CAST(N'2017-08-07T13:56:54.130' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28950, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":209, "gx2x2":253}', N'', 0, CAST(N'2017-08-07T13:56:54.240' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28951, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":212, "gx2x2":250}', N'', 0, CAST(N'2017-08-07T13:56:57.397' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28952, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":213, "gx2x2":249}', N'', 0, CAST(N'2017-08-07T13:56:57.553' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28953, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":218, "gx2x2":244}', N'', 0, CAST(N'2017-08-07T13:56:57.723' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28954, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":225, "gx2x2":237}', N'', 0, CAST(N'2017-08-07T13:56:57.897' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28955, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":226, "gx2x2":236}', N'', 0, CAST(N'2017-08-07T13:56:58.083' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28956, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":233, "gx2x2":229}', N'', 0, CAST(N'2017-08-07T13:56:58.150' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28957, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":232, "gx2x2":226}', N'', 0, CAST(N'2017-08-07T13:56:58.353' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28958, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":235, "gx2x2":223}', N'', 0, CAST(N'2017-08-07T13:56:58.993' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28959, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":243, "gx2x2":215}', N'', 0, CAST(N'2017-08-07T13:56:59.073' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28960, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":250, "gx2x2":208}', N'', 0, CAST(N'2017-08-07T13:56:59.273' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28961, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":248, "gx2x2":210}', N'', 0, CAST(N'2017-08-07T13:56:59.603' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28962, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":242, "gx2x2":216}', N'', 0, CAST(N'2017-08-07T13:56:59.807' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28963, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":239, "gx2x2":219}', N'', 0, CAST(N'2017-08-07T13:56:59.870' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28964, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":237, "gx2x2":221}', N'', 0, CAST(N'2017-08-07T13:57:00.040' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28965, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":231, "gx2x2":227}', N'', 0, CAST(N'2017-08-07T13:57:00.120' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28966, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":229, "gx2x2":229}', N'', 0, CAST(N'2017-08-07T13:57:00.383' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28967, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":231, "gx2x2":227}', N'', 0, CAST(N'2017-08-07T13:57:00.477' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28968, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":234, "gx2x2":224}', N'', 0, CAST(N'2017-08-07T13:57:00.540' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28969, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":239, "gx2x2":219}', N'', 0, CAST(N'2017-08-07T13:57:00.650' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28970, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":244, "gx2x2":212}', N'', 0, CAST(N'2017-08-07T13:57:00.743' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28971, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":242, "gx2x2":214}', N'', 0, CAST(N'2017-08-07T13:57:00.963' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28972, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":233, "gx2x2":223}', N'', 0, CAST(N'2017-08-07T13:57:01.087' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28973, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":231, "gx2x2":225}', N'', 0, CAST(N'2017-08-07T13:57:01.197' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28974, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":223, "gx2x2":233}', N'', 0, CAST(N'2017-08-07T13:57:01.363' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28975, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":217, "gx2x2":239}', N'', 0, CAST(N'2017-08-07T13:57:01.473' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28976, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":218, "gx2x2":238}', N'', 0, CAST(N'2017-08-07T13:57:01.753' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28977, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":223, "gx2x2":233}', N'', 0, CAST(N'2017-08-07T13:57:01.880' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28978, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":230, "gx2x2":226}', N'', 0, CAST(N'2017-08-07T13:57:02.050' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28979, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":228, "gx2x2":228}', N'', 0, CAST(N'2017-08-07T13:57:02.427' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28980, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":225, "gx2x2":231}', N'', 0, CAST(N'2017-08-07T13:57:02.690' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28981, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":226, "gx2x2":230}', N'', 0, CAST(N'2017-08-07T13:57:07.113' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28982, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":233, "gx2x2":223}', N'', 0, CAST(N'2017-08-07T13:57:07.380' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28983, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":212, "gx2x2":250}', N'', 0, CAST(N'2017-08-07T13:57:07.473' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28984, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":207, "gx2x2":255}', N'', 0, CAST(N'2017-08-07T13:57:07.613' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28985, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":198, "gx2x2":264}', N'', 0, CAST(N'2017-08-07T13:57:07.723' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28986, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":191, "gx2x2":267}', N'', 0, CAST(N'2017-08-07T13:57:07.910' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28987, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":192, "gx2x2":266}', N'', 0, CAST(N'2017-08-07T13:57:08.083' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28988, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":197, "gx2x2":261}', N'', 0, CAST(N'2017-08-07T13:57:08.193' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28989, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":200, "gx2x2":258}', N'', 0, CAST(N'2017-08-07T13:57:08.317' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28990, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":203, "gx2x2":255}', N'', 0, CAST(N'2017-08-07T13:57:08.537' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28991, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":202, "gx2x2":256}', N'', 0, CAST(N'2017-08-07T13:57:08.630' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28992, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":192, "gx2x2":266}', N'', 0, CAST(N'2017-08-07T13:57:08.740' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28993, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":186, "gx2x2":272}', N'', 0, CAST(N'2017-08-07T13:57:08.817' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28994, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":181, "gx2x2":277}', N'', 0, CAST(N'2017-08-07T13:57:08.973' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28995, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":183, "gx2x2":275}', N'', 0, CAST(N'2017-08-07T13:57:09.130' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28996, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":193, "gx2x2":269}', N'', 0, CAST(N'2017-08-07T13:57:09.240' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28997, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":194, "gx2x2":268}', N'', 0, CAST(N'2017-08-07T13:57:09.443' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28998, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":199, "gx2x2":263}', N'', 0, CAST(N'2017-08-07T13:57:09.800' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (28999, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":186, "gx2x2":276}', N'', 0, CAST(N'2017-08-07T13:57:10.067' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29000, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":188, "gx2x2":274}', N'', 0, CAST(N'2017-08-07T13:57:10.193' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29001, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":193, "gx2x2":269}', N'', 0, CAST(N'2017-08-07T13:57:10.347' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29002, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":190, "gx2x2":266}', N'', 0, CAST(N'2017-08-07T13:57:11.880' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29003, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":134, "gx2x2":236}', N'', 0, CAST(N'2017-08-07T13:57:11.957' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29004, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":7, "gx2x2":105}', N'', 0, CAST(N'2017-08-07T13:57:12.050' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29005, 1, 1001, 1002, N'{ "gx1x1":46, "gx1x2":0, "gx2x1":0, "gx2x2":24}', N'', 0, CAST(N'2017-08-07T13:57:12.130' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29006, 1, 1001, 1002, N'{ "gx1x1":105, "gx1x2":61, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:12.207' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29007, 1, 1001, 1002, N'{ "gx1x1":175, "gx1x2":143, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:12.300' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29008, 1, 1001, 1002, N'{ "gx1x1":173, "gx1x2":145, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:12.443' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29009, 1, 1001, 1002, N'{ "gx1x1":88, "gx1x2":88, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:12.503' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29010, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":6, "gx2x1":16, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:12.583' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29011, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":94, "gx2x2":72}', N'', 0, CAST(N'2017-08-07T13:57:12.660' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29012, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":110, "gx2x2":88}', N'', 0, CAST(N'2017-08-07T13:57:12.770' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29013, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":165, "gx2x2":145}', N'', 0, CAST(N'2017-08-07T13:57:12.863' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29014, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":161, "gx2x2":141}', N'', 0, CAST(N'2017-08-07T13:57:13.050' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29015, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":125, "gx2x2":115}', N'', 0, CAST(N'2017-08-07T13:57:13.207' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29016, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":120, "gx2x2":116}', N'', 0, CAST(N'2017-08-07T13:57:16.310' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29017, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:16.403' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29018, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:16.480' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29019, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:16.560' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29020, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:16.653' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29021, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:16.747' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29022, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:16.810' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29023, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:16.917' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29024, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:17.043' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29025, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:17.200' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29026, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:17.263' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29027, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:17.463' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29028, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:17.763' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29029, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:17.840' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29030, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:17.933' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29031, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:17.997' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29032, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:18.073' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29033, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:18.277' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29034, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:28.637' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29035, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:28.717' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29036, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:28.980' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29037, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:30.497' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29038, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:30.653' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29039, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:30.730' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29040, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:30.810' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29041, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:30.903' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29042, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:31.060' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29043, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:31.183' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29044, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:31.263' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29045, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:31.543' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29046, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:32.527' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29047, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:32.683' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29048, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:32.827' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29049, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:32.950' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29050, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:42.623' AS DateTime), NULL)
GO
INSERT [dbo].[Message] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (29051, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 0, CAST(N'2017-08-07T13:57:42.700' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Message] OFF
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (8989, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T21:59:55.063' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (8990, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T21:59:55.147' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (8991, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T21:59:55.187' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (8992, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T21:59:55.220' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (8993, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T21:59:55.603' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (8994, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T21:59:55.667' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (8995, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T21:59:55.807' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (8996, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T21:59:56.103' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (8997, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T21:59:56.563' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (8998, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":204, "gx2x2":216}', N'', 1, CAST(N'2017-08-06T21:59:57.093' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (8999, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":203, "gx2x2":215}', N'', 1, CAST(N'2017-08-06T21:59:58.503' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9000, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":180, "gx2x2":202}', N'', 1, CAST(N'2017-08-06T21:59:58.567' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9001, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":179, "gx2x2":201}', N'', 1, CAST(N'2017-08-06T21:59:58.767' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9002, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":171, "gx2x2":193}', N'', 1, CAST(N'2017-08-06T21:59:58.807' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9003, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":162, "gx2x2":188}', N'', 1, CAST(N'2017-08-06T21:59:58.840' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9004, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":159, "gx2x2":185}', N'', 1, CAST(N'2017-08-06T21:59:59.240' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9005, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":121, "gx2x2":149}', N'', 1, CAST(N'2017-08-06T21:59:59.647' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9006, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":119, "gx2x2":151}', N'', 1, CAST(N'2017-08-06T22:00:01.040' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9007, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":102, "gx2x2":144}', N'', 1, CAST(N'2017-08-06T22:00:01.430' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9008, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":30, "gx2x2":100}', N'', 1, CAST(N'2017-08-06T22:00:01.827' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9009, 1, 1001, 1002, N'{ "gx1x1":135, "gx1x2":5, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:02.363' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9010, 1, 1001, 1002, N'{ "gx1x1":115, "gx1x2":0, "gx2x1":0, "gx2x2":9}', N'', 1, CAST(N'2017-08-06T22:00:02.873' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9011, 1, 1001, 1002, N'{ "gx1x1":46, "gx1x2":0, "gx2x1":0, "gx2x2":66}', N'', 1, CAST(N'2017-08-06T22:00:03.397' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9012, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":51, "gx2x2":141}', N'', 1, CAST(N'2017-08-06T22:00:03.900' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9013, 1, 1001, 1002, N'{ "gx1x1":49, "gx1x2":0, "gx2x1":0, "gx2x2":59}', N'', 1, CAST(N'2017-08-06T22:00:04.377' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9014, 1, 1001, 1002, N'{ "gx1x1":182, "gx1x2":60, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:04.920' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9015, 1, 1001, 1002, N'{ "gx1x1":209, "gx1x2":119, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:05.573' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9016, 1, 1001, 1002, N'{ "gx1x1":247, "gx1x2":221, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:05.990' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9017, 1, 1001, 1002, N'{ "gx1x1":236, "gx1x2":232, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:06.167' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9018, 1, 1001, 1002, N'{ "gx1x1":228, "gx1x2":228, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:06.220' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9019, 1, 1001, 1002, N'{ "gx1x1":219, "gx1x2":225, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:06.657' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9020, 1, 1001, 1002, N'{ "gx1x1":175, "gx1x2":143, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:07.020' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9021, 1, 1001, 1002, N'{ "gx1x1":174, "gx1x2":142, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:08.100' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9022, 1, 1001, 1002, N'{ "gx1x1":171, "gx1x2":155, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:08.143' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9023, 1, 1001, 1002, N'{ "gx1x1":166, "gx1x2":160, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:08.190' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9024, 1, 1001, 1002, N'{ "gx1x1":163, "gx1x2":163, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:08.243' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9025, 1, 1001, 1002, N'{ "gx1x1":149, "gx1x2":177, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:08.563' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9026, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:08.940' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9027, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:36.060' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9028, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:36.243' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9029, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:36.957' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9030, 1, 1001, 1002, N'{ "gx1x1":212, "gx1x2":218, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:37.360' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9031, 1, 1001, 1002, N'{ "gx1x1":198, "gx1x2":214, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:37.440' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9032, 1, 1001, 1002, N'{ "gx1x1":185, "gx1x2":207, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:37.500' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9033, 1, 1001, 1002, N'{ "gx1x1":178, "gx1x2":204, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:37.547' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9034, 1, 1001, 1002, N'{ "gx1x1":177, "gx1x2":203, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:37.580' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9035, 1, 1001, 1002, N'{ "gx1x1":175, "gx1x2":201, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:38.010' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9036, 1, 1001, 1002, N'{ "gx1x1":100, "gx1x2":132, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:38.463' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9037, 1, 1001, 1002, N'{ "gx1x1":59, "gx1x2":113, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:38.690' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9038, 1, 1001, 1002, N'{ "gx1x1":29, "gx1x2":99, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:39.207' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9039, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":59, "gx2x1":21, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:39.370' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9040, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":51, "gx2x1":55, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:39.423' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9041, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":38, "gx2x1":96, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:39.463' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9042, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":160, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:39.863' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9043, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":239, "gx2x2":181}', N'', 1, CAST(N'2017-08-06T22:00:40.517' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9044, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":230, "gx2x2":204}', N'', 1, CAST(N'2017-08-06T22:00:41.143' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9045, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":126, "gx2x2":110}', N'', 1, CAST(N'2017-08-06T22:00:41.690' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9046, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":84, "gx2x2":68}', N'', 1, CAST(N'2017-08-06T22:00:42.323' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9047, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":54, "gx2x2":44}', N'', 1, CAST(N'2017-08-06T22:00:42.820' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9048, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":27, "gx2x2":17}', N'', 1, CAST(N'2017-08-06T22:00:42.867' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9049, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":18, "gx2x2":8}', N'', 1, CAST(N'2017-08-06T22:00:42.897' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9050, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":5, "gx2x1":1, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:42.930' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9051, 1, 1001, 1002, N'{ "gx1x1":10, "gx1x2":10, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:42.957' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9052, 1, 1001, 1002, N'{ "gx1x1":11, "gx1x2":11, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:43.060' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9053, 1, 1001, 1002, N'{ "gx1x1":41, "gx1x2":29, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:43.677' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9054, 1, 1001, 1002, N'{ "gx1x1":144, "gx1x2":102, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:44.273' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9055, 1, 1001, 1002, N'{ "gx1x1":212, "gx1x2":208, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:44.747' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9056, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:45.080' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9057, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:45.137' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9058, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:45.170' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9059, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:45.337' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9060, 1, 1001, 1002, N'{ "gx1x1":238, "gx1x2":250, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:45.407' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9061, 1, 1001, 1002, N'{ "gx1x1":231, "gx1x2":247, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:45.553' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9062, 1, 1001, 1002, N'{ "gx1x1":229, "gx1x2":245, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:45.767' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9063, 1, 1001, 1002, N'{ "gx1x1":153, "gx1x2":189, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:46.180' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9064, 1, 1001, 1002, N'{ "gx1x1":166, "gx1x2":216, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:46.830' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9065, 1, 1001, 1002, N'{ "gx1x1":165, "gx1x2":215, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:46.957' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9066, 1, 1001, 1002, N'{ "gx1x1":149, "gx1x2":199, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:47.053' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9067, 1, 1001, 1002, N'{ "gx1x1":132, "gx1x2":186, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:47.153' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9068, 1, 1001, 1002, N'{ "gx1x1":122, "gx1x2":180, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:47.187' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9069, 1, 1001, 1002, N'{ "gx1x1":108, "gx1x2":172, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:47.207' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9070, 1, 1001, 1002, N'{ "gx1x1":100, "gx1x2":164, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:47.253' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9071, 1, 1001, 1002, N'{ "gx1x1":90, "gx1x2":156, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:47.283' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9072, 1, 1001, 1002, N'{ "gx1x1":83, "gx1x2":149, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:47.313' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9073, 1, 1001, 1002, N'{ "gx1x1":75, "gx1x2":141, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:47.343' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9074, 1, 1001, 1002, N'{ "gx1x1":67, "gx1x2":133, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:47.587' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9075, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":50, "gx2x1":14, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:48.083' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9076, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":72, "gx2x2":14}', N'', 1, CAST(N'2017-08-06T22:00:48.550' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9077, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":123, "gx2x2":75}', N'', 1, CAST(N'2017-08-06T22:00:49.167' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9078, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":172, "gx2x2":128}', N'', 1, CAST(N'2017-08-06T22:00:49.490' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9079, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":209, "gx2x2":167}', N'', 1, CAST(N'2017-08-06T22:00:49.997' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9080, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":235, "gx2x2":193}', N'', 1, CAST(N'2017-08-06T22:00:50.600' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9081, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":258, "gx2x2":210}', N'', 1, CAST(N'2017-08-06T22:00:51.247' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9082, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":212, "gx2x2":152}', N'', 1, CAST(N'2017-08-06T22:00:51.707' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9083, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":140, "gx2x2":74}', N'', 1, CAST(N'2017-08-06T22:00:52.153' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9084, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":25, "gx2x1":45, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:52.770' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9085, 1, 1001, 1002, N'{ "gx1x1":30, "gx1x2":84, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:53.270' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9086, 1, 1001, 1002, N'{ "gx1x1":138, "gx1x2":158, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:53.710' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9087, 1, 1001, 1002, N'{ "gx1x1":220, "gx1x2":224, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:54.390' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9088, 1, 1001, 1002, N'{ "gx1x1":135, "gx1x2":215, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:54.990' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9089, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":250, "gx2x1":122, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:55.650' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9090, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":225, "gx2x1":231, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:56.383' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9091, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":3, "gx2x1":29, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:56.923' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9092, 1, 1001, 1002, N'{ "gx1x1":107, "gx1x2":0, "gx2x1":0, "gx2x2":113}', N'', 1, CAST(N'2017-08-06T22:00:56.970' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9093, 1, 1001, 1002, N'{ "gx1x1":148, "gx1x2":0, "gx2x1":0, "gx2x2":154}', N'', 1, CAST(N'2017-08-06T22:00:57.023' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9094, 1, 1001, 1002, N'{ "gx1x1":161, "gx1x2":0, "gx2x1":0, "gx2x2":165}', N'', 1, CAST(N'2017-08-06T22:00:57.067' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9095, 1, 1001, 1002, N'{ "gx1x1":173, "gx1x2":0, "gx2x1":0, "gx2x2":177}', N'', 1, CAST(N'2017-08-06T22:00:57.103' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9096, 1, 1001, 1002, N'{ "gx1x1":189, "gx1x2":0, "gx2x1":0, "gx2x2":193}', N'', 1, CAST(N'2017-08-06T22:00:57.143' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9097, 1, 1001, 1002, N'{ "gx1x1":199, "gx1x2":0, "gx2x1":0, "gx2x2":203}', N'', 1, CAST(N'2017-08-06T22:00:57.360' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9098, 1, 1001, 1002, N'{ "gx1x1":234, "gx1x2":0, "gx2x1":0, "gx2x2":234}', N'', 1, CAST(N'2017-08-06T22:00:57.913' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9099, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":147}', N'', 1, CAST(N'2017-08-06T22:00:58.343' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9100, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":28, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:58.820' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9101, 1, 1001, 1002, N'{ "gx1x1":218, "gx1x2":254, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:00:59.490' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9102, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":90, "gx2x1":54, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:00.107' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9103, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":205, "gx2x2":49}', N'', 1, CAST(N'2017-08-06T22:01:00.157' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9104, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":209, "gx2x2":53}', N'', 1, CAST(N'2017-08-06T22:01:00.190' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9105, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":205, "gx2x2":53}', N'', 1, CAST(N'2017-08-06T22:01:00.317' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9106, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":178, "gx2x2":38}', N'', 1, CAST(N'2017-08-06T22:01:00.353' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9107, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":140, "gx2x2":6}', N'', 1, CAST(N'2017-08-06T22:01:00.610' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9108, 1, 1001, 1002, N'{ "gx1x1":78, "gx1x2":186, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:01.060' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9109, 1, 1001, 1002, N'{ "gx1x1":204, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:01.590' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9110, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":127, "gx2x2":77}', N'', 1, CAST(N'2017-08-06T22:01:02.017' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9111, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":242, "gx2x2":178}', N'', 1, CAST(N'2017-08-06T22:01:02.440' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9112, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":249, "gx2x2":185}', N'', 1, CAST(N'2017-08-06T22:01:03.093' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9113, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":202, "gx2x2":154}', N'', 1, CAST(N'2017-08-06T22:01:03.123' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9114, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":182, "gx2x2":134}', N'', 1, CAST(N'2017-08-06T22:01:03.157' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9115, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":161, "gx2x2":113}', N'', 1, CAST(N'2017-08-06T22:01:03.190' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9116, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":124, "gx2x2":76}', N'', 1, CAST(N'2017-08-06T22:01:03.273' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9117, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":21, "gx2x1":27, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:03.307' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9118, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":45, "gx2x1":3, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:03.340' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9119, 1, 1001, 1002, N'{ "gx1x1":85, "gx1x2":135, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:03.847' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9120, 1, 1001, 1002, N'{ "gx1x1":171, "gx1x2":221, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:03.883' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9121, 1, 1001, 1002, N'{ "gx1x1":177, "gx1x2":227, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:03.923' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9122, 1, 1001, 1002, N'{ "gx1x1":185, "gx1x2":235, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:03.957' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9123, 1, 1001, 1002, N'{ "gx1x1":189, "gx1x2":239, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:04.003' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9124, 1, 1001, 1002, N'{ "gx1x1":195, "gx1x2":239, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:04.037' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9125, 1, 1001, 1002, N'{ "gx1x1":200, "gx1x2":244, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:04.067' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9126, 1, 1001, 1002, N'{ "gx1x1":202, "gx1x2":244, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:04.273' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9127, 1, 1001, 1002, N'{ "gx1x1":207, "gx1x2":245, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:04.307' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9128, 1, 1001, 1002, N'{ "gx1x1":215, "gx1x2":247, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:04.340' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9129, 1, 1001, 1002, N'{ "gx1x1":222, "gx1x2":250, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:04.370' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9130, 1, 1001, 1002, N'{ "gx1x1":220, "gx1x2":248, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:04.890' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9131, 1, 1001, 1002, N'{ "gx1x1":214, "gx1x2":242, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:04.933' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9132, 1, 1001, 1002, N'{ "gx1x1":209, "gx1x2":237, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:04.957' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9133, 1, 1001, 1002, N'{ "gx1x1":204, "gx1x2":236, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:05.133' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9134, 1, 1001, 1002, N'{ "gx1x1":202, "gx1x2":234, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:11.937' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9135, 1, 1001, 1002, N'{ "gx1x1":170, "gx1x2":206, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:12.183' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9136, 1, 1001, 1002, N'{ "gx1x1":33, "gx1x2":69, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:12.690' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9137, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":83, "gx2x2":39}', N'', 1, CAST(N'2017-08-06T22:01:13.240' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9138, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":140, "gx2x2":90}', N'', 1, CAST(N'2017-08-06T22:01:13.650' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9139, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":190, "gx2x2":164}', N'', 1, CAST(N'2017-08-06T22:01:14.317' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9140, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":215, "gx2x2":205}', N'', 1, CAST(N'2017-08-06T22:01:14.507' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9141, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":217, "gx2x2":211}', N'', 1, CAST(N'2017-08-06T22:01:14.537' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9142, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":218, "gx2x2":212}', N'', 1, CAST(N'2017-08-06T22:01:14.770' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9143, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":239, "gx2x2":233}', N'', 1, CAST(N'2017-08-06T22:01:15.253' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9144, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":252, "gx2x2":246}', N'', 1, CAST(N'2017-08-06T22:01:15.303' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9145, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":255, "gx2x2":249}', N'', 1, CAST(N'2017-08-06T22:01:15.473' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9146, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":253, "gx2x2":247}', N'', 1, CAST(N'2017-08-06T22:01:15.793' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9147, 1, 1001, 1002, N'{ "gx1x1":48, "gx1x2":0, "gx2x1":0, "gx2x2":128}', N'', 1, CAST(N'2017-08-06T22:01:16.407' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9148, 1, 1001, 1002, N'{ "gx1x1":242, "gx1x2":0, "gx2x1":0, "gx2x2":232}', N'', 1, CAST(N'2017-08-06T22:01:17.060' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9149, 1, 1001, 1002, N'{ "gx1x1":241, "gx1x2":0, "gx2x1":0, "gx2x2":231}', N'', 1, CAST(N'2017-08-06T22:01:17.513' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9150, 1, 1001, 1002, N'{ "gx1x1":239, "gx1x2":0, "gx2x1":0, "gx2x2":229}', N'', 1, CAST(N'2017-08-06T22:01:18.220' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9151, 1, 1001, 1002, N'{ "gx1x1":235, "gx1x2":0, "gx2x1":0, "gx2x2":225}', N'', 1, CAST(N'2017-08-06T22:01:18.277' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9152, 1, 1001, 1002, N'{ "gx1x1":225, "gx1x2":0, "gx2x1":0, "gx2x2":215}', N'', 1, CAST(N'2017-08-06T22:01:18.327' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9153, 1, 1001, 1002, N'{ "gx1x1":211, "gx1x2":0, "gx2x1":0, "gx2x2":201}', N'', 1, CAST(N'2017-08-06T22:01:18.377' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9154, 1, 1001, 1002, N'{ "gx1x1":182, "gx1x2":0, "gx2x1":0, "gx2x2":172}', N'', 1, CAST(N'2017-08-06T22:01:18.743' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9155, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":210, "gx2x1":214, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:19.463' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9156, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":242, "gx2x1":246, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:20.107' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9157, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":243, "gx2x1":239, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:34.810' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9158, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":51, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:35.310' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9159, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:35.927' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9160, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:40.760' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9161, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:40.807' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9162, 1, 1001, 1002, N'{ "gx1x1":231, "gx1x2":0, "gx2x1":0, "gx2x2":75}', N'', 1, CAST(N'2017-08-06T22:01:41.073' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9163, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:41.473' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9164, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:41.853' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9165, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:42.263' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9166, 1, 1001, 1002, N'{ "gx1x1":102, "gx1x2":162, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:42.780' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9167, 1, 1001, 1002, N'{ "gx1x1":117, "gx1x2":129, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:43.240' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9168, 1, 1001, 1002, N'{ "gx1x1":15, "gx1x2":21, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:43.707' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9169, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":181, "gx2x2":137}', N'', 1, CAST(N'2017-08-06T22:01:44.373' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9170, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":239, "gx2x2":181}', N'', 1, CAST(N'2017-08-06T22:01:45.157' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9171, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":88, "gx2x2":62}', N'', 1, CAST(N'2017-08-06T22:01:45.210' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9172, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":70, "gx2x2":48}', N'', 1, CAST(N'2017-08-06T22:01:45.270' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9173, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":56, "gx2x2":36}', N'', 1, CAST(N'2017-08-06T22:01:45.307' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9174, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":41, "gx2x2":29}', N'', 1, CAST(N'2017-08-06T22:01:45.343' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9175, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":35, "gx2x2":23}', N'', 1, CAST(N'2017-08-06T22:01:45.377' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9176, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":32, "gx2x2":22}', N'', 1, CAST(N'2017-08-06T22:01:45.407' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9177, 1, 1001, 1002, N'{ "gx1x1":41, "gx1x2":29, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:45.867' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9178, 1, 1001, 1002, N'{ "gx1x1":129, "gx1x2":117, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:45.933' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9179, 1, 1001, 1002, N'{ "gx1x1":150, "gx1x2":140, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:46.007' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9180, 1, 1001, 1002, N'{ "gx1x1":168, "gx1x2":164, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:46.050' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9181, 1, 1001, 1002, N'{ "gx1x1":177, "gx1x2":177, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:46.090' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9182, 1, 1001, 1002, N'{ "gx1x1":183, "gx1x2":187, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:46.400' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9183, 1, 1001, 1002, N'{ "gx1x1":231, "gx1x2":237, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:46.783' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9184, 1, 1001, 1002, N'{ "gx1x1":233, "gx1x2":239, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:46.830' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9185, 1, 1001, 1002, N'{ "gx1x1":234, "gx1x2":240, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:47.250' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9186, 1, 1001, 1002, N'{ "gx1x1":244, "gx1x2":244, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:47.617' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9187, 1, 1001, 1002, N'{ "gx1x1":242, "gx1x2":246, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:48.760' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9188, 1, 1001, 1002, N'{ "gx1x1":239, "gx1x2":245, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:48.817' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9189, 1, 1001, 1002, N'{ "gx1x1":236, "gx1x2":242, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:49.143' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9190, 1, 1001, 1002, N'{ "gx1x1":199, "gx1x2":219, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:49.277' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9191, 1, 1001, 1002, N'{ "gx1x1":178, "gx1x2":198, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:49.350' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9192, 1, 1001, 1002, N'{ "gx1x1":173, "gx1x2":193, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:49.630' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9193, 1, 1001, 1002, N'{ "gx1x1":97, "gx1x2":129, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:50.073' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9194, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":67, "gx2x1":7, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:50.710' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9195, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":23, "gx2x1":89, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:50.760' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9196, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":20, "gx2x1":94, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:50.790' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9197, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":14, "gx2x1":104, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:50.820' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9198, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":10, "gx2x1":108, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:50.853' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9199, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":4, "gx2x1":118, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:50.887' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9200, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":128, "gx2x2":6}', N'', 1, CAST(N'2017-08-06T22:01:50.920' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9201, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":136, "gx2x2":14}', N'', 1, CAST(N'2017-08-06T22:01:50.940' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9202, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":140, "gx2x2":22}', N'', 1, CAST(N'2017-08-06T22:01:51.180' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9203, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":196, "gx2x2":120}', N'', 1, CAST(N'2017-08-06T22:01:51.720' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9204, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":246, "gx2x2":182}', N'', 1, CAST(N'2017-08-06T22:01:52.123' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9205, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":253, "gx2x2":225}', N'', 1, CAST(N'2017-08-06T22:01:52.767' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9206, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":255, "gx2x2":235}', N'', 1, CAST(N'2017-08-06T22:01:52.957' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9207, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":253, "gx2x2":237}', N'', 1, CAST(N'2017-08-06T22:01:53.440' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9208, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":252, "gx2x2":242}', N'', 1, CAST(N'2017-08-06T22:01:53.497' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9209, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":254, "gx2x2":244}', N'', 1, CAST(N'2017-08-06T22:01:53.673' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9210, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":252, "gx2x2":246}', N'', 1, CAST(N'2017-08-06T22:01:53.723' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9211, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":251, "gx2x2":247}', N'', 1, CAST(N'2017-08-06T22:01:53.790' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9212, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":252, "gx2x2":248}', N'', 1, CAST(N'2017-08-06T22:01:54.037' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9213, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":244, "gx2x2":254}', N'', 1, CAST(N'2017-08-06T22:01:54.563' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9214, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":243, "gx2x2":255}', N'', 1, CAST(N'2017-08-06T22:01:54.597' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9215, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":239, "gx2x2":259}', N'', 1, CAST(N'2017-08-06T22:01:54.690' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9216, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":234, "gx2x2":260}', N'', 1, CAST(N'2017-08-06T22:01:54.900' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9217, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":221, "gx2x2":257}', N'', 1, CAST(N'2017-08-06T22:01:55.267' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9218, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":200, "gx2x2":236}', N'', 1, CAST(N'2017-08-06T22:01:55.860' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9219, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":141, "gx2x2":177}', N'', 1, CAST(N'2017-08-06T22:01:56.267' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9220, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":73, "gx2x2":95}', N'', 1, CAST(N'2017-08-06T22:01:56.923' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9221, 1, 1001, 1002, N'{ "gx1x1":20, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:57.410' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9222, 1, 1001, 1002, N'{ "gx1x1":64, "gx1x2":44, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:57.503' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9223, 1, 1001, 1002, N'{ "gx1x1":77, "gx1x2":57, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:57.557' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9224, 1, 1001, 1002, N'{ "gx1x1":88, "gx1x2":68, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:57.590' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9225, 1, 1001, 1002, N'{ "gx1x1":96, "gx1x2":76, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:57.643' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9226, 1, 1001, 1002, N'{ "gx1x1":111, "gx1x2":89, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:57.930' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9227, 1, 1001, 1002, N'{ "gx1x1":184, "gx1x2":142, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:58.300' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9228, 1, 1001, 1002, N'{ "gx1x1":219, "gx1x2":177, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:58.747' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9229, 1, 1001, 1002, N'{ "gx1x1":233, "gx1x2":191, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:58.787' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9230, 1, 1001, 1002, N'{ "gx1x1":231, "gx1x2":193, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:58.940' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9231, 1, 1001, 1002, N'{ "gx1x1":235, "gx1x2":199, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:59.027' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9232, 1, 1001, 1002, N'{ "gx1x1":242, "gx1x2":230, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:01:59.540' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9233, 1, 1001, 1002, N'{ "gx1x1":245, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:00.250' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9234, 1, 1001, 1002, N'{ "gx1x1":233, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:00.680' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9235, 1, 1001, 1002, N'{ "gx1x1":231, "gx1x2":253, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:00.737' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9236, 1, 1001, 1002, N'{ "gx1x1":230, "gx1x2":252, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:01.067' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9237, 1, 1001, 1002, N'{ "gx1x1":228, "gx1x2":250, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:01.317' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9238, 1, 1001, 1002, N'{ "gx1x1":230, "gx1x2":252, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:20.537' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9239, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:20.933' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9240, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:21.003' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9241, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:21.043' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9242, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:21.077' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9243, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:21.110' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9244, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:23.267' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9245, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:23.327' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9246, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:23.357' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9247, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:23.687' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9248, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:24.243' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9249, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:25.383' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9250, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:25.457' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9251, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:25.567' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9252, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:26.190' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9253, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:26.770' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9254, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:27.267' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9255, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:27.933' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9256, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:28.423' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9257, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:36.977' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9258, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:37.053' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9259, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:37.133' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9260, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:37.170' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9261, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":8, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:37.210' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9262, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":54, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:37.543' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9263, 1, 1001, 1002, N'{ "gx1x1":220, "gx1x2":252, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:38.100' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9264, 1, 1001, 1002, N'{ "gx1x1":204, "gx1x2":236, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:38.173' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9265, 1, 1001, 1002, N'{ "gx1x1":196, "gx1x2":232, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:38.297' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9266, 1, 1001, 1002, N'{ "gx1x1":185, "gx1x2":223, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:38.543' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9267, 1, 1001, 1002, N'{ "gx1x1":126, "gx1x2":174, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:38.933' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9268, 1, 1001, 1002, N'{ "gx1x1":57, "gx1x2":105, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:39.250' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9269, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":11, "gx2x1":53, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:39.877' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9270, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":171, "gx2x2":171}', N'', 1, CAST(N'2017-08-06T22:02:40.610' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9271, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":223, "gx2x2":239}', N'', 1, CAST(N'2017-08-06T22:02:41.077' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9272, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":233, "gx2x2":245}', N'', 1, CAST(N'2017-08-06T22:02:41.133' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9273, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":235, "gx2x2":247}', N'', 1, CAST(N'2017-08-06T22:02:41.657' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9274, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":236, "gx2x2":248}', N'', 1, CAST(N'2017-08-06T22:02:41.687' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9275, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":238, "gx2x2":250}', N'', 1, CAST(N'2017-08-06T22:02:41.800' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9276, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":240, "gx2x2":250}', N'', 1, CAST(N'2017-08-06T22:02:41.853' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9277, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":239, "gx2x2":249}', N'', 1, CAST(N'2017-08-06T22:02:42.397' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9278, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":229, "gx2x2":239}', N'', 1, CAST(N'2017-08-06T22:02:42.757' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9279, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":106, "gx2x2":110}', N'', 1, CAST(N'2017-08-06T22:02:43.430' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9280, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":45, "gx2x2":29}', N'', 1, CAST(N'2017-08-06T22:02:43.463' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9281, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":37, "gx2x2":21}', N'', 1, CAST(N'2017-08-06T22:02:43.513' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9282, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":31, "gx2x2":11}', N'', 1, CAST(N'2017-08-06T22:02:43.543' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9283, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":25, "gx2x2":3}', N'', 1, CAST(N'2017-08-06T22:02:43.577' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9284, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":5, "gx2x1":17, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:43.610' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9285, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":15, "gx2x1":11, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:43.640' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9286, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":18, "gx2x1":8, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:43.670' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9287, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":24, "gx2x1":2, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:44.010' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9288, 1, 1001, 1002, N'{ "gx1x1":91, "gx1x2":113, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:44.297' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9289, 1, 1001, 1002, N'{ "gx1x1":182, "gx1x2":204, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:44.763' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9290, 1, 1001, 1002, N'{ "gx1x1":232, "gx1x2":242, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:45.210' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9291, 1, 1001, 1002, N'{ "gx1x1":240, "gx1x2":250, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:45.690' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9292, 1, 1001, 1002, N'{ "gx1x1":242, "gx1x2":246, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:53.223' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9293, 1, 1001, 1002, N'{ "gx1x1":239, "gx1x2":165, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:53.577' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9294, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":23, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:53.983' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9295, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":11, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:54.027' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9296, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":9, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:54.060' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9297, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":4, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:54.100' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9298, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:02:54.140' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9299, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":3}', N'', 1, CAST(N'2017-08-06T22:02:54.190' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9300, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":8}', N'', 1, CAST(N'2017-08-06T22:02:54.223' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9301, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":12}', N'', 1, CAST(N'2017-08-06T22:02:54.440' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9302, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":16}', N'', 1, CAST(N'2017-08-06T22:02:54.490' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9303, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":26}', N'', 1, CAST(N'2017-08-06T22:02:54.530' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9304, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":28}', N'', 1, CAST(N'2017-08-06T22:02:54.677' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9305, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":30}', N'', 1, CAST(N'2017-08-06T22:02:54.773' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9306, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":32}', N'', 1, CAST(N'2017-08-06T22:02:54.803' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9307, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":38}', N'', 1, CAST(N'2017-08-06T22:02:54.837' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9308, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":43}', N'', 1, CAST(N'2017-08-06T22:02:54.877' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9309, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":48}', N'', 1, CAST(N'2017-08-06T22:02:54.907' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9310, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":53}', N'', 1, CAST(N'2017-08-06T22:02:54.973' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9311, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":61}', N'', 1, CAST(N'2017-08-06T22:02:55.313' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9312, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":137}', N'', 1, CAST(N'2017-08-06T22:02:55.743' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9313, 1, 1001, 1002, N'{ "gx1x1":247, "gx1x2":0, "gx2x1":0, "gx2x2":209}', N'', 1, CAST(N'2017-08-06T22:02:56.283' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9314, 1, 1001, 1002, N'{ "gx1x1":207, "gx1x2":0, "gx2x1":0, "gx2x2":261}', N'', 1, CAST(N'2017-08-06T22:02:56.897' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9315, 1, 1001, 1002, N'{ "gx1x1":209, "gx1x2":0, "gx2x1":0, "gx2x2":263}', N'', 1, CAST(N'2017-08-06T22:02:57.350' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9316, 1, 1001, 1002, N'{ "gx1x1":175, "gx1x2":0, "gx2x1":0, "gx2x2":297}', N'', 1, CAST(N'2017-08-06T22:02:57.787' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9317, 1, 1001, 1002, N'{ "gx1x1":136, "gx1x2":0, "gx2x1":0, "gx2x2":304}', N'', 1, CAST(N'2017-08-06T22:02:57.850' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9318, 1, 1001, 1002, N'{ "gx1x1":129, "gx1x2":0, "gx2x1":0, "gx2x2":305}', N'', 1, CAST(N'2017-08-06T22:02:57.887' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9319, 1, 1001, 1002, N'{ "gx1x1":126, "gx1x2":0, "gx2x1":0, "gx2x2":304}', N'', 1, CAST(N'2017-08-06T22:02:57.923' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9320, 1, 1001, 1002, N'{ "gx1x1":120, "gx1x2":0, "gx2x1":0, "gx2x2":304}', N'', 1, CAST(N'2017-08-06T22:02:57.957' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9321, 1, 1001, 1002, N'{ "gx1x1":112, "gx1x2":0, "gx2x1":0, "gx2x2":306}', N'', 1, CAST(N'2017-08-06T22:02:58.010' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9322, 1, 1001, 1002, N'{ "gx1x1":107, "gx1x2":0, "gx2x1":0, "gx2x2":307}', N'', 1, CAST(N'2017-08-06T22:02:58.427' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9323, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":21, "gx2x2":323}', N'', 1, CAST(N'2017-08-06T22:02:58.933' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9324, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":54, "gx2x2":316}', N'', 1, CAST(N'2017-08-06T22:02:58.997' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9325, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":58, "gx2x2":314}', N'', 1, CAST(N'2017-08-06T22:02:59.060' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9326, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":66, "gx2x2":314}', N'', 1, CAST(N'2017-08-06T22:02:59.090' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9327, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":76, "gx2x2":312}', N'', 1, CAST(N'2017-08-06T22:02:59.127' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9328, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":80, "gx2x2":312}', N'', 1, CAST(N'2017-08-06T22:02:59.163' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9329, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":83, "gx2x2":309}', N'', 1, CAST(N'2017-08-06T22:02:59.337' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9330, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":122, "gx2x2":298}', N'', 1, CAST(N'2017-08-06T22:02:59.620' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9331, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":215, "gx2x2":247}', N'', 1, CAST(N'2017-08-06T22:03:00.293' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9332, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":320, "gx2x2":84}', N'', 1, CAST(N'2017-08-06T22:03:00.673' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9333, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":108, "gx2x1":306, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:01.117' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9334, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":255, "gx2x1":221, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:01.597' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9335, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":255, "gx2x1":123, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:01.980' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9336, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":255, "gx2x1":70, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:02.393' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9337, 1, 1001, 1002, N'{ "gx1x1":49, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:03.003' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9338, 1, 1001, 1002, N'{ "gx1x1":191, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:03.407' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9339, 1, 1001, 1002, N'{ "gx1x1":252, "gx1x2":220, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:03.833' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9340, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:04.327' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9341, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":122, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:04.707' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9342, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":13, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:05.143' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9343, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":84}', N'', 1, CAST(N'2017-08-06T22:03:05.767' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9344, 1, 1001, 1002, N'{ "gx1x1":251, "gx1x2":0, "gx2x1":0, "gx2x2":153}', N'', 1, CAST(N'2017-08-06T22:03:06.153' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9345, 1, 1001, 1002, N'{ "gx1x1":250, "gx1x2":0, "gx2x1":0, "gx2x2":152}', N'', 1, CAST(N'2017-08-06T22:03:06.790' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9346, 1, 1001, 1002, N'{ "gx1x1":252, "gx1x2":0, "gx2x1":0, "gx2x2":150}', N'', 1, CAST(N'2017-08-06T22:03:23.207' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9347, 1, 1001, 1002, N'{ "gx1x1":253, "gx1x2":0, "gx2x1":0, "gx2x2":145}', N'', 1, CAST(N'2017-08-06T22:03:23.457' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9348, 1, 1001, 1002, N'{ "gx1x1":250, "gx1x2":0, "gx2x1":0, "gx2x2":138}', N'', 1, CAST(N'2017-08-06T22:03:23.520' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9349, 1, 1001, 1002, N'{ "gx1x1":200, "gx1x2":0, "gx2x1":0, "gx2x2":32}', N'', 1, CAST(N'2017-08-06T22:03:23.817' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9350, 1, 1001, 1002, N'{ "gx1x1":67, "gx1x2":141, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:24.313' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9351, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":190, "gx2x2":132}', N'', 1, CAST(N'2017-08-06T22:03:24.723' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9352, 1, 1001, 1002, N'{ "gx1x1":144, "gx1x2":118, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:25.243' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9353, 1, 1001, 1002, N'{ "gx1x1":166, "gx1x2":140, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:25.660' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9354, 1, 1001, 1002, N'{ "gx1x1":172, "gx1x2":144, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:54.363' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9355, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:54.410' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9356, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:55.033' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9357, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:03:55.437' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9525, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:01.870' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9526, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:01.940' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9527, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":239, "gx2x1":105, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:02.023' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9528, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":255, "gx2x1":34, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:02.123' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9529, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":255, "gx2x1":24, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:02.190' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9530, 1, 1001, 1002, N'{ "gx1x1":94, "gx1x2":255, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:02.227' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9531, 1, 1001, 1002, N'{ "gx1x1":151, "gx1x2":177, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:02.280' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9532, 1, 1001, 1002, N'{ "gx1x1":159, "gx1x2":175, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:02.320' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9533, 1, 1001, 1002, N'{ "gx1x1":174, "gx1x2":190, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:02.520' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9534, 1, 1001, 1002, N'{ "gx1x1":88, "gx1x2":94, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:03.020' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9535, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":91, "gx2x2":17}', N'', 1, CAST(N'2017-08-06T22:09:03.337' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9536, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":176, "gx2x2":64}', N'', 1, CAST(N'2017-08-06T22:09:03.747' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9537, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":246, "gx2x2":118}', N'', 1, CAST(N'2017-08-06T22:09:04.103' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9538, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":252, "gx2x2":146}', N'', 1, CAST(N'2017-08-06T22:09:04.523' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9539, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":59, "gx2x1":227, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:04.553' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9540, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":107, "gx2x1":241, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:04.587' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9541, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":135, "gx2x1":241, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:04.623' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9542, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":161, "gx2x1":235, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:04.657' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9543, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":175, "gx2x1":229, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:04.707' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9544, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":213, "gx2x1":223, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:04.760' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9545, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":231, "gx2x1":227, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:05.207' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9546, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":239, "gx2x1":235, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:05.583' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9547, 1, 1001, 1002, N'{ "gx1x1":2, "gx1x2":14, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:06.010' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9548, 1, 1001, 1002, N'{ "gx1x1":145, "gx1x2":0, "gx2x1":0, "gx2x2":125}', N'', 1, CAST(N'2017-08-06T22:09:06.397' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9549, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":216}', N'', 1, CAST(N'2017-08-06T22:09:07.003' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9550, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":218}', N'', 1, CAST(N'2017-08-06T22:09:07.253' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9551, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":0, "gx2x1":0, "gx2x2":216}', N'', 1, CAST(N'2017-08-06T22:09:07.630' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9552, 1, 1001, 1002, N'{ "gx1x1":252, "gx1x2":0, "gx2x1":0, "gx2x2":214}', N'', 1, CAST(N'2017-08-06T22:09:07.683' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9553, 1, 1001, 1002, N'{ "gx1x1":245, "gx1x2":0, "gx2x1":0, "gx2x2":207}', N'', 1, CAST(N'2017-08-06T22:09:07.730' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9554, 1, 1001, 1002, N'{ "gx1x1":202, "gx1x2":0, "gx2x1":0, "gx2x2":164}', N'', 1, CAST(N'2017-08-06T22:09:07.773' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9555, 1, 1001, 1002, N'{ "gx1x1":144, "gx1x2":0, "gx2x1":0, "gx2x2":102}', N'', 1, CAST(N'2017-08-06T22:09:07.973' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9556, 1, 1001, 1002, N'{ "gx1x1":145, "gx1x2":101, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:08.417' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9557, 1, 1001, 1002, N'{ "gx1x1":202, "gx1x2":206, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:09.020' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9558, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":3, "gx2x2":9}', N'', 1, CAST(N'2017-08-06T22:09:09.103' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9559, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":38, "gx2x2":44}', N'', 1, CAST(N'2017-08-06T22:09:09.160' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9560, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":53, "gx2x2":59}', N'', 1, CAST(N'2017-08-06T22:09:09.190' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9561, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":69, "gx2x2":75}', N'', 1, CAST(N'2017-08-06T22:09:09.223' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9562, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":86, "gx2x2":92}', N'', 1, CAST(N'2017-08-06T22:09:09.270' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9563, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":137, "gx2x2":141}', N'', 1, CAST(N'2017-08-06T22:09:09.473' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9564, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":223, "gx2x2":191}', N'', 1, CAST(N'2017-08-06T22:09:09.923' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9565, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":230, "gx2x2":194}', N'', 1, CAST(N'2017-08-06T22:09:10.457' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9566, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":228, "gx2x2":192}', N'', 1, CAST(N'2017-08-06T22:09:11.037' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9567, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":220, "gx2x2":182}', N'', 1, CAST(N'2017-08-06T22:09:11.140' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9568, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":167, "gx2x2":129}', N'', 1, CAST(N'2017-08-06T22:09:11.193' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9569, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":123, "gx2x2":81}', N'', 1, CAST(N'2017-08-06T22:09:11.260' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9570, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":90, "gx2x2":48}', N'', 1, CAST(N'2017-08-06T22:09:11.393' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9571, 1, 1001, 1002, N'{ "gx1x1":123, "gx1x2":145, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:11.883' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9572, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":219, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:11.943' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9573, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":229, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:12.003' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9574, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":229, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:12.057' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9575, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:12.110' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9576, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":229, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:12.243' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9577, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":226, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:12.287' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9578, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":221, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:12.327' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9579, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":220, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:12.547' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9580, 1, 1001, 1002, N'{ "gx1x1":223, "gx1x2":191, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:12.617' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9581, 1, 1001, 1002, N'{ "gx1x1":164, "gx1x2":152, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:12.647' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9582, 1, 1001, 1002, N'{ "gx1x1":151, "gx1x2":139, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:12.677' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9583, 1, 1001, 1002, N'{ "gx1x1":126, "gx1x2":120, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:12.707' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9584, 1, 1001, 1002, N'{ "gx1x1":102, "gx1x2":102, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:12.773' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9585, 1, 1001, 1002, N'{ "gx1x1":48, "gx1x2":64, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:12.917' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9586, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":4, "gx2x1":32, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:13.190' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9587, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":73, "gx2x2":29}', N'', 1, CAST(N'2017-08-06T22:09:13.493' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9588, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":213, "gx2x2":131}', N'', 1, CAST(N'2017-08-06T22:09:14.000' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9589, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":275, "gx2x2":177}', N'', 1, CAST(N'2017-08-06T22:09:14.250' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9590, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":215, "gx2x2":117}', N'', 1, CAST(N'2017-08-06T22:09:14.667' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9591, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":87, "gx2x1":11, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:15.187' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9592, 1, 1001, 1002, N'{ "gx1x1":129, "gx1x2":231, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:15.740' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9593, 1, 1001, 1002, N'{ "gx1x1":113, "gx1x2":215, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:15.783' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9594, 1, 1001, 1002, N'{ "gx1x1":99, "gx1x2":195, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:15.823' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9595, 1, 1001, 1002, N'{ "gx1x1":94, "gx1x2":186, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:15.853' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9596, 1, 1001, 1002, N'{ "gx1x1":89, "gx1x2":179, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:15.887' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9597, 1, 1001, 1002, N'{ "gx1x1":83, "gx1x2":173, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:15.963' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9598, 1, 1001, 1002, N'{ "gx1x1":70, "gx1x2":156, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:16.293' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9599, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":64, "gx2x1":22, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:16.770' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9600, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":43, "gx2x1":43, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:16.807' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9601, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":38, "gx2x1":48, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:16.847' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9602, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":33, "gx2x1":53, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:16.893' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9603, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":30, "gx2x1":56, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:16.980' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9604, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":17, "gx2x1":75, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:17.263' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9605, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":167, "gx2x2":37}', N'', 1, CAST(N'2017-08-06T22:09:17.820' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9606, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":1, "gx2x1":113, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:18.310' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9607, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":98, "gx2x1":24, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:18.623' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9608, 1, 1001, 1002, N'{ "gx1x1":75, "gx1x2":209, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:18.920' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9609, 1, 1001, 1002, N'{ "gx1x1":134, "gx1x2":248, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:19.657' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9610, 1, 1001, 1002, N'{ "gx1x1":21, "gx1x2":91, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:19.707' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9611, 1, 1001, 1002, N'{ "gx1x1":10, "gx1x2":76, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:19.750' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9612, 1, 1001, 1002, N'{ "gx1x1":5, "gx1x2":71, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:19.780' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9613, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":62, "gx2x1":4, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:19.813' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9614, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":51, "gx2x1":13, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:19.847' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9615, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":40, "gx2x1":24, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:19.877' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9616, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":30, "gx2x1":34, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:19.910' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9617, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":86, "gx2x2":12}', N'', 1, CAST(N'2017-08-06T22:09:20.353' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9618, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":128, "gx2x2":38}', N'', 1, CAST(N'2017-08-06T22:09:20.880' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9619, 1, 1001, 1002, N'{ "gx1x1":6, "gx1x2":86, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:21.363' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9620, 1, 1001, 1002, N'{ "gx1x1":51, "gx1x2":147, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:21.770' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9621, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":225, "gx2x1":123, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:22.130' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9622, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":223, "gx2x1":121, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:22.190' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9623, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":215, "gx2x1":113, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:22.253' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9624, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":161, "gx2x1":55, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:22.283' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9625, 1, 1001, 1002, N'{ "gx1x1":30, "gx1x2":78, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:22.667' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9626, 1, 1001, 1002, N'{ "gx1x1":111, "gx1x2":0, "gx2x1":0, "gx2x2":3}', N'', 1, CAST(N'2017-08-06T22:09:23.190' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9627, 1, 1001, 1002, N'{ "gx1x1":101, "gx1x2":91, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9628, 1, 1001, 1002, N'{ "gx1x1":168, "gx1x2":158, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9629, 1, 1001, 1002, N'{ "gx1x1":172, "gx1x2":160, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:23.680' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9630, 1, 1001, 1002, N'{ "gx1x1":182, "gx1x2":166, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:23.707' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9631, 1, 1001, 1002, N'{ "gx1x1":189, "gx1x2":169, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:23.757' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9632, 1, 1001, 1002, N'{ "gx1x1":200, "gx1x2":172, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:23.787' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9633, 1, 1001, 1002, N'{ "gx1x1":209, "gx1x2":173, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:23.820' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9634, 1, 1001, 1002, N'{ "gx1x1":212, "gx1x2":176, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:23.847' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9635, 1, 1001, 1002, N'{ "gx1x1":211, "gx1x2":175, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:23.923' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9636, 1, 1001, 1002, N'{ "gx1x1":204, "gx1x2":168, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:24.003' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9637, 1, 1001, 1002, N'{ "gx1x1":142, "gx1x2":104, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:24.033' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9638, 1, 1001, 1002, N'{ "gx1x1":124, "gx1x2":80, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:24.067' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9639, 1, 1001, 1002, N'{ "gx1x1":104, "gx1x2":56, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:24.097' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9640, 1, 1001, 1002, N'{ "gx1x1":86, "gx1x2":38, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:24.133' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9641, 1, 1001, 1002, N'{ "gx1x1":69, "gx1x2":21, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:24.323' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9642, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":80, "gx2x2":108}', N'', 1, CAST(N'2017-08-06T22:09:24.707' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9643, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":161, "gx2x2":155}', N'', 1, CAST(N'2017-08-06T22:09:25.173' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9644, 1, 1001, 1002, N'{ "gx1x1":126, "gx1x2":0, "gx2x1":0, "gx2x2":250}', N'', 1, CAST(N'2017-08-06T22:09:25.250' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9645, 1, 1001, 1002, N'{ "gx1x1":156, "gx1x2":0, "gx2x1":0, "gx2x2":242}', N'', 1, CAST(N'2017-08-06T22:09:25.293' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9646, 1, 1001, 1002, N'{ "gx1x1":164, "gx1x2":0, "gx2x1":0, "gx2x2":238}', N'', 1, CAST(N'2017-08-06T22:09:25.327' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9647, 1, 1001, 1002, N'{ "gx1x1":177, "gx1x2":0, "gx2x1":0, "gx2x2":231}', N'', 1, CAST(N'2017-08-06T22:09:25.380' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9648, 1, 1001, 1002, N'{ "gx1x1":189, "gx1x2":0, "gx2x1":0, "gx2x2":225}', N'', 1, CAST(N'2017-08-06T22:09:25.417' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9649, 1, 1001, 1002, N'{ "gx1x1":132, "gx1x2":0, "gx2x1":0, "gx2x2":164}', N'', 1, CAST(N'2017-08-06T22:09:25.847' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9650, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":95, "gx2x1":29, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:26.360' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9651, 1, 1001, 1002, N'{ "gx1x1":204, "gx1x2":134, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:26.393' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9652, 1, 1001, 1002, N'{ "gx1x1":212, "gx1x2":136, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:26.433' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9653, 1, 1001, 1002, N'{ "gx1x1":223, "gx1x2":141, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:26.460' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9654, 1, 1001, 1002, N'{ "gx1x1":237, "gx1x2":155, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:26.500' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9655, 1, 1001, 1002, N'{ "gx1x1":248, "gx1x2":166, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:26.530' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9656, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":177, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:26.563' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9657, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":190, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:26.593' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9658, 1, 1001, 1002, N'{ "gx1x1":252, "gx1x2":200, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:26.960' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9659, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":24, "gx2x2":94}', N'', 1, CAST(N'2017-08-06T22:09:27.427' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9660, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":132, "gx2x2":170}', N'', 1, CAST(N'2017-08-06T22:09:27.517' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9661, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":199, "gx2x2":107}', N'', 1, CAST(N'2017-08-06T22:09:27.573' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9662, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":233, "gx2x2":73}', N'', 1, CAST(N'2017-08-06T22:09:27.603' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9663, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":250, "gx2x2":56}', N'', 1, CAST(N'2017-08-06T22:09:27.633' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9664, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":251, "gx2x2":51}', N'', 1, CAST(N'2017-08-06T22:09:27.663' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9665, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":259, "gx2x2":43}', N'', 1, CAST(N'2017-08-06T22:09:27.997' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9666, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":204, "gx2x2":60}', N'', 1, CAST(N'2017-08-06T22:09:28.327' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9667, 1, 1001, 1002, N'{ "gx1x1":88, "gx1x2":0, "gx2x1":0, "gx2x2":40}', N'', 1, CAST(N'2017-08-06T22:09:28.913' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9668, 1, 1001, 1002, N'{ "gx1x1":115, "gx1x2":163, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:28.980' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9669, 1, 1001, 1002, N'{ "gx1x1":75, "gx1x2":141, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:29.053' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9670, 1, 1001, 1002, N'{ "gx1x1":26, "gx1x2":92, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:29.097' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9671, 1, 1001, 1002, N'{ "gx1x1":8, "gx1x2":56, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:29.130' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9672, 1, 1001, 1002, N'{ "gx1x1":3, "gx1x2":41, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:29.160' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9673, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":18, "gx2x2":8}', N'', 1, CAST(N'2017-08-06T22:09:29.367' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9674, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":146, "gx2x2":166}', N'', 1, CAST(N'2017-08-06T22:09:30.027' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9675, 1, 1001, 1002, N'{ "gx1x1":46, "gx1x2":46, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:30.060' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9676, 1, 1001, 1002, N'{ "gx1x1":61, "gx1x2":67, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:30.113' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9677, 1, 1001, 1002, N'{ "gx1x1":84, "gx1x2":94, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:30.143' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9678, 1, 1001, 1002, N'{ "gx1x1":94, "gx1x2":104, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:30.190' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9679, 1, 1001, 1002, N'{ "gx1x1":107, "gx1x2":117, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:30.250' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9680, 1, 1001, 1002, N'{ "gx1x1":124, "gx1x2":134, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:30.303' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9681, 1, 1001, 1002, N'{ "gx1x1":255, "gx1x2":182, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:30.830' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9682, 1, 1001, 1002, N'{ "gx1x1":133, "gx1x2":51, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:31.333' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9683, 1, 1001, 1002, N'{ "gx1x1":7, "gx1x2":0, "gx2x1":0, "gx2x2":83}', N'', 1, CAST(N'2017-08-06T22:09:31.723' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9684, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":75, "gx2x2":149}', N'', 1, CAST(N'2017-08-06T22:09:32.157' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9685, 1, 1001, 1002, N'{ "gx1x1":24, "gx1x2":0, "gx2x1":0, "gx2x2":40}', N'', 1, CAST(N'2017-08-06T22:09:32.533' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9686, 1, 1001, 1002, N'{ "gx1x1":169, "gx1x2":131, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:32.940' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9687, 1, 1001, 1002, N'{ "gx1x1":249, "gx1x2":197, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:33.490' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9688, 1, 1001, 1002, N'{ "gx1x1":132, "gx1x2":36, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:33.840' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9689, 1, 1001, 1002, N'{ "gx1x1":19, "gx1x2":0, "gx2x1":0, "gx2x2":77}', N'', 1, CAST(N'2017-08-06T22:09:34.243' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9690, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":69, "gx2x2":123}', N'', 1, CAST(N'2017-08-06T22:09:34.597' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9691, 1, 1001, 1002, N'{ "gx1x1":140, "gx1x2":112, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:34.960' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9692, 1, 1001, 1002, N'{ "gx1x1":234, "gx1x2":202, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:35.390' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9693, 1, 1001, 1002, N'{ "gx1x1":174, "gx1x2":120, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:35.440' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9694, 1, 1001, 1002, N'{ "gx1x1":162, "gx1x2":102, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:35.527' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9695, 1, 1001, 1002, N'{ "gx1x1":129, "gx1x2":49, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:35.560' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9696, 1, 1001, 1002, N'{ "gx1x1":117, "gx1x2":37, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:35.593' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9697, 1, 1001, 1002, N'{ "gx1x1":105, "gx1x2":25, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:35.623' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9698, 1, 1001, 1002, N'{ "gx1x1":96, "gx1x2":16, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:35.800' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9699, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":11, "gx2x2":71}', N'', 1, CAST(N'2017-08-06T22:09:36.310' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9700, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":146, "gx2x2":156}', N'', 1, CAST(N'2017-08-06T22:09:36.377' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9701, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":161, "gx2x2":161}', N'', 1, CAST(N'2017-08-06T22:09:36.417' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9702, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":164, "gx2x2":164}', N'', 1, CAST(N'2017-08-06T22:09:36.457' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9703, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":163, "gx2x2":163}', N'', 1, CAST(N'2017-08-06T22:09:36.543' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9704, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":149, "gx2x2":153}', N'', 1, CAST(N'2017-08-06T22:09:36.770' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9705, 1, 1001, 1002, N'{ "gx1x1":13, "gx1x2":0, "gx2x1":0, "gx2x2":9}', N'', 1, CAST(N'2017-08-06T22:09:37.067' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9706, 1, 1001, 1002, N'{ "gx1x1":148, "gx1x2":142, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:37.400' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9707, 1, 1001, 1002, N'{ "gx1x1":134, "gx1x2":130, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:37.457' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9708, 1, 1001, 1002, N'{ "gx1x1":98, "gx1x2":94, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:37.507' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9709, 1, 1001, 1002, N'{ "gx1x1":82, "gx1x2":78, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:37.543' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9710, 1, 1001, 1002, N'{ "gx1x1":79, "gx1x2":75, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:37.577' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9711, 1, 1001, 1002, N'{ "gx1x1":69, "gx1x2":65, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:37.923' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9712, 1, 1001, 1002, N'{ "gx1x1":66, "gx1x2":62, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:38.253' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9713, 1, 1001, 1002, N'{ "gx1x1":69, "gx1x2":65, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:42.863' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9714, 1, 1001, 1002, N'{ "gx1x1":137, "gx1x2":51, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:42.937' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9715, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:42.973' AS DateTime), NULL)
GO
INSERT [dbo].[MessageLog] ([MessageId], [CategoryId], [CommanderId], [RobotId], [Command], [Response], [IsLog], [XTimeCommand], [XTimeResponse]) VALUES (9716, 1, 1001, 1002, N'{ "gx1x1":0, "gx1x2":0, "gx2x1":0, "gx2x2":0}', N'', 1, CAST(N'2017-08-06T22:09:43.133' AS DateTime), NULL)
GO

INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (10, CAST(N'2017-09-10T12:56:33.943' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (11, CAST(N'2017-09-10T12:59:02.453' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (12, CAST(N'2017-09-10T13:45:46.397' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (13, CAST(N'2017-09-10T13:51:56.030' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (14, CAST(N'2017-09-10T13:56:27.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (15, CAST(N'2017-09-10T14:01:59.390' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (16, CAST(N'2017-09-10T14:23:09.263' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (17, CAST(N'2017-09-10T14:25:02.367' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (18, CAST(N'2017-09-10T14:26:10.620' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (19, CAST(N'2017-09-10T14:37:13.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (20, CAST(N'2017-09-10T14:37:54.480' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (21, CAST(N'2017-09-10T14:43:04.763' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (22, CAST(N'2017-09-10T14:47:40.937' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (23, CAST(N'2017-09-10T15:53:29.123' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (24, CAST(N'2017-09-10T15:54:00.627' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (25, CAST(N'2017-09-10T15:56:36.157' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (26, CAST(N'2017-09-10T16:09:45.097' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (27, CAST(N'2017-09-10T16:16:35.177' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (28, CAST(N'2017-09-10T16:22:14.360' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (29, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (30, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (31, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (32, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (33, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (34, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (35, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (36, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (37, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (38, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (39, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (40, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (41, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (42, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (43, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (44, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (45, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (46, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (47, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (48, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[DemoCommander] ([DemoId], [SessionDateTime], [SessionId]) VALUES (49, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'')

ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO

ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Category]
GO

ALTER TABLE [dbo].[MessageLog]  WITH CHECK ADD  CONSTRAINT [FK_MessageLog_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO

ALTER TABLE [dbo].[MessageLog] CHECK CONSTRAINT [FK_MessageLog_Category]
GO

ALTER TABLE [dbo].[DemoCommander] ADD  DEFAULT ('2000-01-01') FOR [SessionDateTime]
GO
ALTER TABLE [dbo].[DemoCommander] ADD  DEFAULT ('') FOR [SessionId]
GO


