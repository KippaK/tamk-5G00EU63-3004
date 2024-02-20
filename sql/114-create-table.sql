-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 114-create-table.sql

CREATE TABLE inventory (
    id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    item VARCHAR(255),
    worth INTEGER,
    comment VARCHAR(255)
);

-- End of file
