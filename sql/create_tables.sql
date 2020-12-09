DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS geur;
DROP TABLE IF EXISTS deksel;
DROP TABLE IF EXISTS accessoire;
DROP TABLE IF EXISTS regio;
DROP TABLE IF EXISTS maten;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
<<<<<<< HEAD
  price NUMERIC(10, 2  geur_id INTEGER,
  deksel_id INTEGER
=======
  price NUMERIC(10, 2),
  geur_id INTEGER,
  deksel_id INTEGER,
  accessoire_id INTEGER,
  regio_id INTEGER,
  maten_id INTEGER
>>>>>>> 52a5bd3daae2824bf34c31e00e830d2e0ad7534a
);

CREATE TABLE geur (
  id SERIAL PRIMARY KEY,
  beschrijving TEXT,
  geur_naam TEXT
);

CREATE TABLE deksel (
  id SERIAL PRIMARY KEY,
  deksel_kleur TEXT
);

CREATE TABLE accessoire (
  id SERIAL PRIMARY KEY,
  accessoire_naam TEXT
);

CREATE TABLE regio (
  id SERIAL PRIMARY KEY,
  regio_naam TEXT
);

CREATE TABLE maten (
  id SERIAL PRIMARY KEY,
  maten_grootte TEXT
);

