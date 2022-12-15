CREATE VIEW ranking AS
    SELECT RANK() OVER(ORDER BY SUM(score) DESC), SUM(score), user_name
    FROM bigpen_scoreLog
    JOIN bigpen_users
    ON bigpen_scoreLog.user_id = bigpen_users.user_id
    GROUP BY bigpen_scoreLog.user_id;