CREATE TABLE IF NOT EXISTS games (
    board_id INT NOT NULL,
    player1 INT NOT NULL,
    player2 INT NOT NULL,
    stroke INT NOT NULL,
    PRIMARY KEY (board_id, stroke),
    FOREIGN KEY (player1) REFERENCES users (user_id),
    FOREIGN KEY (player2) REFERENCES users (user_id)
);
