-- MySQL
CREATE TABLE memberships (
    id INT PRIMARY KEY AUTO_INCREMENT,
    membership_start DATE,
    membership_end DATE,
    last_checkin TIMESTAMP,
    last_checkout TIMESTAMP,
    consumption NUMERIC(5, 2),
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    price NUMERIC(5, 2),
    billing_frequency INT,
    gender VARCHAR(200)
);

-- PostgreSQL
CREATE TABLE memberships (
    id SERIAL PRIMARY KEY,
    membership_start DATE,
    membership_end DATE,
    last_checkin TIMESTAMP,
    last_checkout TIMESTAMP,
    consumption NUMERIC(5, 2),
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    price NUMERIC(5, 2),
    billing_frequency INT,
    gender VARCHAR(200)
);

-- SQLite
CREATE TABLE memberships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    membership_start DATE,
    membership_end DATE,
    last_checkin TIMESTAMP,
    last_checkout TIMESTAMP,
    consumption REAL,
    first_name TEXT,
    last_name TEXT,
    price REAL,
    billing_frequency INTEGER,
    gender TEXT
);