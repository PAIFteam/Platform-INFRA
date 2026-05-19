USE [DB_SQL_PAIF_GAMES]
GO
delete from access_users
delete from access_control
delete from access_function
delete from access_profile

INSERT INTO dbo.access_profile (id_profile, name) VALUES (1, 'Administrador')
INSERT INTO dbo.access_profile (id_profile, name) VALUES (2, 'Cliente')

INSERT INTO dbo.access_function (id_function,name, code) VALUES (1, 'Incluir Usuário','CON-USU')
INSERT INTO dbo.access_function (id_function,name, code) VALUES (2, 'Listar Usuários','LIS-USU')
INSERT INTO dbo.access_function (id_function,name, code) VALUES (3, 'Alterar Usuário','ALT-USU')
INSERT INTO dbo.access_function (id_function,name, code) VALUES (4, 'Acessar Plataforma','ACE-PLA')
INSERT INTO dbo.access_function (id_function,name, code) VALUES (5, 'Acessar Biblioteca de Jogos','ACE-BIB-JOG')
INSERT INTO dbo.access_function (id_function,name, code) VALUES (6, 'Incluir/Alterar Jogos','INC-ALT-JOG')
INSERT INTO dbo.access_function (id_function,name, code) VALUES (7, 'Incluir/Alterar Promoção','INC-ALT-PRO')

INSERT INTO dbo.access_control VALUES (1,1)
INSERT INTO dbo.access_control VALUES (1,2)
INSERT INTO dbo.access_control VALUES (1,3)
INSERT INTO dbo.access_control VALUES (1,4)
INSERT INTO dbo.access_control VALUES (1,5)
INSERT INTO dbo.access_control VALUES (1,6)
INSERT INTO dbo.access_control VALUES (1,7)
INSERT INTO dbo.access_control VALUES (2,4)
INSERT INTO dbo.access_control VALUES (2,5)

INSERT INTO dbo.access_users (name, [login], [password], email, date_birth, id_profile) values ('CHARLES TOSTES', 'crtostes77', 'Paif@!01','crtostes77@gmail.com', '1977-01-06' ,1)


SELECT * FROM dbo.access_users u
	INNER JOIN dbo.access_profile p		ON u.id_profile = p.id_profile
	INNER JOIN dbo.access_control ac	ON p.id_profile = ac.id_profile
	INNER JOIN dbo.access_function f	ON ac.id_function = f.id_function
WHERE u.login = 'crtostes77'


INSERT INTO [dbo].[type_game] VALUES (1,'Ação')
INSERT INTO [dbo].[type_game] VALUES (2,'RPG(Role-Playng_Game')
INSERT INTO [dbo].[type_game] VALUES (3,'Estratégia')
INSERT INTO [dbo].[type_game] VALUES (4,'Simulação')
INSERT INTO [dbo].[type_game] VALUES (5,'Aventura')
INSERT INTO [dbo].[type_game] VALUES (6,'Esportes ou Fantasia')
INSERT INTO [dbo].[type_game] VALUES (7,'Battle Royale')


INSERT INTO [dbo].[promotion] ([id_promotion],[name],[discount],[date_start],[date_end]) VALUES (1,'Inauguração',10,'2026-01-01','2026-03-30')

INSERT INTO [dbo].[company] VALUES (1,'Sony');
INSERT INTO [dbo].[company] VALUES (2,'Microsoft');
INSERT INTO [dbo].[company] VALUES (3,'Nintendo');
INSERT INTO [dbo].[company] VALUES (4,'Activision Blizzard');
INSERT INTO [dbo].[company] VALUES (5,'Electronic Arts');
INSERT INTO [dbo].[company] VALUES (6,'Ubisoft');
INSERT INTO [dbo].[company] VALUES (7,'Take-Two Interactive');
INSERT INTO [dbo].[company] VALUES (8,'Bandai Namco');
INSERT INTO [dbo].[company] VALUES (9,'Wildlife Studios');
INSERT INTO [dbo].[company] VALUES (10,'Aquiris Game Studio');
INSERT INTO [dbo].[company] VALUES (11,'Afterverse');
INSERT INTO [dbo].[company] VALUES (12,'Kokku');
INSERT INTO [dbo].[company] VALUES (13,'Fanatee');
INSERT INTO [dbo].[company] ([id_company],[name]) VALUES (14,'Atari');

