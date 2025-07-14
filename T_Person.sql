
CREATE TABLE [dbo].[T_Person](
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
 CONSTRAINT [PK_T_Personen] PRIMARY KEY CLUSTERED 
(
	[PKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[T_Person] ON 
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (1, N'Herr', N'Cheikhna', N'Kies', CAST(N'1900-01-01' AS Date), N'Endertstrasse', N'102', 24395, N'Stangheck', N'0154/8787796', N'cheikhna-kies@live-mail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (2, N'Herr', N'Clifford', N'Voelz', CAST(N'1900-01-01' AS Date), N'Im Taelchen', N'11', 72664, N'Kohlberg', N'', N'c-voelz@web.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (3, N'Herr', N'Agbald', N'Vollrath', CAST(N'1900-01-01' AS Date), N'Weidegrund', N'117', 31028, N'Gronau', N'0160/6842447', N'agbald.vollrath@open-mail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (4, N'Herr', N'Ornulf', N'Budsky', CAST(N'1960-10-31' AS Date), N'Hahnewallstrasse', N'105', 78476, N'Allensbach', N'0179/1735038', N'o.budsky@ultramail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (5, N'Herr', N'Mehan', N'Boettcher', CAST(N'1900-01-01' AS Date), N'An der Escherwiese', N'29', 63691, N'Ranstadt', N'0156/3011587', N'mehan_boettcher@justmail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (6, N'k.A.', N'Ande', N'Reising', CAST(N'1900-01-01' AS Date), N'Auf der Ruetsch', N'200', 56355, N'Winterwerb', N'', N'ande-reising@spam-mail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (7, N'Herr', N'Ralph', N'Dobner', CAST(N'1900-01-01' AS Date), N'Cheruskerstrasse', N'106', 42499, N'Hueckeswagen', N'0174/4691901', N'ralph.dobner@net-mail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (8, N'Herr', N'Ambrosius', N'Kormann', CAST(N'1900-01-01' AS Date), N'Marienstrasse', N'139', 88487, N'Mietingen', N'0164/7106368', N'ambrosius.kormann@mymail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (9, N'Frau', N'Wilma', N'Ruhose', CAST(N'1980-02-14' AS Date), N'Brigittenweg', N'156', 40239, N'Duesseldorf', N'0172/3869293', N'wilma-ruhose@retromail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (10, N'Frau', N'Helleborg', N'Ebli', CAST(N'1900-01-01' AS Date), N'Kleine Hohl', N'157', 22952, N'Luetjensee', N'', N'h-ebli@retromail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (11, N'Frau', N'Franzi', N'Wurster', CAST(N'1900-01-01' AS Date), N'Maarweg', N'147', 24568, N'Winsen', N'0152/6002361', N'franzi.wurster@inter-mail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (12, N'k.A.', N'Sonnfried', N'Adney', CAST(N'1900-01-01' AS Date), N'Ludwig-Gausebeck-Strasse', N'106', 31609, N'Balge', N'0160/4691329', N'sonnfried.21@quickmail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (13, N'Herr', N'Honar', N'Bross', CAST(N'1957-09-02' AS Date), N'Deussenstrasse', N'6', 83253, N'Rimsting', N'0150/4677938', N'honarbross@open-mail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (14, N'Herr', N'SteindÃ³r', N'Pfalzgraf', CAST(N'1900-01-01' AS Date), N'Im Hohn', N'142', 77791, N'Berghaupten', N'0170/1344386', N'steindr1950@funmail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (15, N'Herr', N'Berndt', N'Bernhard', CAST(N'1900-01-01' AS Date), N'An den Linden', N'99', 56472, N'Nisterau', N'0179/9514919', N'berndt_1957@xyz.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (16, N'Herr', N'Achraf', N'Heigl', CAST(N'1998-03-09' AS Date), N'Am Erlkoenig', N'74', 48493, N'Wettringen', N'0150/8333026', N'achrafheigl@domain.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (17, N'Herr', N'Ditmar', N'Pachelbel', CAST(N'1900-01-01' AS Date), N'Fuchsweg', N'54', 67595, N'Bechtheim', N'0178/8037347', N'dpachelbel@live-mail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (18, N'Frau', N'Heimgard', N'Maurer', CAST(N'1900-01-01' AS Date), N'Luhweg', N'52', 72760, N'Reutlingen', N'', N'h-maurer@email.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (19, N'Herr', N'Tommy', N'Wielsch', CAST(N'1900-01-01' AS Date), N'Albrecht-Duerer-Platz', N'157', 24576, N'Weddelbrook', N'', N'tommy.wielsch@quickmail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
INSERT [dbo].[T_Person] ([PKID], [Anrede], [Vorname], [Nachname], [Geburtsdatum], [Strasse], [Hausnummer], [Postleitzahl], [Stadt], [Mobil], [EMail], [LDTS]) VALUES (20, N'Frau', N'Shayma', N'Mahr', CAST(N'1900-01-01' AS Date), N'Hemsener Weg', N'139', 25813, N'Schwesing', N'0178/7618967', N'smahr@validmail.none', CAST(N'2025-07-14T15:23:15.1600000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[T_Person] OFF
GO
ALTER TABLE [dbo].[T_Person] ADD  CONSTRAINT [DF_T_Personen_LDTS]  DEFAULT (getdate()) FOR [LDTS]
GO
