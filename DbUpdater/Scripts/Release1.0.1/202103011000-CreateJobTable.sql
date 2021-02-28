CREATE TABLE [dbo].[Job](
	[Id] [varchar](14) NOT NULL,
	[CreatedById] [varchar](12) NULL,
	[CreatedByName] [varchar](64) NULL,
	[CreateDate] [datetime] NULL,
	[ModifiedById] [varchar](12) NULL,
	[ModifiedByName] [varchar](64) NULL
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)
GO
