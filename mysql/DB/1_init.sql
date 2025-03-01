-- Create database if not exists
CREATE DATABASE IF NOT EXISTS recordings;
DROP TABLE IF EXISTS recordings.album;
USE recordings;
-- Create table
CREATE TABLE album (
    id          INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title       VARCHAR(128) NOT NULL,
    artist      VARCHAR(255) NOT NULL,
    price       DECIMAL(5,2) NOT NULL
);
-- Insert data
INSERT INTO album
  (title, artist, price)
VALUES
  ('Blue Train', 'John Coltrane', 56.99),
  ('Giant Steps', 'John Coltrane', 63.99),
  ('Jeru', 'Gerry Mulligan', 17.99),
  ('Sarah Vaughan', 'Sarah Vaughan', 34.98);
