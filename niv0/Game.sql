CREATE TABLE Game
(
    id_game int PRIMARY KEY NOT NULL,
    isFavoritePawn BOOLEAN,
    isGameLocal BOOLEAN,
    gameRequiredAge INT,
    isParentallyRestricted BOOLEAN,
    gameDifficulty INT
) ;