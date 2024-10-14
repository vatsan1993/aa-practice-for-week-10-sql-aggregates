-- Write a query to determine the number of cats stored in the database.
.headers on 

select * from cats;

select count(*) as COUNT from cats;

-- Write a query for the oldest cat, and the year it was born.
select name, min(birth_year) from cats;

-- Write a query for the youngest cat, and the year it was born.

select name, max(birth_year) from cats;

-- bonus
-- Write a query to list the number of toys per cat.
select cats.name, count(*)
from cats
    join toys
where
    cats.id = toys.cat_id
group by
    cats.name;

-- Write a query to determine which cats have been "spoiled" with two or more toys.

select cats.name, count(*) as count
from cats
    join toys
where
    cats.id = toys.cat_id
group by
    cats.name
having
    count >= 2;
