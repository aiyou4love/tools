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
CREATE TABLE [dbo].[t_agentName](
	[agentKey] [char](10) NOT NULL,
	[agentName] [char](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_assetList](
	[agentName] [char](10) NOT NULL,
	[versionNo] [int] NOT NULL,
	[assetId] [int] NOT NULL,
	[assetIp] [varchar](50) NOT NULL,
	[assetPort] [int] NOT NULL,
	[playerCount] [int] NOT NULL
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
	[playerRace] [smallint] NOT NULL,
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
	[serverName] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[t_accountTb] ON 

INSERT [dbo].[t_accountTb] ([accountId], [accountName], [accountPassword]) VALUES (1, N'zyh                 ', N'123456                        ')
SET IDENTITY_INSERT [dbo].[t_accountTb] OFF
INSERT [dbo].[t_agentName] ([agentKey], [agentName]) VALUES (N'iosfigus  ', N'figus     ')
INSERT [dbo].[t_assetList] ([agentName], [versionNo], [assetId], [assetIp], [assetPort], [playerCount]) VALUES (N'figus     ', 1, 1, N'127.0.0.1', 9000, 8000)
INSERT [dbo].[t_lastUpdate] ([agentName], [versionNo], [updateName], [updateNo], [packetName], [downloadUrl]) VALUES (N'figus     ', 1, N'versionNo ', 1, NULL, NULL)
INSERT [dbo].[t_playerList] ([agentName], [versionNo], [accountId], [serverId], [playerId], [playerName], [playerRace], [playerLevel]) VALUES (N'figus     ', 1, 1, 1, 1, N'谟', 1, 1)
INSERT [dbo].[t_playerStart] ([agentName], [versionNo], [accountId], [serverId], [playerId]) VALUES (N'figus     ', 1, 1, 1, 1)
INSERT [dbo].[t_serverList] ([agentName], [versionNo], [serverId], [serverName]) VALUES (N'figus     ', 1, 1, N'热血江湖      ')
