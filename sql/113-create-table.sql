-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 113-create-table.sql

CREATE TABLE weather (
    id INT PRIMARY KEY,
    time_of_reading TIMESTAMP,
    high DECIMAL(5,1),
    low DECIMAL(5,1),
    sig VARCHAR(2),
    comment TEXT
);

-- End of file
