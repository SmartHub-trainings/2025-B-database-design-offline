select * from students

-- average score of students-- 
select avg(score) from students

-- find all students that score more than the average--
select * from students where score > 75.14

update students set score =88 where id =1

--  corection--


select 
	* 
from 
	students 
where 
	score > (select avg(score) from students)

-- find the stuent with the highest tuition fee ---
select max(tuition_fee) from students

select * from students 
where tuition_fee = (select max(tuition_fee) from students)

/* find all students having tuition fee 
less than the average tuition fee
*/
select * from students 
where tuition_fee < (select avg(tuition_fee) from students)

/* list all students, alongside the class average and the 
gap between them
*/

select *,(select avg(score) from students) from students
-- select avg(score) from students

select
	*,
	round((select avg(score) from students),2) class_avg,
	abs(score - round((select avg(score) from students),2)) avg_gap
from 
	students

/*
 list all students, alongside the average score in their city
 */

 select * from students limit 4

 select city, avg(score)
 from students 
 group by city

 select avg(score) from students 
 where city = 'Lagos'

 select
 	id,
	 first_name,
	 score,
	 city,
	 round((select avg(score) from students 
 		where city = st.city),1)
 from students st 

 








