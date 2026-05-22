-- from bokku_mart
select * from products

select sum(cost_price) from products
select avg(cost_price) from products
select count(*), sum(cost_price),avg(cost_price) from products

select round(3.534,2)
select round(3.534,1)
select round(3.534)
select abs(4.5)
select abs(-4.5)
select trunc(3.5664)

select count(*), sum(cost_price),round(avg(cost_price)) from products
select count(*), sum(cost_price),floor(avg(cost_price)) from products