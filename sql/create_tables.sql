DROP DATABASE IF EXISTS products, geursoorten, deksel, accessoire, regio, maten;
CREATE TABLE products (
  ID SERIAL PRIMARY KEY,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  geur_id INTEGER,
  deksel_id INTEGER,
  accessoire_id INTEGER,
  regio_id INTEGER,
  maten_id INTEGER
);

CREATE TABLE geursoorten (
  id SERIAL PRIMARY KEY,
  geursmaak TEXT
);

CREATE TABLE deksel (
  id SERIAL PRIMARY KEY,
  deksel_kleur TEXT
);

CREATE TABLE accessoire (
  id SERIAL PRIMARY KEY,
  accessoire_naam
);

CREATE TABLE regio (
  id SERIAL PRIMARY KEY,
  regio_naam TEXT
);

CREATE TABLE maten (
  id INTEGER PRIMARY KEY,
  maten_grootte TEXT
);
