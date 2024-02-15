-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 113-create-table.sql

CREATE TABLE weather (
    id INTEGER PRIMARY KEY,
    time_of_reading DATETIME,
    high FLOAT,
    low FLOAT,
    sig VARCHAR(2),
    comment TEXT
);

-- End of file
