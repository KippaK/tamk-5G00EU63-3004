-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 114-create-table.sql

CREATE TABLE inventory (
    id INT PRIMARY KEY,
    item VARCHAR(255) NOT NULL,
    worth INT,
    comment TEXT
);

-- End of file
