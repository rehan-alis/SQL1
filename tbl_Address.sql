IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Address]') AND type in (N'U'))
DROP TABLE [dbo].[Address]
GO

CREATE TABLE [dbo].[Address](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[NumStreetPOBox] [varchar](255) NULL,
	[CountryCode] [varchar](2) NULL,
	[CountrySubEntityCode] [varchar](9) NULL,
	[CityID] [smallint] NULL,
	[PostalCode] [varchar](9) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [COMDAT001]
) ON [COMDAT001]
GO