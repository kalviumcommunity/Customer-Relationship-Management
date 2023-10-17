CREATE DATABASE IF NOT EXISTS project;
USE project;

DROP TABLE IF EXISTS goldusers_signup;
CREATE TABLE goldusers_signup (
    userid INTEGER PRIMARY KEY AUTO_INCREMENT,
    gold_signup_date DATE
);

INSERT INTO goldusers_signup(gold_signup_date) 
VALUES 
    ('2017-09-22'),
    ('2017-04-21');

DROP TABLE IF EXISTS users;
CREATE TABLE users (
    userid INTEGER PRIMARY KEY AUTO_INCREMENT,
    signup_date DATE
);

INSERT INTO users(signup_date) 
VALUES 
    ('2014-09-02'),
    ('2015-01-15'),
    ('2014-04-11');

DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY,
    userid INTEGER,
    created_date DATE,
    product_id INTEGER
);

INSERT INTO sales(sale_id, userid, created_date, product_id)
VALUES 
    (1a, 1, '2017-04-19', 2),
    (2a, 3, '2019-12-18', 1),
    (3a, 2, '2020-07-20', 3),
    (4a, 1, '2019-10-23', 2),
    (5a, 1, '2018-03-19', 3),
    (6a, 3, '2016-12-20', 2),
    (7a, 1, '2016-11-09', 1),
    (8a, 1, '2016-05-20', 3),
    (9a, 2, '2017-09-24', 1),
    (10a, 1, '2017-03-11', 2),
    (1b, 1, '2016-03-11', 1),
    (2b, 3, '2016-11-10', 1),
    (3b, 3, '2017-12-07', 2),
    (4b, 3, '2016-12-15', 2),
    (5b, 2, '2017-11-08', 2),
    (6b, 2, '2018-09-10', 3);

DROP TABLE IF EXISTS product;
CREATE TABLE product (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    price INTEGER
);

INSERT INTO product(product_id, product_name, price) 
VALUES
    (1, 'p1', 980),
    (2, 'p2', 870),
    (3, 'p3', 330);
