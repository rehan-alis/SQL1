IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddressType]') AND type in (N'U'))
DROP TABLE [dbo].[AddressType]
GO

CREATE TABLE [dbo].[AddressType](
	[AddressTypeCode] [varchar](3) NOT NULL,
	[AddressTypeName] [varchar](35) NULL,
 CONSTRAINT [PK_AddressType] PRIMARY KEY CLUSTERED 
(
	[AddressTypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [COMDAT001]
) ON [COMDAT001]
GO
