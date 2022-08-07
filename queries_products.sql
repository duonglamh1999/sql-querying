-- Comments in SQL Start with dash-dash --
INSERT INTO products(name,price,can_be_returned)
VALUES ('chair',44,'f');
INSERT INTO products(name,price,can_be_returned)
VALUES ('stool',25.99,'t');
INSERT INTO products(name,price,can_be_returned)
VALUES ('table',124,'f');


SELECt *
FROM products;

SELECT name FROM products;

SELECT name,price FROM products;

INSERT INTO products(name,price,can_be_returned)
VALUES ('box',4,'f');

SELECT * FROM products WHERE can_be_returned;

SELECT * FROM products WHERE price<44;

SELECT * FROM products WHERE price between 22.5 and 99.99;

UPDATE products SET price = price-20;

DELETE FROM products WHERE price<25

UPDATE products SET price = price+20;

UPDATE products SET can_be_returned ='t';

