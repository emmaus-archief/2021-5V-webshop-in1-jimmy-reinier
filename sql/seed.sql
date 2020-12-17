
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

--products

INSERT INTO products (code, name, description, price, geur_id, deksel_id, accessoire_id, regio_id, maten_id)
VALUES ('#010101EUS', 'The Bottle', 'De originele Bottle van onze collectie, met een tijdloze en onopvallend design, past het perfect in elke ruimte.', 49.99, 1, 1, 1, 1, 1);
INSERT INTO products (code, name, description, price, geur_id, deksel_id, accessoire_id, regio_id, maten_id)
VALUES ('#020101EUS', 'Magic Ball', 'Deze elegante bal geeft uw kamer onmiddelijk een fijne geur naar uw keuze.', 59.99, 1, 1, 1, 1, 1);
INSERT INTO products (code, name, description, price, geur_id, deksel_id, accessoire_id, regio_id, maten_id)
VALUES ('#030101AFS', 'Pentagonal Bliss', 'Vijfhoeken zijn in. Geef je kamer een frisse geur.', 69.99, 3, 1, 1, 3, 1);
INSERT INTO products (code, name, description, price, geur_id, deksel_id, accessoire_id, regio_id, maten_id)
VALUES ('#040101NAS', 'Cilinder', 'Het is een cilinder, met een geur.', 79.99, 3, 1, 1, 2, 1);
insert into products (code, name, description, price, geur_id, deksel_id, accessoire_id, regio_id, maten_id) 
values ('#050101NAS','Clean Cube','Een simpele kubus. Scherpe hoeken voor een scherpe geur.', 89.99, 3, 1, 1, 2, 1);
insert into products (code, name, description, price, geur_id, deksel_id, accessoire_id, regio_id, maten_id) 
values ('#060101AFS','Pharaoric Pyramid','Voel je als een Farao met deze piramide.', 49.99, 3, 1, 1, 3, 1);

--CONTENTS VAN GEUREN

INSERT INTO geur (geur_naam, geur_beschrijving) VALUES ('Sweet Aroma', 'Net alsof je een snoepwinkel binnen komt.');
INSERT INTO geur (geur_naam, geur_beschrijving) VALUES ('Fresh Scent', 'So Fresh So Clean.');
INSERT INTO geur (geur_naam, geur_beschrijving) VALUES ('New Fragrant', 'Nieuwe Kleur, Who dis.');
INSERT INTO geur (geur_naam, geur_beschrijving) VALUES ('Savannah Steppes', 'Mooi desert voor bij je dessert.');
INSERT INTO geur (geur_naam, geur_beschrijving) VALUES ('Antarctic Freeze', 'Kijk uit dat je niet bevriest.');
INSERT INTO geur (geur_naam, geur_beschrijving) VALUES ('Lively Lavender', 'Ruikt lekker naar de verse was.');

--deksels

INSERT INTO deksel (deksel_kleur) VALUES ('Ocean Blue');
INSERT INTO deksel (deksel_kleur) VALUES ('Strawberry Red');
INSERT INTO deksel (deksel_kleur) VALUES ('Forest Green');
INSERT INTO deksel (deksel_kleur) VALUES ('Honeycomb Yellow');
INSERT INTO deksel (deksel_kleur) VALUES ('Heavenly White');

--accessoire

INSERT INTO accessoire (accessoire_naam) VALUES ('geen');
INSERT INTO accessoire (accessoire_naam) VALUES ('Verlichte versie');
INSERT INTO accessoire (accessoire_naam) VALUES ('Kerstmuts');
INSERT INTO accessoire (accessoire_naam) VALUES ('Zomer Hoed');

--regio

INSERT INTO regio (regio_naam) VALUES ('Europa');
INSERT INTO regio (regio_naam) VALUES ('Noord-Amerika');
INSERT INTO regio (regio_naam) VALUES ('Afrika');
INSERT INTO regio (regio_naam) VALUES ('Zuid-Amerika');
INSERT INTO regio (regio_naam) VALUES ('Azie');
INSERT INTO regio (regio_naam) VALUES ('Oceanie');
INSERT INTO regio (regio_naam) VALUES ('Antarctica');

--maten

INSERT INTO maten (maten_grootte) VALUES ('S');
INSERT INTO maten (maten_grootte) VALUES ('M');
INSERT INTO maten (maten_grootte) VALUES ('L');
INSERT INTO maten (maten_grootte) VALUES ('XL');

--volledige informatie van een artikel
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