INSERT INTO [dbo].[games] VALUES (1,'God of War',1,1,299);
INSERT INTO [dbo].[games] VALUES (2,'God of War II',1,1,299);
INSERT INTO [dbo].[games] VALUES (3,'God of War III',1,1,299);
INSERT INTO [dbo].[games] VALUES (4,'God of War: Ascension',1,1,299);
INSERT INTO [dbo].[games] VALUES (5,'God of War Ragnarök',1,1,349);
INSERT INTO [dbo].[games] VALUES (6,'The Last of Us',1,5,349);
INSERT INTO [dbo].[games] VALUES (7,'The Last of Us Part II',1,5,349);
INSERT INTO [dbo].[games] VALUES (8,'Gran Turismo 5',1,6,299);
INSERT INTO [dbo].[games] VALUES (9,'Gran Turismo 6',1,6,299);
INSERT INTO [dbo].[games] VALUES (10,'Gran Turismo 7',1,6,299);
INSERT INTO [dbo].[games] VALUES (11,'Spider-Man (PS4)',1,1,299);
INSERT INTO [dbo].[games] VALUES (12,'Spider-Man: Miles Morales',1,1,299);
INSERT INTO [dbo].[games] VALUES (13,'Spider-Man 2',1,1,349);
INSERT INTO [dbo].[games] VALUES (14,'Horizon Zero Dawn',1,2,349);
INSERT INTO [dbo].[games] VALUES (15,'Horizon Forbidden West',1,2,349);

INSERT INTO [dbo].[games] VALUES (16,'Halo: Combat Evolved',2,1,299);
INSERT INTO [dbo].[games] VALUES (17,'Halo 2',2,1,299);
INSERT INTO [dbo].[games] VALUES (18,'Halo 3',2,1,299);
INSERT INTO [dbo].[games] VALUES (19,'Halo Reach',2,1,299);
INSERT INTO [dbo].[games] VALUES (20,'Halo Infinite',2,1,349);
INSERT INTO [dbo].[games] VALUES (21,'Gears of War',2,1,299);
INSERT INTO [dbo].[games] VALUES (22,'Gears of War 2',2,1,299);
INSERT INTO [dbo].[games] VALUES (23,'Gears of War 3',2,1,299);
INSERT INTO [dbo].[games] VALUES (24,'Gears 5',2,1,299);
INSERT INTO [dbo].[games] VALUES (25,'Forza Horizon 3',2,6,349);
INSERT INTO [dbo].[games] VALUES (26,'Forza Horizon 4',2,6,349);
INSERT INTO [dbo].[games] VALUES (27,'Forza Horizon 5',2,6,349);
INSERT INTO [dbo].[games] VALUES (28,'Minecraft',2,4,199);
INSERT INTO [dbo].[games] VALUES (29,'Age of Empires II',2,3,249);
INSERT INTO [dbo].[games] VALUES (30,'Age of Empires IV',2,3,299);

INSERT INTO [dbo].[games] VALUES (31,'Super Mario Bros',3,5,199);
INSERT INTO [dbo].[games] VALUES (32,'Super Mario 64',3,5,249);
INSERT INTO [dbo].[games] VALUES (33,'Super Mario Sunshine',3,5,249);
INSERT INTO [dbo].[games] VALUES (34,'Super Mario Galaxy',3,5,299);
INSERT INTO [dbo].[games] VALUES (35,'Super Mario Odyssey',3,5,299);
INSERT INTO [dbo].[games] VALUES (36,'The Legend of Zelda: Ocarina of Time',3,5,299);
INSERT INTO [dbo].[games] VALUES (37,'The Legend of Zelda: Majora’s Mask',3,5,299);
INSERT INTO [dbo].[games] VALUES (38,'The Legend of Zelda: Twilight Princess',3,5,299);
INSERT INTO [dbo].[games] VALUES (39,'The Legend of Zelda: Breath of the Wild',3,5,349);
INSERT INTO [dbo].[games] VALUES (40,'The Legend of Zelda: Tears of the Kingdom',3,5,349);
INSERT INTO [dbo].[games] VALUES (41,'Pokémon Red',3,2,199);
INSERT INTO [dbo].[games] VALUES (42,'Pokémon Gold',3,2,199);
INSERT INTO [dbo].[games] VALUES (43,'Pokémon Sword',3,2,299);
INSERT INTO [dbo].[games] VALUES (44,'Pokémon Shield',3,2,299);
INSERT INTO [dbo].[games] VALUES (45,'Pokémon Scarlet',3,2,349);
INSERT INTO [dbo].[games] VALUES (46,'Pokémon Violet',3,2,349);
INSERT INTO [dbo].[games] VALUES (47,'Mario Kart 8 Deluxe',3,6,299);
INSERT INTO [dbo].[games] VALUES (48,'Splatoon 2',3,1,249);
INSERT INTO [dbo].[games] VALUES (49,'Splatoon 3',3,1,299);

