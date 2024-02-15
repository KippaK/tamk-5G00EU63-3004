-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 112-create-table.sql

CREATE TABLE football (
    Id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    first VARCHAR(255),
    last VARCHAR(255),
    team VARCHAR(255),
    comment VARCHAR(255)
);

-- End of file
