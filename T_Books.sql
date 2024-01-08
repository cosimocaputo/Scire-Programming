

CREATE TABLE [dbo].[T_Books](
	[PKID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[Author] [varchar](100) NULL,
	[Language_origin] [varchar](80) NULL,
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
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Sales], [Classyfy], [LDTS]) VALUES (16, N'Der Herr der Ringe', N'J. R. R. Tolkien', N'German', 100, N'Fantasy', CAST(N'2024-01-08T23:19:19.6333333' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Sales], [Classyfy], [LDTS]) VALUES (17, N'Die Säulen der Erde', N'Ken Follett', N'German', 50, N'Novel', CAST(N'2024-01-08T23:19:19.6333333' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Sales], [Classyfy], [LDTS]) VALUES (18, N'Harry Potter and the Philosopher''s Stone', N'J. K. Rowling', N'English', 120, N'Fantasy', CAST(N'2024-01-08T23:19:19.6333333' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Sales], [Classyfy], [LDTS]) VALUES (19, N'The Plague', N'Albert Camus', N'French', 12, N'Classics', CAST(N'2024-01-08T23:19:19.6333333' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Sales], [Classyfy], [LDTS]) VALUES (20, N'Das Parfum', N'Patrick Süskind', N'Italian', 12, N'Poetry', CAST(N'2024-01-08T23:19:19.6333333' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Sales], [Classyfy], [LDTS]) VALUES (21, N'War and Peace', N'Leo Tolstoy', N'Russian', 36, N'Classics', CAST(N'2024-01-08T23:19:19.6333333' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Sales], [Classyfy], [LDTS]) VALUES (22, N'Nineteen Eighty-Four', N'George Orwell', N'English', 30, N'Classics', CAST(N'2024-01-08T23:19:19.6366667' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Sales], [Classyfy], [LDTS]) VALUES (23, N'Andromeda Nebula', N'Ivan Yefremov', N'Russian', 20, N'Science fiction', CAST(N'2024-01-08T23:19:19.6366667' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Sales], [Classyfy], [LDTS]) VALUES (24, N'Der kleine Prinz', N'Antoine de Saint-Exupéry', N'German', 200, N'Kids', CAST(N'2024-01-08T23:19:19.6366667' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Sales], [Classyfy], [LDTS]) VALUES (25, N'The Stranger', N'Albert Camus', N'French', 10, N'Classics', CAST(N'2024-01-08T23:19:19.6366667' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Sales], [Classyfy], [LDTS]) VALUES (26, N'The Adventures of Pinocchio', N'Carlo Collodi', N'Italian', 35, N'Kids', CAST(N'2024-01-08T23:19:19.6366667' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Sales], [Classyfy], [LDTS]) VALUES (27, N'The Name of the Rose', N'Umberto Eco', N'Italian', 50, N'Classics', CAST(N'2024-01-08T23:19:19.6366667' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Sales], [Classyfy], [LDTS]) VALUES (28, N'Stolz und Vorurteil', N'Jane Austen', N'German', 50, N'Classics', CAST(N'2024-01-08T23:19:19.6366667' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Sales], [Classyfy], [LDTS]) VALUES (29, N'Don Quixote', N'Miguel de Cervantes', N'Spanish', 500, N'Classics', CAST(N'2024-01-08T23:19:19.6366667' AS DateTime2))
GO
INSERT [dbo].[T_Books] ([PKID], [Title], [Author], [Language_origin], [Sales], [Classyfy], [LDTS]) VALUES (30, N'Die Entdeckung der Langsamkeit', N'Sten Nadolny', N'German', 50, N'Novel', CAST(N'2024-01-08T23:19:19.6400000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[T_Books] OFF
GO
ALTER TABLE [dbo].[T_Books] ADD  CONSTRAINT [DF_T_Books_LDTS]  DEFAULT (getdate()) FOR [LDTS]
GO
