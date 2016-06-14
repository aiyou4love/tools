USE [accountDb]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_accountTb](
	[accountId] [bigint] NOT NULL,
	[accountName] [char](20) NOT NULL,
	[accountPassword] [char](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_agentName](
	[agentKey] [char](10) NOT NULL,
	[agentName] [char](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_lastUpdate](
	[agentName] [char](10) NOT NULL,
	[versionNo] [int] NOT NULL,
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
CREATE TABLE [dbo].[t_playerList](
	[agentName] [char](10) NOT NULL,
	[versionNo] [int] NOT NULL,
	[accountId] [bigint] NOT NULL,
	[serverId] [int] NOT NULL,
	[playerId] [int] NOT NULL,
	[playerName] [nvarchar](50) NOT NULL,
	[playerRace] [int] NOT NULL,
	[playerLevel] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_playerStart](
	[agentName] [char](10) NOT NULL,
	[versionNo] [int] NOT NULL,
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
	[agentName] [char](10) NOT NULL,
	[versionNo] [int] NOT NULL,
	[serverId] [int] NOT NULL,
	[serverName] [nchar](10) NOT NULL,
	[serverIp] [varchar](50) NOT NULL,
	[serverPort] [int] NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[t_agentName] ([agentKey], [agentName]) VALUES (N'iosFigus  ', N'figus     ')
INSERT [dbo].[t_lastUpdate] ([agentName], [versionNo], [updateName], [updateNo], [packetName], [downloadUrl]) VALUES (N'figus     ', 1, N'versionNo ', 1, NULL, NULL)
INSERT [dbo].[t_serverList] ([agentName], [versionNo], [serverId], [serverName], [serverIp], [serverPort]) VALUES (N'figus     ', 1, 1, N'热血江湖      ', N'127.0.0.1', 8888)
ALTER TABLE [dbo].[t_playerList] ADD  CONSTRAINT [DF_t_playerList_playerLevel]  DEFAULT ((1)) FOR [playerLevel]
GO
