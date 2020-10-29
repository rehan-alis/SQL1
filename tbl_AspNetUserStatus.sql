IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserStatus]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserStatus]
GO

CREATE TABLE [dbo].[AspNetUserStatus](
	[StatusCode] [varchar](3) NOT NULL,
	[StatusDesc] [varchar](30) NULL,
 CONSTRAINT [PK_AspNetUserStatus] PRIMARY KEY CLUSTERED 
(
	[StatusCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [COMDAT001]
) ON [COMDAT001]
GO
