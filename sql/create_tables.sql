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
  price NUMERIC(10,2),
  geur_id INTEGER,
  deksel_id INTEGER,
  accessoire_id INTEGER,
  regio_id INTEGER,
  maten_id INTEGER
);

CREATE TABLE geur (
  id SERIAL PRIMARY KEY,
  geur_naam TEXT,
  geur_beschrijving TEXT
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

--alle informatie van een artikel
SELECT * FROM products 
LEFT OUTER JOIN geur ON geur.id = products.geur_id 
LEFT OUTER JOIN deksel ON deksel.id = products.deksel_id
LEFT OUTER JOIN accessoire ON accessoire.id = products.accessoire_id 
LEFT OUTER JOIN regio ON regio.id = products.regio_id
LEFT OUTER JOIN maten ON maten.id = products.maten_id;

--relevante informatie van een artikel
SELECT products.id, products.code, products.name, products.description, price, geur.geur_naam, accessoire.accessoire_naam, regio.regio_naam, maten.maten_grootte FROM products 
LEFT OUTER JOIN geur ON geur.id = products.geur_id 
LEFT OUTER JOIN deksel ON deksel.id = products.deksel_id
LEFT OUTER JOIN accessoire ON accessoire.id = products.accessoire_id 
LEFT OUTER JOIN regio ON regio.id = products.regio_id
LEFT OUTER JOIN maten ON maten.id = products.maten_id;

--meer producten uit deze regio
SELECT products.name AS Meer_producten_uit_deze_regio, products.price FROM products 
LEFT OUTER JOIN regio ON regio.id = products.regio_id 
WHERE regio.id = 1;

--meer producten met de geur: Sweet Aroma
SELECT products.name AS meer_producten_met_geur_Sweet_Aroma, products.price FROM products 
LEFT OUTER JOIN geur ON geur.id = products.geur_id 
WHERE geur.id = 1;


