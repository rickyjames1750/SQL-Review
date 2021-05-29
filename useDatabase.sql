CREATE DATABASE crypto_company;
USE crypto_company;
CREATE TABLE test (
	test_column INT
);
ALTER TABLE test 
ADD another_column VARCHAR(255);
DROP TABLE test;

# Create a table called bands 
CREATE DATABASE crypto_company;
USE crypto_company;
CREATE TABLE bands (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE album (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    PRIMARY KEY(id),
    FOREIGN KEY(band_id) REFERENCES bands(id)
);

INSERT INTO bands (name)
VALUES ('Iron Maiden');

INSERT INTO bands (name)
VALUES ('Deuce'), ('Avenged Sevenfold'), ('Ankor');

SELECT * FROM bands;

SELECT * FROM bands LIMIT 2;