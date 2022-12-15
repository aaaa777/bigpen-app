CREATE TABLE bigpen_quizMaster (
    quiz_id serial PRIMARY KEY,
    category_id int NOT NULL,
    quiz_text TEXT,
    FOREIGN KEY(category_id)
        REFERENCES bigpen_quizCategory(category_id)
);