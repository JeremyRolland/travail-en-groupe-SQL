
#niveau 0

INSERT INTO SquareGames_db.TokenPack (endingDate, startingDate, tokenAmount, packName, packPrice) VALUES ('2018-09-24', '2008-09-24', 25, 'Pack débutant', 10.0);
INSERT INTO SquareGames_db.Currency (symbol, exchange_rate) VALUES ('€', 1.0);
INSERT INTO SquareGames_db.PawnType (pawnPicture, pawnColor, pawnPatern) VALUES ('pion-noir.jpg', 'eb4034', 'onde-abstraite_1103290-42578.jpg'  );
INSERT INTO SquareGames_db.Game (isFavoritePawn, gameName, isGameLocal, gameRequiredAge, isParentallyRestrited, gameDifficulty) VALUES (FALSE, 'Gomoku', TRUE, 4, FALSE, 'HARD');


# niveau 1

INSERT INTO SquareGames_db.Cost (id_tokenPack, id_currency, price) VALUES (1, 1, 50);
INSERT INTO SquareGames_db.Board (boardSizeRow, boardSizeCol, boardColor, boardDisplaySize, id_game) VALUES (15, 15, 2, 50, 1);
INSERT INTO SquareGames_db.GamePlay(game_start, game_end, id_game) VALUES (CURRENT_DATE, CURRENT_DATE, 1);
INSERT INTO SquareGames_db.Country(name, majority_age, id_currency) VALUES ('USA', 21, 1);

# niveau 2

INSERT INTO SquareGames_db.UserInfo (`login`, `password`, `email`, `birthday`, `avatar`, `id_country`) VALUES
('rayan_gosling', 'hashed_password1', 'rayan@gosling.com', '1990-01-01', 'avatar1.png', 1),
('well_smith', 'hashed_password2', 'well@smith.com', '1985-05-15', 'avatar2.png', 1),
('vini_junior', 'hashed_password3', 'vini@junior.com', '2010-12-25', 'avatar3.png', 1);

INSERT INTO SquareGames_db.Pawn (`id_pawnType`, `id_board`) VALUES
(1, 1);

# niveau 3

INSERT INTO SquareGames_db.PaymentInfo (`paymentMethod`, `bankingCardNumber`, `cardName`, `expiryDate`, `dateOfPurchase`, `tokenAmount`, `id_userInfo`) VALUES
('CARD', '1234567890123456', 'Johny Depp', '2025-12-31', CURDATE(), 100, 1),
('PAYPAL', '1234567890123456', 'Justin Timberlake', '2025-10-10', CURDATE(), 500, 1);


INSERT INTO SquareGames_db.Buy (`id_userInfo`, `id_tokenPack`, `purchase_date`, `quantity`) VALUES
(1, 1, CURDATE(), 1);

INSERT INTO SquareGames_db.PawnMove (`id_pawn`, `id_game_play`, `x`, `y`, `move_date`) VALUES
(1, 1, 1, 1, NOW());

INSERT INTO SquareGames_db.UserGames (`id_userInfo`, `id_game_play`) VALUES
(1, 1);