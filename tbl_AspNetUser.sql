IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUser]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUser]
GO

CREATE TABLE [dbo].[AspNetUser](
	[ID] [bigint] NOT NULL,
	[UserName] [varchar](17) NULL,
	[PersonName] [varchar](70) NULL,
	[AccessFailedCount] [smallint] NULL,
	[ConcurrencyStamp] [varchar](255) NULL,
	[Email] [varchar](35) NULL,
	[EmailConfirmed] [bit] NULL,
	[NormalizedUserName] [varchar](70) NULL,
	[NormalizedEmail] [varchar](35) NULL,
	[PhoneNumber] [varchar](15) NULL,
	[LockoutEnabled] [bit] NULL,
	[LockoutEnd] [datetime2](0) NULL,
	[PasswordHash] [varchar](255) NULL,
	[PhoneNumberConfirmed] [bit] NULL,
	[SecurityStamp] [varchar](255) NULL,
	[TwoFactorEnabled] [bit] NULL,
	[NumStreetPOBox] [varchar](255) NULL,
	[CountryCode] [varchar](2) NULL,
	[CountrySubEntityCode] [varchar](9) NULL,
	[CityID] [smallint] NULL,
	[PostalCode] [varchar](9) NULL,
	[CNIC] [varchar](13) NULL,
	[VerificationTypeCode] [varchar](1) NULL,
	[VerificationDate] [datetime2](0) NULL,
	[VerificationSlipID] [smallint] NULL,
	[VerificationReference] [varchar](30) NULL,
	[ActivationURL] [varchar](255) NULL,
	[LinkExpiryDate] [datetime2](0) NULL,
	[LinkedCreateDate] [datetime2](0) NULL,
	[BillID] [bigint] NULL,
	[BillAmount] [decimal](16, 3) NULL,
	[StatusCode] [varchar](3) NULL,
	[EffectiveFrmDt] [datetime2](0) NOT NULL,
	[EffectiveThruDt] [datetime2](0) NOT NULL,
	[CreatedOn] [datetime2](0) NOT NULL,
	[UpdatedOn] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_AspNetUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [COMDAT001]
) ON [COMDAT001]
GO
ALTER TABLE [dbo].[AspNetUser] ADD  CONSTRAINT [DF_AspNetUser_ID]  DEFAULT (format(getdate(),'yyMM000000000000000')+NEXT VALUE FOR [Seq_AspNetUser]) FOR [ID]
GO
ALTER TABLE [dbo].[AspNetUser] ADD  DEFAULT ((0)) FOR [AccessFailedCount]
GO
ALTER TABLE [dbo].[AspNetUser] ADD  DEFAULT ((0)) FOR [EmailConfirmed]
GO
ALTER TABLE [dbo].[AspNetUser] ADD  DEFAULT ((0)) FOR [LockoutEnabled]
GO
ALTER TABLE [dbo].[AspNetUser] ADD  DEFAULT ((0)) FOR [PhoneNumberConfirmed]
GO
ALTER TABLE [dbo].[AspNetUser] ADD  DEFAULT ((0)) FOR [TwoFactorEnabled]
GO
ALTER TABLE [dbo].[AspNetUser] ADD  DEFAULT ((0)) FOR [VerificationSlipID]
GO
ALTER TABLE [dbo].[AspNetUser] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[AspNetUser] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO