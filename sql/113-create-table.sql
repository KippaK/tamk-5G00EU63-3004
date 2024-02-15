-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 113-create-table.sql

CREATE TABLE weather (
    id INTEGER PRIMARY KEY NOT NULL,
    time_of_reading TIMESTAMP,
    high DECIMAL,
    low DECIMAL,
    sig VARCHAR(255),
    comment VARCHAR(255)
);

-- End of file
