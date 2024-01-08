

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
INSERT [dbo].[T_Books] ( [Title], [Author], [Language_origin], [Sales], [Classyfy]) VALUES ( N'Der Herr der Ringe', N'J. R. R. Tolkien', N'German', 100, N'Fantasy')
GO
INSERT [dbo].[T_Books] ( [Title], [Author], [Language_origin], [Sales], [Classyfy]) VALUES ( N'Die Säulen der Erde', N'Ken Follett', N'German', 50, N'Novel')
GO
INSERT [dbo].[T_Books] ( [Title], [Author], [Language_origin], [Sales], [Classyfy]) VALUES ( N'Harry Potter and the Philosopher''s Stone', N'J. K. Rowling', N'English', 120, N'Fantasy')
GO
INSERT [dbo].[T_Books] ( [Title], [Author], [Language_origin], [Sales], [Classyfy]) VALUES ( N'The Plague', N'Albert Camus', N'French', 12, N'Classics')
GO
INSERT [dbo].[T_Books] ( [Title], [Author], [Language_origin], [Sales], [Classyfy]) VALUES ( N'Das Parfum', N'Patrick Süskind', N'Italian', 12, N'Poetry')
GO
INSERT [dbo].[T_Books] ( [Title], [Author], [Language_origin], [Sales], [Classyfy]) VALUES ( N'War and Peace', N'Leo Tolstoy', N'Russian', 36, N'Classics')
GO
INSERT [dbo].[T_Books] ( [Title], [Author], [Language_origin], [Sales], [Classyfy]) VALUES ( N'Nineteen Eighty-Four', N'George Orwell', N'English', 30, N'Classics')
GO
INSERT [dbo].[T_Books] ( [Title], [Author], [Language_origin], [Sales], [Classyfy]) VALUES ( N'Andromeda Nebula', N'Ivan Yefremov', N'Russian', 20, N'Science fiction')
GO
INSERT [dbo].[T_Books] ( [Title], [Author], [Language_origin], [Sales], [Classyfy]) VALUES ( N'Der kleine Prinz', N'Antoine de Saint-Exupéry', N'German', 200, N'Kids')
GO
INSERT [dbo].[T_Books] ( [Title], [Author], [Language_origin], [Sales], [Classyfy]) VALUES ( N'The Stranger', N'Albert Camus', N'French', 10, N'Classics')
GO
INSERT [dbo].[T_Books] ( [Title], [Author], [Language_origin], [Sales], [Classyfy]) VALUES ( N'The Adventures of Pinocchio', N'Carlo Collodi', N'Italian', 35, N'Kids')
GO
INSERT [dbo].[T_Books] ( [Title], [Author], [Language_origin], [Sales], [Classyfy]) VALUES ( N'The Name of the Rose', N'Umberto Eco', N'Italian', 50, N'Classics')
GO
INSERT [dbo].[T_Books] ( [Title], [Author], [Language_origin], [Sales], [Classyfy]) VALUES ( N'Stolz und Vorurteil', N'Jane Austen', N'German', 50, N'Classics')
GO
INSERT [dbo].[T_Books] ( [Title], [Author], [Language_origin], [Sales], [Classyfy]) VALUES ( N'Don Quixote', N'Miguel de Cervantes', N'Spanish', 500, N'Classics')
GO
INSERT [dbo].[T_Books] ( [Title], [Author], [Language_origin], [Sales], [Classyfy]) VALUES ( N'Die Entdeckung der Langsamkeit', N'Sten Nadolny', N'German', 50, N'Novel')
GO
SET IDENTITY_INSERT [dbo].[T_Books] OFF
GO
ALTER TABLE [dbo].[T_Books] ADD  CONSTRAINT [DF_T_Books_LDTS]  DEFAULT (getdate()) FOR [LDTS]
GO
