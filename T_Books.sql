

CREATE TABLE [dbo].[T_Books](
	[PKID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[Author] [varchar](100) NULL,
	[Language_origin] [varchar](80) NULL,
	[Cost] [int] NULL,
	[Sales] [int] NULL,
	[Classyfy] [varchar](50) NULL,
	[LDTS] [datetime2](7) NULL,
 CONSTRAINT [PK_T_Books] PRIMARY KEY CLUSTERED 
(
	[PKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[T_Books] ON 
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (1, N'Der Herr der Ringe', N'J. R. R. Tolkien', N'German', 15, 100, N'Fantasy', CAST(N'2024-01-09T00:29:42.3666667' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (2, N'Die Säulen der Erde', N'Ken Follett', N'German', 7, 50, N'Novel', CAST(N'2024-01-09T00:29:42.3700000' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (3, N'Harry Potter and the Philosopher''s Stone', N'J. K. Rowling', N'English', 14, 120, N'Fantasy', CAST(N'2024-01-09T00:29:42.3733333' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (4, N'The Plague', N'Albert Camus', N'French', 3, 12, N'Classics', CAST(N'2024-01-09T00:29:42.3733333' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (5, N'Das Parfum', N'Patrick Süskind', N'Italian', 6, 12, N'Poetry', CAST(N'2024-01-09T00:29:42.3766667' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (6, N'War and Peace', N'Leo Tolstoy', N'Russian', 6, 36, N'Classics', CAST(N'2024-01-09T00:29:42.3766667' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (7, N'Nineteen Eighty-Four', N'George Orwell', N'English', 5, 30, N'Classics', CAST(N'2024-01-09T00:29:42.3800000' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (8, N'Andromeda Nebula', N'Ivan Yefremov', N'Russian', 19, 20, N'Science fiction', CAST(N'2024-01-09T00:29:42.3800000' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (9, N'Der kleine Prinz', N'Antoine de Saint-Exupéry', N'German', 10, 200, N'Kids', CAST(N'2024-01-09T00:29:42.3800000' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (10, N'The Stranger', N'Albert Camus', N'French', 2, 10, N'Classics', CAST(N'2024-01-09T00:29:42.3833333' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (11, N'The Adventures of Pinocchio', N'Carlo Collodi', N'Italian', 5, 35, N'Kids', CAST(N'2024-01-09T00:29:42.3833333' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (12, N'The Name of the Rose', N'Umberto Eco', N'Italian', 2, 50, N'Classics', CAST(N'2024-01-09T00:29:42.3866667' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (13, N'Stolz und Vorurteil', N'Jane Austen', N'German', 10, 50, N'Classics', CAST(N'2024-01-09T00:29:42.3866667' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (14, N'Don Quixote', N'Miguel de Cervantes', N'Spanish', 50, 500, N'Classics', CAST(N'2024-01-09T00:29:42.3900000' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (15, N'Die Entdeckung der Langsamkeit', N'Sten Nadolny', N'German', 25, 50, N'Novel', CAST(N'2024-01-09T00:29:42.3900000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[T_Books] OFF
GO
ALTER TABLE [dbo].[T_Books] ADD  CONSTRAINT [DF_T_Books_LDTS]  DEFAULT (getdate()) FOR [LDTS]
GO
