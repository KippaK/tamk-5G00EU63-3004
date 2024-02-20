-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 112-create-table.sql

CREATE TABLE football (
    id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    first VARCHAR(255),
    last VARCHAR(255),
    team VARCHAR(255),
    comment VARCHAR(32739)
);

-- End of file
