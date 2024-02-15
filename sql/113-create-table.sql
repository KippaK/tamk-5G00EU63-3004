-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 113-create-table.sql

CREATE TABLE weather (
    Id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    time_of_reading DATETIME,
    high DECIMAL,
    low DECIMAL,
    sig VARCHAR(2),
    comment VARCHAR(255)
);

-- End of file
