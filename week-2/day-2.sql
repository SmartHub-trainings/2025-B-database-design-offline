select * from students

select count(*) from students

select count(distinct  last_name) from students
select * from students

-- string/text   functions---

select * from students

select id, first_name,upper(first_name), last_name,lower(last_name)
from students

select id, first_name as "First Name",
		upper(first_name) "Modified First  Name", 
		last_name,lower(last_name) mod_last_name
from students


select id , concat(last_name,first_name) from students

select id , concat(last_name,' ',first_name) from students

select id , last_name||first_name from students
select id , last_name||' '||first_name from students
select id, last_name, length(last_name), replace(last_name,'e','aa') 
from students

select '     Danny'
select length('     Danny')
select length(trim('     Danny'))

select * from students

select count(is_active) from students
group by is_active

select is_active,count(last_name) from students
group by is_active

-- update students set is_active =null where id =5

select 
	date_of_birth,
	extract(year from date_of_birth),  
	extract(month from date_of_birth),
	extract(day from date_of_birth)
from students

select extract(year from date_of_birth),count(first_name)
from students 
group by extract(year from date_of_birth)
order by extract(year from date_of_birth) desc

select extract(year from date_of_birth),count(first_name)
from students 
group by extract(year from date_of_birth)
order by count(first_name) desc limit 1




