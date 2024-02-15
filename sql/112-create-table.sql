-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 112-create-table.sql

CREATE TABLE football (
    id INTEGER PRIMARY KEY,
    first VARCHAR(255) NOT NULL,
    last VARCHAR(255) NOT NULL,
    team VARCHAR(255) NOT NULL,
    comment VARCHAR(255)
);

-- End of file