INSERT INTO [dbo].[games] VALUES (50,'Assassin’s Creed',6,5,299);
INSERT INTO [dbo].[games] VALUES (51,'Assassin’s Creed II',6,5,299);
INSERT INTO [dbo].[games] VALUES (52,'Assassin’s Creed Brotherhood',6,5,299);
INSERT INTO [dbo].[games] VALUES (53,'Assassin’s Creed Revelations',6,5,299);
INSERT INTO [dbo].[games] VALUES (54,'Assassin’s Creed III',6,5,299);
INSERT INTO [dbo].[games] VALUES (55,'Assassin’s Creed IV: Black Flag',6,5,299);
INSERT INTO [dbo].[games] VALUES (56,'Assassin’s Creed Unity',6,5,299);
INSERT INTO [dbo].[games] VALUES (57,'Assassin’s Creed Syndicate',6,5,299);
INSERT INTO [dbo].[games] VALUES (58,'Assassin’s Creed Origins',6,5,349);
INSERT INTO [dbo].[games] VALUES (59,'Assassin’s Creed Odyssey',6,5,349);
INSERT INTO [dbo].[games] VALUES (60,'Assassin’s Creed Valhalla',6,5,349);
INSERT INTO [dbo].[games] VALUES (61,'Assassin’s Creed Mirage',6,5,349);
INSERT INTO [dbo].[games] VALUES (62,'Far Cry 3',6,1,299);
INSERT INTO [dbo].[games] VALUES (63,'Far Cry 4',6,1,299);
INSERT INTO [dbo].[games] VALUES (64,'Far Cry 5',6,1,299);
INSERT INTO [dbo].[games] VALUES (65,'Far Cry 6',6,1,349);
INSERT INTO [dbo].[games] VALUES (66,'Watch Dogs',6,1,299);
INSERT INTO [dbo].[games] VALUES (67,'Watch Dogs 2',6,1,299);
INSERT INTO [dbo].[games] VALUES (68,'Watch Dogs Legion',6,1,349);
INSERT INTO [dbo].[games] VALUES (69,'Just Dance 2020',6,6,199);
INSERT INTO [dbo].[games] VALUES (70,'Just Dance 2021',6,6,199);
INSERT INTO [dbo].[games] VALUES (71,'Just Dance 2022',6,6,199);
INSERT INTO [dbo].[games] VALUES (72,'Just Dance 2023',6,6,199);
INSERT INTO [dbo].[games] VALUES (73,'Prince of Persia: Sands of Time',6,5,249);
INSERT INTO [dbo].[games] VALUES (74,'Prince of Persia: Warrior Within',6,5,249);
INSERT INTO [dbo].[games] VALUES (75,'Prince of Persia: The Lost Crown',6,5,299);

INSERT INTO [dbo].[games] VALUES (76,'FIFA 20',5,6,299);
INSERT INTO [dbo].[games] VALUES (77,'FIFA 21',5,6,299);
INSERT INTO [dbo].[games] VALUES (78,'FIFA 22',5,6,299);
INSERT INTO [dbo].[games] VALUES (79,'FIFA 23',5,6,299);
INSERT INTO [dbo].[games] VALUES (80,'FIFA 24',5,6,299);
INSERT INTO [dbo].[games] VALUES (81,'The Sims 2',5,4,199);
INSERT INTO [dbo].[games] VALUES (82,'The Sims 3',5,4,199);
INSERT INTO [dbo].[games] VALUES (83,'The Sims 4',5,4,199);
INSERT INTO [dbo].[games] VALUES (84,'Battlefield 3',5,1,299);
INSERT INTO [dbo].[games] VALUES (85,'Battlefield 4',5,1,299);
INSERT INTO [dbo].[games] VALUES (86,'Battlefield V',5,1,299);
INSERT INTO [dbo].[games] VALUES (87,'Battlefield 2042',5,1,349);
INSERT INTO [dbo].[games] VALUES (88,'Need for Speed Underground',5,6,249);
INSERT INTO [dbo].[games] VALUES (89,'Need for Speed Most Wanted',5,6,249);
INSERT INTO [dbo].[games] VALUES (90,'Need for Speed Heat',5,6,299);
INSERT INTO [dbo].[games] VALUES (91,'Mass Effect',5,2,299);
INSERT INTO [dbo].[games] VALUES (92,'Mass Effect 2',5,2,299);
INSERT INTO [dbo].[games] VALUES (93,'Mass Effect 3',5,2,299);
INSERT INTO [dbo].[games] VALUES (94,'Mass Effect Andromeda',5,2,299);
INSERT INTO [dbo].[games] VALUES (95,'Mass Effect Legendary Edition',5,2,349);

