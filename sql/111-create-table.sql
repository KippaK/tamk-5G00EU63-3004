-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 111-create-table.sql

CREATE TABLE person (
    id INT PRIMARY KEY,
    last VARCHAR(255) NOT NULL,
    first VARCHAR(255) NOT NULL,
    phone VARCHAR(20) CHECK (phone ~ '^\+[\d\s]+$'),
    zip VARCHAR(10),
    city VARCHAR(255),
    address VARCHAR(255)
);

-- End of file
