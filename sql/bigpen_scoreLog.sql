CREATE TABLE bigpen_scoreLog (
    user_id int,
    category_id int,
    score int,
    PRIMARY KEY(user_id, category_id),
    FOREIGN KEY(user_id)
        REFERENCES bigpen_users(user_id),
    FOREIGN KEY(category_id)
        REFERENCES bigpen_quizCategory(category_id),
    CONSTRAINT score_check
        CHECK(score >= 0)
);