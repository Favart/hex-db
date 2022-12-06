CREATE TABLE IF NOT EXISTS boards (
    board_id serial PRIMARY KEY,
    player1 INT NOT NULL,
    player2 INT NOT NULL,
    winner INT NOT NULL,
    created_on TIMESTAMP NOT NULL,
    duration INT NOT NULL
);

ALTER TABLE boards
ADD CONSTRAINT fk_player1 FOREIGN KEY (player1) REFERENCES users (user_id)
ADD CONSTRAINT fk_player2 FOREIGN KEY (player2) REFERENCES users (user_id);
