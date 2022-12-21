CREATE TABLE bigpen_scoreLog (
    score_id int PRIMARY KEY,
    user_id int NOT NULL,
    category_id int NOT NULL,
    score int NOT NULL CHECK(score >= 0),
    date_finish date NOT NULL DEFAULT now(2),
    FOREIGN KEY(user_id)
        REFERENCES bigpen_users(user_id),
    FOREIGN KEY(category_id)
        REFERENCES bigpen_quizCategory(category_id)
);