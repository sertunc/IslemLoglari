USE [BilgiSistemi]
GO

/****** Object:  Table [dbo].[IslemLoglari]    Script Date: 8.8.2015 12:53:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[IslemLoglari](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TCKN] [bigint] NOT NULL,
	[Sayfa] [varchar](100) NULL,
	[IslemTipi] [varchar](50) NULL,
	[Detay] [varchar](2000) NULL,
	[KayitTarih] [datetime] NOT NULL,
 CONSTRAINT [PK_IslemLoglari] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[IslemLoglari] ADD  CONSTRAINT [DF_IslemLoglari_KayitTarihi]  DEFAULT (getdate()) FOR [KayitTarih]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IslemLoglari', @level2type=N'COLUMN',@level2name=N'IslemTipi'
GO
