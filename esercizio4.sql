/*
drop table if exists meal;
drop table if exists ingredient;
drop table if exists cheap_meal;
drop table if exists vegan_ingredient;
drop view if exists expensive_meal;
drop view if exists lactose_free_ingredient;


create table meal (
name varchar(255),
price double,
calories int
); 

INSERT INTO meal (name, price, calories)
VALUES
  ('Sopa de Tortilla', 8.75, 320),
  ('Bistecca di Manzo', 24.99, 950),
  ('Tempura Misto', 14.25, 600),
  ('Spaghetti alla Vongole', 16.50, 780),
  ('Taco al Maiale', 11.75, 480),
  ('Sushi Roll Assortiti', 17.99, 620),
  ('Pollo alla Parmigiana', 14.75, 880),
  ('Panino al Pollo Grigliato', 9.49, 410),
  ('Hamburger con Bacon', 11.99, 750),
  ('Pesce al Forno', 18.25, 720),
  ('Riso Fritto', 11.50, 650),
  ('Pasta al Pesto', 13.75, 720),
  ('Salmone Affumicato', 19.99, 500),
  ('Insalata Greca', 9.25, 380),
  ('Taco al Gamberetto', 12.50, 550),
  ('Lasagna', 15.25, 850),
  ('Sushi Nigiri Combo', 20.75, 500),
  ('Panino con Tacchino', 8.99, 420),
  ('Hamburger Vegetariano', 10.99, 550),
  ('Pancakes', 7.50, 450),
   ('Pizza Margherita', 12.99, 800),
  ('Pasta Carbonara', 14.99, 950),
  ('Insalata Caesar', 8.49, 350),
  ('Hamburger', 9.99, 700),
  ('Sushi Sashimi Combo', 18.50, 550),
  ('Pollo al Curry', 15.99, 850),
  ('Bistecca alla Griglia', 22.99, 900),
  ('Taco al Pollo', 10.25, 450),
  ('Salmone alla Griglia', 16.75, 600),
  ('Panino Vegetariano', 7.99, 400);
  
  
  create table cheap_meal as 
  select name,price,calories 
  from meal
  where price<15;
  
  
  create table ingredient (
  name varchar(255),
  contains_lactose boolean,
  vegetarian boolean,
  vegan boolean,
   gluten_free boolean
);

INSERT INTO ingredient (name, contains_lactose, vegetarian, vegan, gluten_free)
VALUES
  ('Pomodori', false, true, true, true),
  ('Cipolle', false, true, true, true),
  ('Peperoni', false, true, true, true),
  ('Carote', false, true, true, true),
  ('Patate', false, true, true, true),
  ('Insalata', false, true, true, true),
  ('Zucchine', false, true, true, true),
  ('Funghi', false, true, true, true),
  ('Pasta', false, true, true, false),
  ('Riso', false, true, true, true),
  ('Salmone', false, false, false, true),
  ('Pollo', false, false, false, true),
  ('Manzo', false, false, false, true),
  ('Gamberetti', false, false, false, true),
  ('Formaggio', true, true, false, true),
  ('Latte', true, false, false, true),
  ('Uova', false, true, false, true),
  ('Farina', false, true, false, false),
  ('Pane', false, true, false, false),
  ('Lenticchie', false, true, true, true);
  
  create table vegan_ingredient as
select *
from ingredient
where vegan is true;

create view expensive_meal as
select *
from meal 
where price>=15;

create view lactose_free_ingredient as
select *
from ingredient 
where contains_lactose is false;

create table high_calories_meal as
select * 
from meal 
where calories>=650;

*/



select * from meal;
select * from cheap_meal ;
select * from ingredient;
select * from vegan_ingredient;
select * from expensive_meal;
select * from lactose_free_ingredient;
select * from high_calories_meal;

