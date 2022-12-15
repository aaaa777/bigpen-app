CREATE TABLE bigpen_activeSessions (
    active_session_id serial PRIMARY KEY,
    active_session varchar(100) NOT NULL,
    UNIQUE(active_session)
);