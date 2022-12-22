CREATE TABLE bigpen_quizMaster (
    quiz_id serial PRIMARY KEY,
    category_id int NOT NULL,
    quiz_text TEXT,
    true_anser int,
    anser_text TEXT,
    quiz_year varchar(20),
    FOREIGN KEY(category_id)
        REFERENCES bigpen_quizCategory(category_id)
);