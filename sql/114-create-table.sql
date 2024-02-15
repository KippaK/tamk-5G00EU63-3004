-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 114-create-table.sql

CREATE TABLE inventory (
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    worth INTEGER,
    comment TEXT
);

-- End of file
