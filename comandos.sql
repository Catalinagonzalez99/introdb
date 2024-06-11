/* mysql.exe -u root -p */

SHOW DATABASES;

DROP DATABASE hospital_for_girls;

CREATE TABLE patient(
    id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
) ;

INSERT INTO patient(name)
VALUES ("camila");

INSERT INTO patient(name)
VALUES ("sofia");

INSERT INTO patient(name)
VALUES ("agustina");

ALTER TABLE patient
ADD COLUMN consult_type VARCHAR(50) DEFAULT "on the hospital"; 

INSERT INTO patient(name)
VALUES ("lorena");

INSERT INTO patient(name)
VALUES ("laura");

ALTER TABLE patient
ADD COLUMN associated_is_true_or_false VARCHAR(50) DEFAULT "true" ; 

SHOW TABLES;

DESCRIBE patient;

SELECT * FROM patient;

SELECT * FROM patient WHERE id = 4;

SELECT * FROM patient WHERE id = 4 LIMIT 4;

SELECT * FROM patient WHERE id = 4 LIMIT 4 OFFSET 2;

UPDATE patient SET name = "lorena", associatedistrueorfalse = true  WHERE name ="agustina";
