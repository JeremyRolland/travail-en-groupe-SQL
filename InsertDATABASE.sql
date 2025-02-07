-- Niveau 2

INSERT INTO `UserInfo` (`login`, `password`, `email`, `birthday`, `avatar`, `id_country`) VALUES 
('rayan_gosling', 'hashed_password1', 'rayan@gosling.com', '1990-01-01', 'avatar1.png', 1),
('well_smith', 'hashed_password2', 'well@smith.com', '1985-05-15', 'avatar2.png', 1),
('vini_junior', 'hashed_password3', 'vini@junior.com', '2010-12-25', 'avatar3.png', 1);

INSERT INTO `Pawn` (`id_pawnType`, `id_board`) VALUES 
(1, 1), 
(2, 1),
(3, 1),
(4, 1);

-- Niveau 3

INSERT INTO `PaymentInfo` (`paymentMethod`, `bankingCardNumber`, `cardName`, `expiryDate`, `dateOfPurchase`, `tokenAmount`, `id_userInfo`) VALUES 
('CARD', '1234567890123456', 'Johny Depp', '2025-12-31', CURDATE(), 100, 1),
('PAYPAL', '1234567890123456', 'Justin Timberlake', '2025-10-10', CURDATE(), 500, 1);


INSERT INTO `Buy` (`id_userInfo`, `id_tokenPack`, `purchase_date`, `quantity`) VALUES 
(1, 1, CURDATE(), 1),
(1, 1, CURDATE(), 1);

INSERT INTO `PawnMove` (`id_pawn`, `id_game_play`, `x`, `y`, `move_date`) VALUES 
(1, 1, 1, 1, NOW()),

INSERT INTO `UserGames` (`id_userInfo`, `id_game_play`) VALUES 
(1, 1),