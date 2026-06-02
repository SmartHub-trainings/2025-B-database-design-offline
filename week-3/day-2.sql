select * from students

-- binning/segmentation or bucketing ---
select id,first_name, last_name , score from students
select id,last_name||' '||first_name , score from students

SELECT 
	id,
	last_name||' '||first_name as full_name ,
	score,
	case 
		when  score >=65 then 'Passed'
		else 'Failed'
	end as Remark
FROM 
	students

-- sub queries--
select avg(score) from students

select * from students
where score > 75.14

-- select * from students
-- where score > avg(score)

select * from students
where score > (select avg(score) from students)

select id from students where score >85

select * from students 
where id in (select id from students where score >85)

select *,(select avg(score) from students) 
from students

select * from students


select is_active,count(*), avg(score) from students 
group by is_active

select id, first_name, score, is_active 
from students as s
where score > (select avg(score) from students  where is_active=s.is_active  )


