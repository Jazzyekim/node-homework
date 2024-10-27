CREATE TABLE IF NOT EXISTS Users (
    ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS UserPreferences (
    PreferenceID SERIAL PRIMARY KEY,
    LanguageCode VARCHAR(100),
    PreferredCommunication INT,
    UserId INT,
    FOREIGN KEY (UserId) REFERENCES Users(ID) ON DELETE CASCADE
);

INSERT INTO users (id, name, email) VALUES (1, 'delete_me', 'email_to_remove@email.com');
INSERT INTO users (id, name, email) VALUES (2, 'misha', 'misha@email.com');
INSERT INTO userpreferences (preferenceid, languagecode, preferredcommunication, userid) VALUES (1, 'fr', 1, 1);
INSERT INTO userpreferences (preferenceid, languagecode, preferredcommunication, userid) VALUES (2, 'ua', 33, 2);

DELETE FROM Users WHERE id = 1;

