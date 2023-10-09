create database project;
use project;


drop table if exists goldusers_signup;
CREATE TABLE goldusers_signup(userid integer,gold_signup_date date); 



drop table if exists users;
CREATE TABLE users(userid integer,signup_date date); 



drop table if exists sales;
CREATE TABLE sales(userid integer,created_date date,product_id integer); 






drop table if exists product;
CREATE TABLE product(product_id integer,product_name text,price integer); 






