CREATE TABLE Champions (
    champion_id INT PRIMARY KEY,
    champion_name VARCHAR(50) NOT NULL,
    champion_tier INT NOT NULL
);

CREATE TABLE Origins (
    origin_id INT PRIMARY KEY,
    origin_name VARCHAR(50) NOT NULL
);

CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL
);

CREATE TABLE ChampionOrigins (
    champion_id INT,
    origin_id INT,
    PRIMARY KEY (champion_id, origin_id),
    FOREIGN KEY (champion_id) REFERENCES Champions(champion_id) ON DELETE CASCADE,
    FOREIGN KEY (origin_id) REFERENCES Origins(origin_id) ON DELETE CASCADE
);

CREATE TABLE ChampionClasses (
    champion_id INT,
    class_id INT,
    PRIMARY KEY (champion_id, class_id),
    FOREIGN KEY (champion_id) REFERENCES Champions(champion_id) ON DELETE CASCADE,
    FOREIGN KEY (class_id) REFERENCES Classes(class_id) ON DELETE CASCADE
);


INSERT INTO Champions (champion_id, champion_name, champion_tier) VALUES
(1, 'Aatrox', 1), (2, 'Ahri', 3), (3, 'Akali', 4), (4, 'Ashe', 4), (5, 'Braum', 5),
(6, 'Caitlyn', 3), (7, 'Darius', 3), (8, 'Dr. Mundo', 2), (9, 'Ezreal', 2), (10, 'Gangplank', 1),
(11, 'Garen', 1), (12, 'Gnar', 1), (13, 'Gwen', 5), (14, 'Janna', 2), (15, 'Jarvan IV', 4),
(16, 'Jayce', 3), (17, 'Jhin', 2), (18, 'Jinx', 4), (19, 'Kai''Sa', 2), (20, 'Kalista', 2),
(21, 'Karma', 4), (22, 'Katarina', 2), (23, 'Kayle', 1), (24, 'Kennen', 1), (25, 'Kobuko', 2),
(26, 'K''Sante', 4), (27, 'Lee Sin', 5), (28, 'Leona', 3), (29, 'Lucian', 1), (30, 'Lulu', 3),
(31, 'Lux', 2), (32, 'Malphite', 1), (33, 'Malzahar', 3), (34, 'Naafiri', 1), (35, 'Neeko', 3),
(36, 'Poppy', 4), (37, 'Rakan', 2), (38, 'Rell', 1), (39, 'Ryze', 4), (40, 'Samira', 4),
(41, 'Senna', 3), (42, 'Seraphine', 3), (43, 'Sett', 4), (44, 'Shen', 2), (45, 'Sivir', 1),
(46, 'Swain', 3), (47, 'Syndra', 1), (48, 'Twisted Fate', 5), (49, 'Udyr', 3), (50, 'Varus', 5),
(51, 'Vi', 2), (52, 'Viego', 3), (53, 'Volibear', 4), (54, 'Xayah', 2), (55, 'Xin Zhao', 2),
(56, 'Yasuo', 3), (57, 'Yone', 5), (58, 'Yuumi', 1), (59, 'Zac', 4), (60, 'Ziggs', 3),
(61, 'Zyra', 5);

INSERT INTO Origins (origin_id, origin_name) VALUES
(1, 'Battle Academia'), (2, 'Crystal Gambit'), (3, 'Luchador'), (4, 'Mentor'), (5, 'Mighty Mech'),
(6, 'Monster Trainer'), (7, 'Rogue Captain'), (8, 'Rosemother'), (9, 'Soul Fighter'), (10, 'Stance Master'),
(11, 'Star Guardian'), (12, 'Supreme Cells'), (13, 'The Champ'), (14, 'The Crew'), (15, 'Wraith');

INSERT INTO Classes (class_id, class_name) VALUES
(1, 'Bastion'), (2, 'Duelist'), (3, 'Edgelord'), (4, 'Executioner'), (5, 'Heavyweight'),
(6, 'Juggernaut'), (7, 'Prodigy'), (8, 'Protector'), (9, 'Sniper'), (10, 'Sorcerer'), (11, 'Strategist');

INSERT INTO ChampionOrigins (champion_id, origin_id) VALUES
(1, 5), (2, 11), (3, 12), (4, 2), (5, 3), (5, 13), (6, 1), (7, 12), (8, 3), (9, 5),
(10, 1), (11, 1), (12, 3), (13, 9), (14, 2), (15, 5), (16, 1), (17, 15), (18, 11), (19, 12),
(20, 9), (21, 5), (22, 1), (23, 15), (24, 12), (25, 4), (26, 15), (27, 10), (28, 1), (29, 5),
(30, 6), (31, 9), (32, 14), (33, 15), (34, 9), (35, 11), (36, 11), (37, 1), (38, 1), (39, 4),
(40, 9), (41, 5), (42, 11), (43, 9), (44, 14), (45, 2), (46, 2), (47, 2), (47, 11), (48, 7),
(48, 14), (49, 4), (50, 15), (51, 2), (52, 9), (53, 3), (54, 11), (55, 9), (56, 4), (57, 5),
(58, 1), (59, 15), (60, 14), (61, 2), (61, 8);

INSERT INTO ChampionClasses (champion_id, class_id) VALUES
(1, 5), (1, 6), (2, 10), (3, 4), (4, 2), (5, 1), (6, 9), (7, 5), (8, 6), (9, 7),
(10, 2), (11, 1), (12, 9), (13, 10), (14, 8), (14, 11), (15, 11), (16, 5), (17, 9), (18, 9),
(19, 2), (20, 4), (21, 10), (22, 4), (23, 2), (24, 8), (24, 10), (25, 5), (26, 8), (27, 10),
(28, 1), (29, 10), (30, 10), (31, 10), (32, 8), (33, 7), (34, 6), (35, 8), (36, 5), (37, 1),
(38, 8), (39, 4), (39, 11), (40, 3), (41, 4), (42, 7), (43, 6), (44, 1), (44, 3), (45, 9),
(46, 1), (46, 10), (47, 7), (48, 2), (49, 2), (49, 6), (50, 9), (51, 6), (52, 3), (53, 2),
(54, 3), (55, 1), (56, 3), (57, 3), (58, 7), (59, 5), (60, 11), (61, 11);