-- Write a query to determine the number of cats stored in the database.
.headers on 

select * from cats;

select count(*) as COUNT from cats;

-- Write a query for the oldest cat, and the year it was born.
select name, min(birth_year) from cats;

-- Write a query for the youngest cat, and the year it was born.

select name, max(birth_year) from cats;