INSERT INTO [dbo].[games] VALUES (96,'GTA III',7,1,249);
INSERT INTO [dbo].[games] VALUES (97,'GTA Vice City',7,1,249);
INSERT INTO [dbo].[games] VALUES (98,'GTA San Andreas',7,1,249);
INSERT INTO [dbo].[games] VALUES (99,'GTA IV',7,1,299);
INSERT INTO [dbo].[games] VALUES (100,'GTA V',7,1,349);
INSERT INTO [dbo].[games] VALUES (101,'Red Dead Redemption',7,5,299);
INSERT INTO [dbo].[games] VALUES (102,'Red Dead Redemption 2',7,5,349);
INSERT INTO [dbo].[games] VALUES (103,'NBA 2K20',7,6,299);
INSERT INTO [dbo].[games] VALUES (104,'NBA 2K21',7,6,299);
INSERT INTO [dbo].[games] VALUES (105,'NBA 2K22',7,6,299);
INSERT INTO [dbo].[games] VALUES (106,'NBA 2K23',7,6,299);
INSERT INTO [dbo].[games] VALUES (107,'NBA 2K24',7,6,299);
INSERT INTO [dbo].[games] VALUES (108,'Bioshock',7,2,299);
INSERT INTO [dbo].[games] VALUES (109,'Bioshock 2',7,2,299);
INSERT INTO [dbo].[games] VALUES (110,'Bioshock Infinite',7,2,299);
INSERT INTO [dbo].[games] VALUES (111,'Borderlands',7,2,299);
INSERT INTO [dbo].[games] VALUES (112,'Borderlands 2',7,2,299);
INSERT INTO [dbo].[games] VALUES (113,'Borderlands 3',7,2,299);

INSERT INTO [dbo].[games] VALUES (114,'Tekken 3',8,1,249);
INSERT INTO [dbo].[games] VALUES (115,'Tekken 5',8,1,249);
INSERT INTO [dbo].[games] VALUES (116,'Tekken 7',8,1,299);
INSERT INTO [dbo].[games] VALUES (117,'Tekken 8',8,1,349);
INSERT INTO [dbo].[games] VALUES (118,'Dragon Ball FighterZ',8,1,299);
INSERT INTO [dbo].[games] VALUES (119,'Dark Souls',8,2,299);
INSERT INTO [dbo].[games] VALUES (120,'Dark Souls II',8,2,299);
INSERT INTO [dbo].[games] VALUES (121,'Dark Souls III',8,2,299);
INSERT INTO [dbo].[games] VALUES (122,'Elden Ring',8,2,349);
INSERT INTO [dbo].[games] VALUES (123,'Pac-Man',8,5,199);


INSERT INTO [dbo].[games] VALUES (124,'Call of Duty: Modern Warfare',4,1,299);
INSERT INTO [dbo].[games] VALUES (125,'Call of Duty: Modern Warfare 2',4,1,299);
INSERT INTO [dbo].[games] VALUES (126,'Call of Duty: Modern Warfare 3',4,1,299);
INSERT INTO [dbo].[games] VALUES (127,'Call of Duty: Black Ops',4,1,299);
INSERT INTO [dbo].[games] VALUES (128,'Call of Duty: Black Ops II',4,1,299);
INSERT INTO [dbo].[games] VALUES (129,'Call of Duty: Black Ops III',4,1,299);
INSERT INTO [dbo].[games] VALUES (130,'Call of Duty: Black Ops Cold War',4,1,349);
INSERT INTO [dbo].[games] VALUES (131,'Call of Duty: Warzone',4,7,0);
INSERT INTO [dbo].[games] VALUES (132,'Call of Duty: Vanguard',4,1,299);
INSERT INTO [dbo].[games] VALUES (133,'Overwatch',4,7,299);

INSERT INTO [dbo].[games] ([id_game],[name], id_company, id_type_game, price) VALUES (134,'River Raid',14,1,50.89)
INSERT INTO [dbo].[games] ([id_game],[name], id_company, id_type_game, price) VALUES (135,'Enduro',14,1,75.99)
INSERT INTO [dbo].[games] ([id_game],[name], id_company, id_type_game, price) VALUES (136,'Pole Position',14,1,85.99)
INSERT INTO [dbo].[games] ([id_game],[name], id_company, id_type_game, price) VALUES (137,'Pac-Man',14,1,24.89)


GO

INSERT INTO [dbo].[cupon] VALUES (1,'PAIF25',25,'2026-01-01','2026-12-31',1000,0,1)
INSERT INTO [dbo].[cupon] VALUES (2,'PAIF50',50,'2026-01-01','2026-12-31',1000,0,1)
INSERT INTO [dbo].[cupon] VALUES (3,'PAIF75',75,'2026-01-01','2026-12-31',1000,0,1)


GO


