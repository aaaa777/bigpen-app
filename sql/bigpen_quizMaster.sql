CREATE TABLE bigpen_quizMaster (
    quiz_id serial PRIMARY KEY,
    category_id int NOT NULL,
    quiz_text TEXT,
    anser1_text varchar(50),
    anser2_text varchar(50),
    anser3_text varchar(50),
    anser4_text varchar(50),
    true_anser int,
    comment TEXT,
    quiz_year varchar(20),
    FOREIGN KEY(category_id)
        REFERENCES bigpen_quizCategory(category_id)
);