CREATE TABLE [dbo].[Buyer](
	[Id] [varchar](14) NOT NULL,
	[CreatedById] [varchar](12) NULL,
	[CreatedByName] [varchar](64) NULL,
	[CreateDate] [datetime] NULL,
	[ModifiedById] [varchar](12) NULL,
	[ModifiedByName] [varchar](64) NULL,
	[ModifiedDate] [datetime] NULL,
	[EcmId] [bigint] NOT NULL,
	[Name] [varchar](64) NULL,
	[Acn] [varchar](64) NULL,
	[Contract] [varchar](max) NULL,
	[AdvancedRate] [numeric](17, 5) NULL,
	[AdvancedRateType] [varchar](64) NULL,
	[BuyerHint] [varchar](max) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Buyer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
