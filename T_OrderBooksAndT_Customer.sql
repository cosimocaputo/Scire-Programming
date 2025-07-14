ALTER TABLE [dbo].[T_OrderBooks] DROP CONSTRAINT [DF_T_OrderBooks_LDTS]
GO
ALTER TABLE [dbo].[T_Customer] DROP CONSTRAINT [DF_T_Customer_LDTS]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[T_OrderBooks]') AND type in (N'U'))
DROP TABLE [dbo].[T_OrderBooks]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[T_Customer]') AND type in (N'U'))
DROP TABLE [dbo].[T_Customer]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Customer](
	[PKID] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](50) NULL,
	[Nachname] [varchar](50) NULL,
	[Geburtsdatum] [date] NULL,
	[Strasse] [varchar](50) NULL,
	[Hausnummer] [varchar](50) NULL,
	[Postleitzahl] [int] NULL,
	[Stadt] [varchar](50) NULL,
	[Mobil] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[LDTS] [datetime2](7) NULL,
 CONSTRAINT [PK_T_Customer] PRIMARY KEY CLUSTERED 
(
	[PKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_OrderBooks](
	[PKID] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[Title] [varchar](100) NULL,
	[Author] [varchar](100) NULL,
	[Language_origin] [varchar](80) NULL,
	[Cost] [int] NULL,
	[Sales] [int] NULL,
	[Classyfy] [varchar](50) NULL,
	[LDTS] [datetime2](7) NULL,
 CONSTRAINT [PK_T_OrderBooks] PRIMARY KEY CLUSTERED 
(
	[PKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[T_Customer] ON 
GO
INSERT [dbo].[T_Customer] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (17, N'Herr', N'Ditmar', N'Pachelbel', CAST(N'1900-01-01' AS Date), N'Fuchsweg', N'54', 67595, N'Bechtheim', N'0178/8037347', N'dpachelbel@live-mail.none', CAST(N'2025-07-14T17:50:07.6766667' AS DateTime2))
GO
INSERT [dbo].[T_Customer] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (29, N'Herr', N'Laurentius', N'Smirnow', CAST(N'1900-01-01' AS Date), N'Gocher Landstrasse', N'178', 76661, N'Philippsburg', N'', N'laurentius_smirnow@retromail.none', CAST(N'2025-07-14T17:50:07.6766667' AS DateTime2))
GO
INSERT [dbo].[T_Customer] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (31, N'Frau', N'Shivani', N'Sigal', CAST(N'1900-01-01' AS Date), N'Auf dem Tempel', N'32', 54518, N'Minheim', N'0160/8681935', N's.sigal@company.none', CAST(N'2025-07-14T17:50:07.6766667' AS DateTime2))
GO
INSERT [dbo].[T_Customer] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (32, N'Herr', N'Medin', N'Aarniokoski', CAST(N'1900-01-01' AS Date), N'Berliner Platz', N'71', 55629, N'Weitersborn', N'0164/9760869', N'medin-aarniokoski@validmail.none', CAST(N'2025-07-14T17:50:07.6766667' AS DateTime2))
GO
INSERT [dbo].[T_Customer] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (39, N'Frau', N'Kseniya', N'Melcher', CAST(N'1900-01-01' AS Date), N'Mittelhofer Strasse', N'147', 56330, N'Kobern-Gondorf', N'0151/8860822', N'kseniya.1999@quickmail.none', CAST(N'2025-07-14T17:50:07.6766667' AS DateTime2))
GO
INSERT [dbo].[T_Customer] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (41, N'Frau', N'Edelfriede', N'An', CAST(N'1900-01-01' AS Date), N'Rheinufer', N'69', 79194, N'Heuweiler', N'0150/3381998', N'ean@net-mail.none', CAST(N'2025-07-14T17:50:07.6766667' AS DateTime2))
GO
INSERT [dbo].[T_Customer] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (45, N'Frau', N'Melina', N'Thote', CAST(N'1956-02-21' AS Date), N'Vorm Seifen', N'117', 27254, N'Staffhorst', N'0155/2653024', N'', CAST(N'2025-07-14T17:50:07.6766667' AS DateTime2))
GO
INSERT [dbo].[T_Customer] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (51, N'Frau', N'Arite', N'Loebel', CAST(N'1951-08-25' AS Date), N'Brunnengasse', N'139', 24395, N'Nieby', N'0179/9164403', N'a.loebel@spam-mail.none', CAST(N'2025-07-14T17:50:07.6766667' AS DateTime2))
GO
INSERT [dbo].[T_Customer] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (52, N'Herr', N'Sebald', N'Kehrli', CAST(N'1900-01-01' AS Date), N'Auf Aderich', N'109', 58642, N'Iserlohn', N'0158/5329744', N'', CAST(N'2025-07-14T17:50:07.6766667' AS DateTime2))
GO
INSERT [dbo].[T_Customer] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (54, N'Herr', N'Mevsud', N'Schroeer', CAST(N'1900-01-01' AS Date), N'Ellerstrasse', N'191', 48691, N'Vreden', N'', N'', CAST(N'2025-07-14T17:50:07.6766667' AS DateTime2))
GO
INSERT [dbo].[T_Customer] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (63, N'Herr', N'Ozan', N'Wolfmeier', CAST(N'1967-06-05' AS Date), N'Hanseneck', N'111', 25779, N'Fedderingen', N'0154/9090276', N'owolfmeier@goggle-mail.none', CAST(N'2025-07-14T17:50:07.6766667' AS DateTime2))
GO
INSERT [dbo].[T_Customer] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (64, N'Herr', N'Silvijo', N'Riethmaeller', CAST(N'1900-01-01' AS Date), N'Am Pilgerborn', N'100', 40547, N'Duesseldorf', N'', N'silvijo.riethmueller@trashmail.none', CAST(N'2025-07-14T17:50:07.6766667' AS DateTime2))
GO
INSERT [dbo].[T_Customer] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (66, N'Frau', N'Ezra', N'Hallermayr', CAST(N'1900-01-01' AS Date), N'Schlachthofstrasse', N'44', 56237, N'Alsbach', N'0171/2241620', N'', CAST(N'2025-07-14T17:50:07.6766667' AS DateTime2))
GO
INSERT [dbo].[T_Customer] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (71, N'Herr', N'Arim', N'HÃ¤nni', CAST(N'1970-11-09' AS Date), N'Koettinger Hecke', N'17', 86836, N'Graben', N'', N'arim.haenni@trashmail.none', CAST(N'2025-07-14T17:50:07.6766667' AS DateTime2))
GO
INSERT [dbo].[T_Customer] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (74, N'Frau', N'Penny', N'Heindel', CAST(N'1900-01-01' AS Date), N'Clemensstrasse', N'77', 66871, N'Thallichtenberg', N'', N'', CAST(N'2025-07-14T17:50:07.6766667' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[T_Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[T_OrderBooks] ON 
GO
INSERT [dbo].[T_OrderBooks] ([PKID], [CustomerID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (1, 17, N'Der Herr der Ringe', N'J. R. R. Tolkien', N'German', 15, 100, N'Fantasy', CAST(N'2025-07-14T17:45:56.8500000' AS DateTime2))
GO
INSERT [dbo].[T_OrderBooks] ([PKID], [CustomerID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (2, 29, N'Die Säulen der Erde', N'Ken Follett', N'German', 7, 50, N'Novel', CAST(N'2025-07-14T17:45:56.8500000' AS DateTime2))
GO
INSERT [dbo].[T_OrderBooks] ([PKID], [CustomerID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (3, 31, N'Harry Potter and the Philosopher''s Stone', N'J. K. Rowling', N'English', 14, 120, N'Fantasy', CAST(N'2025-07-14T17:45:56.8500000' AS DateTime2))
GO
INSERT [dbo].[T_OrderBooks] ([PKID], [CustomerID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (4, 32, N'The Plague', N'Albert Camus', N'French', 3, 12, N'Classics', CAST(N'2025-07-14T17:45:56.8500000' AS DateTime2))
GO
INSERT [dbo].[T_OrderBooks] ([PKID], [CustomerID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (5, 39, N'Das Parfum', N'Patrick Süskind', N'Italian', 6, 12, N'Poetry', CAST(N'2025-07-14T17:45:56.8500000' AS DateTime2))
GO
INSERT [dbo].[T_OrderBooks] ([PKID], [CustomerID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (6, 41, N'War and Peace', N'Leo Tolstoy', N'Russian', 6, 36, N'Classics', CAST(N'2025-07-14T17:45:56.8500000' AS DateTime2))
GO
INSERT [dbo].[T_OrderBooks] ([PKID], [CustomerID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (7, 45, N'Nineteen Eighty-Four', N'George Orwell', N'English', 5, 30, N'Classics', CAST(N'2025-07-14T17:45:56.8500000' AS DateTime2))
GO
INSERT [dbo].[T_OrderBooks] ([PKID], [CustomerID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (8, 51, N'Andromeda Nebula', N'Ivan Yefremov', N'Russian', 19, 20, N'Science fiction', CAST(N'2025-07-14T17:45:56.8500000' AS DateTime2))
GO
INSERT [dbo].[T_OrderBooks] ([PKID], [CustomerID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (9, 52, N'Der kleine Prinz', N'Antoine de Saint-Exupéry', N'German', 10, 200, N'Kids', CAST(N'2025-07-14T17:45:56.8500000' AS DateTime2))
GO
INSERT [dbo].[T_OrderBooks] ([PKID], [CustomerID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (10, 54, N'The Stranger', N'Albert Camus', N'French', 2, 10, N'Classics', CAST(N'2025-07-14T17:45:56.8500000' AS DateTime2))
GO
INSERT [dbo].[T_OrderBooks] ([PKID], [CustomerID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (11, 63, N'The Adventures of Pinocchio', N'Carlo Collodi', N'Italian', 5, 35, N'Kids', CAST(N'2025-07-14T17:45:56.8500000' AS DateTime2))
GO
INSERT [dbo].[T_OrderBooks] ([PKID], [CustomerID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (12, 64, N'The Name of the Rose', N'Umberto Eco', N'Italian', 2, 50, N'Classics', CAST(N'2025-07-14T17:45:56.8500000' AS DateTime2))
GO
INSERT [dbo].[T_OrderBooks] ([PKID], [CustomerID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (13, 66, N'Stolz und Vorurteil', N'Jane Austen', N'German', 10, 50, N'Classics', CAST(N'2025-07-14T17:45:56.8500000' AS DateTime2))
GO
INSERT [dbo].[T_OrderBooks] ([PKID], [CustomerID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (14, 71, N'Don Quixote', N'Miguel de Cervantes', N'Spanish', 50, 500, N'Classics', CAST(N'2025-07-14T17:45:56.8500000' AS DateTime2))
GO
INSERT [dbo].[T_OrderBooks] ([PKID], [CustomerID], [Title], [Author], [Language_origin], [Cost], [Sales], [Classyfy], [LDTS]) VALUES (15, 74, N'Die Entdeckung der Langsamkeit', N'Sten Nadolny', N'German', 25, 50, N'Novel', CAST(N'2025-07-14T17:45:56.8500000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[T_OrderBooks] OFF
GO
ALTER TABLE [dbo].[T_Customer] ADD  CONSTRAINT [DF_T_Customer_LDTS]  DEFAULT (getdate()) FOR [LDTS]
GO
ALTER TABLE [dbo].[T_OrderBooks] ADD  CONSTRAINT [DF_T_OrderBooks_LDTS]  DEFAULT (getdate()) FOR [LDTS]
GO
