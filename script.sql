USE [accountDb]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_accountTb](
	[accountId] [bigint] IDENTITY(1,1) NOT NULL,
	[accountName] [char](20) NOT NULL,
	[accountPassword] [char](30) NOT NULL,
 CONSTRAINT [PK_t_accountTb] PRIMARY KEY CLUSTERED 
(
	[accountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
CREATE TABLE [dbo].[t_serverList](
	[operatorName] [char](10) NOT NULL,
	[serverId] [int] NOT NULL,
	[serverName] [nchar](10) NOT NULL,
	[serverNo] [int] NOT NULL,
	[serverStart] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[t_accountTb] ON 

INSERT [dbo].[t_accountTb] ([accountId], [accountName], [accountPassword]) VALUES (1, N'zyh                 ', N'123456                        ')
SET IDENTITY_INSERT [dbo].[t_accountTb] OFF
INSERT [dbo].[t_agentList] ([operatorName], [agentId], [agentIp], [agentPort], [playerMax], [playerCount]) VALUES (N'figus     ', 1, N'127.0.0.1', 9000, 6000, 0)
INSERT [dbo].[t_lastUpdate] ([operatorName], [updateName], [updateNo], [packetName], [downloadUrl]) VALUES (N'figus     ', N'versionNo ', 1, NULL, NULL)
INSERT [dbo].[t_operatorName] ([operatorKey], [versionNo], [operatorName]) VALUES (N'iosfigus  ', 1, N'figus     ')
INSERT [dbo].[t_playerList] ([operatorName], [accountId], [serverId], [playerId], [playerType], [playerName], [playerRace], [playerLevel]) VALUES (N'figus     ', 1, 1, 1, 1, N'谟', 1, 1)
INSERT [dbo].[t_playerStart] ([operatorName], [accountId], [serverId], [playerId]) VALUES (N'figus     ', 1, 1, 1)
INSERT [dbo].[t_serverList] ([operatorName], [serverId], [serverName], [serverNo], [serverStart]) VALUES (N'figus     ', 1, N'热血江湖      ', 1, CAST(0x0000A63600000000 AS DateTime))
