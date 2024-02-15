-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 111-create-table.sql

CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    last VARCHAR(255),
    first VARCHAR(255),
    phone VARCHAR(20),
    zip VARCHAR(10),
    city VARCHAR(255),
    address VARCHAR(255)
);

-- End of file
