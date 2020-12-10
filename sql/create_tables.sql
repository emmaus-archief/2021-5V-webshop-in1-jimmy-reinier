DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS geur;
DROP TABLE IF EXISTS deksel;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  geur_id INTEGER,
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> cd1f49f9c23ee67d71ecb394c8236f6732f65d07
  deksel_id INTEGER,
  accessoire_id INTEGER,
  regio_id INTEGER,
  maten_id INTEGER
<<<<<<< HEAD
>>>>>>> 52a5bd3daae2824bf34c31e00e830d2e0ad7534a
=======
=======
  deksel_id INTEGER
>>>>>>> 6e0d3537fdce546a2e888a8dba8c2a0546a93e97
>>>>>>> cd1f49f9c23ee67d71ecb394c8236f6732f65d07
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

