--
-- File generated with SQLiteStudio v3.3.3 on wo okt 5 12:45:45 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: item
CREATE TABLE item (id INTEGER PRIMARY KEY AUTOINCREMENT, itemid DATE (6), beschrijving CHAR (40), prijs DOUBLE);
INSERT INTO item (id, itemid, beschrijving, prijs) VALUES (1, 'I0002', 'Pizza snijder (Kunststof)', '3,90');
INSERT INTO item (id, itemid, beschrijving, prijs) VALUES (2, 'I0001', 'Pizza snijder (Metaal)', '6,75');
INSERT INTO item (id, itemid, beschrijving, prijs) VALUES (3, 'I0003', 'Pizzaplaat (Steen)', '39,75');
INSERT INTO item (id, itemid, beschrijving, prijs) VALUES (4, 'I0004', 'Luxe Koffie bewaarbus', '21,35');

-- Table: klant
CREATE TABLE klant (id INTEGER PRIMARY KEY AUTOINCREMENT, klantid CHAR (6) NOT NULL, naam CHAR (40), orderid REFERENCES orders (orderid) UNIQUE);
INSERT INTO klant (id, klantid, naam, orderid) VALUES (1, 'K001', 'Gadgets For You', 'OR0003');
INSERT INTO klant (id, klantid, naam, orderid) VALUES (2, 'K001', 'Gadgets For You', 'OR0006');
INSERT INTO klant (id, klantid, naam, orderid) VALUES (3, 'K002', 'Pizza Special', 'OR0005');

-- Table: orders
CREATE TABLE orders (id INTEGER PRIMARY KEY AUTOINCREMENT, orderid CHAR (6) UNIQUE, verkoperid REFERENCES verkoper (verkoperid));
INSERT INTO orders (id, orderid, verkoperid) VALUES (1, 'OR0003', 'V006');
INSERT INTO orders (id, orderid, verkoperid) VALUES (2, 'OR0002', 'V007');
INSERT INTO orders (id, orderid, verkoperid) VALUES (3, 'OR0001', 'V007');
INSERT INTO orders (id, orderid, verkoperid) VALUES (4, 'OR0005', 'V004');
INSERT INTO orders (id, orderid, verkoperid) VALUES (6, 'OR0006', 'V002');

-- Table: verkoper
CREATE TABLE verkoper (naam CHAR (40) NOT NULL, verkoperid CHAR (6) NOT NULL UNIQUE, id INTEGER PRIMARY KEY AUTOINCREMENT);
INSERT INTO verkoper (naam, verkoperid, id) VALUES ('Bill', 'V007', 1);
INSERT INTO verkoper (naam, verkoperid, id) VALUES ('April', 'V006', 2);
INSERT INTO verkoper (naam, verkoperid, id) VALUES ('Janice', 'V005', 3);
INSERT INTO verkoper (naam, verkoperid, id) VALUES ('Mo', 'V004', 4);
INSERT INTO verkoper (naam, verkoperid, id) VALUES ('Boris', 'V003', 5);
INSERT INTO verkoper (naam, verkoperid, id) VALUES ('Anna', 'V002', 6);
INSERT INTO verkoper (naam, verkoperid, id) VALUES ('Joost', 'V001', 7);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
