--IF OBJECT_ID('Thrower', 'U') IS NULL 
--CREATE TABLE Thrower (
--    ThrowerId INT IDENTITY PRIMARY KEY,
--    FirstName NVARCHAR(50),
--    LastName NVARCHAR(50)
--);

--IF OBJECT_ID('Game', 'U') IS NULL 
--CREATE TABLE Game (
--    GameId INT IDENTITY PRIMARY KEY,
--    GameDate DATETIME
--);

--IF OBJECT_ID('Game_Thrower', 'U') IS NULL 
--CREATE TABLE Game_Thrower (
--    GameId INT FOREIGN KEY REFERENCES Game(GameId),
--    ThrowerId INT FOREIGN KEY REFERENCES Thrower(ThrowerId)
--);

--IF OBJECT_ID('Throw', 'U') IS NULL 
--CREATE TABLE Throw (
--    ThrowId INT IDENTITY PRIMARY KEY,
--    ThrowerId INT FOREIGN KEY REFERENCES Thrower(ThrowerId),
--    GameId INT FOREIGN KEY REFERENCES Game(GameId)
--);

--IF OBJECT_ID('Season', 'U') IS NULL 
--CREATE TABLE Season (
--    SeasonId INT IDENTITY PRIMARY KEY,
--    StartDate DATETIME,
--    EndDate DATETIME
--);

--IF OBJECT_ID('Season_Thrower', 'U') IS NULL 
--CREATE TABLE Season_Thrower (
--    SeasonId INT FOREIGN KEY REFERENCES Season(SeasonId),
--    ThrowerId INT FOREIGN KEY REFERENCES Thrower(ThrowerId)
--);

--IF OBJECT_ID('Season_Game', 'U') IS NULL 
--CREATE TABLE Season_Game (
--    SeasonId INT FOREIGN KEY REFERENCES Season(SeasonId),
--    GameId INT FOREIGN KEY REFERENCES Game(GameId)
--);

--IF OBJECT_ID('Team', 'U') IS NULL 
--CREATE TABLE Team (
--    TeamId INT IDENTITY PRIMARY KEY,
--    TeamName NVARCHAR(50)
--);

--IF OBJECT_ID('Team_Thrower', 'U') IS NULL 
--CREATE TABLE Team_Thrower (
--    TeamId INT FOREIGN KEY REFERENCES Team(TeamId),
--    ThrowerId INT FOREIGN KEY REFERENCES Thrower(ThrowerId)
--);

--IF OBJECT_ID('Team_Game', 'U') IS NULL 
--CREATE TABLE Team_Game (
--    TeamId INT FOREIGN KEY REFERENCES Team(TeamId),
--    GameId INT FOREIGN KEY REFERENCES Game(GameId)
--);

--IF OBJECT_ID('Team_Season', 'U') IS NULL 
--CREATE TABLE Team_Season (
--    TeamId INT FOREIGN KEY REFERENCES Team(TeamId),
--    SeasonId INT FOREIGN KEY REFERENCES Season(SeasonId)
--);

--IF OBJECT_ID('Match', 'U') IS NULL 
--CREATE TABLE Match (
--    MatchId INT IDENTITY PRIMARY KEY,
--    Team1Id INT FOREIGN KEY REFERENCES Team(TeamId),
--    Team2Id INT FOREIGN KEY REFERENCES Team(TeamId),
--    WinnerId INT FOREIGN KEY REFERENCES Team(TeamId)
--);

--IF OBJECT_ID('Round', 'U') IS NULL 
--CREATE TABLE Round (
--    RoundId INT IDENTITY PRIMARY KEY,
--    Team1Id INT FOREIGN KEY REFERENCES Team(TeamId),
--    Team2Id INT FOREIGN KEY REFERENCES Team(TeamId),
--    Team1Score INT,
--    Team2Score INT,
--    WinnerId INT FOREIGN KEY REFERENCES Team(TeamId)
--);

--IF OBJECT_ID('Match_Round', 'U') IS NULL 
--CREATE TABLE Match_Round (
--    MatchId INT FOREIGN KEY REFERENCES Match(MatchId),
--    RoundId INT FOREIGN KEY REFERENCES Round(RoundId)
--);

--IF OBJECT_ID('Round_Game', 'U') IS NULL 
--CREATE TABLE Round_Game (
--    RoundId INT FOREIGN KEY REFERENCES Round(RoundId),
--    GameId INT FOREIGN KEY REFERENCES Game(GameId)
--);
