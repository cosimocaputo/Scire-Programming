
CREATE TABLE [dbo].[T_Person](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Prename] [varchar](200) NULL,
	[Lastname] [varchar](200) NULL,
	[Adress] [varchar](max) NULL,
	[PLZ] [int] NULL,
	[City] [varchar](300) NULL,
	[LDTS] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_T_Person] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[T_Person] ON 
GO
INSERT [dbo].[T_Person] ( [Prename], [Lastname], [Adress], [PLZ], [City]) VALUES ( N'Arne', N'Enra', N'Arnestrasse', 67483, N'Enrahausen')
GO
INSERT [dbo].[T_Person] ( [Prename], [Lastname], [Adress], [PLZ], [City]) VALUES ( N'Mui', N'Ium', N'Muinstrasse', 749387, N'Iumhausen')
GO
INSERT [dbo].[T_Person] ( [Prename], [Lastname], [Adress], [PLZ], [City]) VALUES ( N'Daila', N'Aliad', N'Dailastrasse', 19872, N'Aliadstadt')
GO
INSERT [dbo].[T_Person] ( [Prename], [Lastname], [Adress], [PLZ], [City]) VALUES ( N'Laravel', N'Levaral', N'Laravelstrasse', 23415, N'Levaralhausen')
GO
INSERT [dbo].[T_Person] ( [Prename], [Lastname], [Adress], [PLZ], [City]) VALUES ( N'Cosimo', N'Omisoc', N'Cosimostrasse', 65777, N'Omisochausen')
GO
INSERT [dbo].[T_Person] ( [Prename], [Lastname], [Adress], [PLZ], [City]) VALUES ( N'Caputo', N'Otupoc', N'Caputotrasse', 55130, N'Otupochausen')
GO
SET IDENTITY_INSERT [dbo].[T_Person] OFF
GO
ALTER TABLE [dbo].[T_Person] ADD  CONSTRAINT [DF_T_Person_LDTS]  DEFAULT (getdate()) FOR [LDTS]
GO
