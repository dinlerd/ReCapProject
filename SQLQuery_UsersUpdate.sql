﻿ALTER TABLE Users DROP COLUMN Password;

ALTER TABLE USERS ADD PasswordHash VARBINARY (500);
ALTER TABLE USERS ADD PasswordSalt VARBINARY (500);
ALTER TABLE USERS ADD Status BIT;

UPDATE USERS SET PasswordHash = CAST('deniz' AS VARBINARY(500)), PasswordSalt = CAST('deniz' AS VARBINARY(500)), Status=1 where id=1;
UPDATE USERS SET PasswordHash = CAST('deniz' AS VARBINARY(500)), PasswordSalt = CAST('deniz' AS VARBINARY(500)), Status=1 where id=2;
ALTER TABLE USERS ALTER COLUMN PasswordHash VARBINARY (500) NOT NULL;
ALTER TABLE USERS ALTER COLUMN PasswordSalt VARBINARY (500) NOT NULL;
ALTER TABLE USERS ALTER COLUMN Status BIT NOT NULL;