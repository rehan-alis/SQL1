SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_City_Address] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_City_Address]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Country_Address] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Country_Address]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_CountrySubEntity_Address] FOREIGN KEY([CountrySubEntityCode])
REFERENCES [dbo].[CountrySubEntity] ([SubEntityCode])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_CountrySubEntity_Address]
GO
