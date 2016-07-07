USE [accountDb]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_accountTb](
	[accountId] [bigint] NOT NULL,
	[accountType] [smallint] NOT NULL,
	[accountName] [char](20) NOT NULL,
	[accountPassword] [char](20) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_agentList](
	[operatorName] [char](10) NOT NULL,
	[agentId] [int] NOT NULL,
	[agentIp] [varchar](50) NOT NULL,
	[agentPort] [int] NOT NULL,
	[playerMax] [int] NOT NULL,
	[playerCount] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_lastUpdate](
	[operatorName] [char](10) NOT NULL,
	[updateName] [char](10) NOT NULL,
	[updateNo] [int] NOT NULL,
	[packetName] [varchar](50) NULL,
	[downloadUrl] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_operatorName](
	[operatorKey] [char](10) NOT NULL,
	[versionNo] [int] NOT NULL,
	[operatorName] [char](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_playerList](
	[operatorName] [char](10) NOT NULL,
	[accountId] [bigint] NOT NULL,
	[serverId] [int] NOT NULL,
	[playerId] [int] NOT NULL,
	[playerType] [smallint] NOT NULL,
	[playerName] [nvarchar](50) NOT NULL,
	[playerRace] [smallint] NOT NULL,
	[playerStep] [smallint] NOT NULL,
	[playerLevel] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_playerStart](
	[operatorName] [char](10) NOT NULL,
	[accountId] [bigint] NOT NULL,
	[serverId] [int] NOT NULL,
	[playerId] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_serverInfo](
	[operatorName] [char](10) NOT NULL,
	[serverNo] [int] NOT NULL,
	[serverStart] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_serverList](
	[operatorName] [char](10) NOT NULL,
	[serverId] [int] NOT NULL,
	[serverName] [nchar](10) NOT NULL,
	[serverNo] [int] NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[t_accountTb] ([accountId], [accountType], [accountName], [accountPassword]) VALUES (1, 1, N'zyh                 ', N'123456              ')
INSERT [dbo].[t_agentList] ([operatorName], [agentId], [agentIp], [agentPort], [playerMax], [playerCount]) VALUES (N'figus     ', 1, N'127.0.0.1', 9000, 6000, 0)
INSERT [dbo].[t_lastUpdate] ([operatorName], [updateName], [updateNo], [packetName], [downloadUrl]) VALUES (N'figus     ', N'versionNo ', 1, NULL, NULL)
INSERT [dbo].[t_operatorName] ([operatorKey], [versionNo], [operatorName]) VALUES (N'iosfigus  ', 1, N'figus     ')
INSERT [dbo].[t_playerList] ([operatorName], [accountId], [serverId], [playerId], [playerType], [playerName], [playerRace], [playerStep], [playerLevel]) VALUES (N'figus     ', 1, 1, 1, 1, N'谟', 1, 1, 1)
INSERT [dbo].[t_playerStart] ([operatorName], [accountId], [serverId], [playerId]) VALUES (N'figus     ', 1, 1, 1)
INSERT [dbo].[t_serverInfo] ([operatorName], [serverNo], [serverStart]) VALUES (N'figus     ', 1, CAST(N'2016-07-01 00:00:00.000' AS DateTime))
INSERT [dbo].[t_serverList] ([operatorName], [serverId], [serverName], [serverNo]) VALUES (N'figus     ', 1, N'热血江湖      ', 1)
