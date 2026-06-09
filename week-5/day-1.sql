select * from students


drop table courses

CREATE TABLE courses (
    id          SERIAL PRIMARY KEY,
    student_id  INTEGER REFERENCES students(id) ON DELETE CASCADE,
    title       TEXT          NOT NULL,
    instructor  TEXT          NOT NULL,
    fee_paid    NUMERIC(10, 2) NOT NULL DEFAULT 0,
    grade       NUMERIC(4, 1),
    enrolled_at DATE          NOT NULL DEFAULT CURRENT_DATE
);

INSERT INTO courses (student_id, title, instructor, fee_paid, grade, enrolled_at) VALUES
-- Amara (id 1, Port Harcourt) -- 3 courses, all graded
(1,    'Introduction to SQL',           'Dr. Adaeze Obi',   35000.00, 88.0, '2025-09-15'),
(1,    'Python for Beginners',          'Dr. Adaeze Obi',   35000.00, 91.5, '2025-10-01'),
(1,    'Data Analysis with Pandas',     'Dr. Adaeze Obi',   45000.00, 85.0, '2025-11-10'),
-- Emeka (id 8, Port Harcourt) -- top scorer, 2 courses
(8,    'Machine Learning Fundamentals', 'Dr. Tunji Bello',  60000.00, 94.0, '2025-09-20'),
(8,    'Deep Learning with PyTorch',    'Dr. Tunji Bello',  75000.00, 96.5, '2025-11-05'),
-- Khadija (id 15, Abuja) -- 2 courses, one not yet graded
(15,   'Backend with FastAPI',          'Ms. Halima Sani',  60000.00, 90.0, '2025-09-25'),
(15,   'Cloud Computing Basics',        'Mr. Kunle Falade', 45000.00, NULL, '2026-01-08'),
-- Adaeze (id 23, Port Harcourt) -- score is NULL in students, courses also ungraded
(23,   'Introduction to SQL',           'Dr. Adaeze Obi',   35000.00, NULL, '2026-01-10'),
(23,   'Statistics for Data Science',   'Dr. Adaeze Obi',   45000.00, NULL, '2026-01-12'),
-- Six students with 1 course each
(2,    'Python for Beginners',          'Dr. Adaeze Obi',   35000.00, 75.0, '2025-10-20'),
(3,    'Frontend Web Development',      'Mr. Bayo Ade',     45000.00, 89.5, '2025-09-30'),
(5,    'UI/UX Design',                  'Mr. Bayo Ade',     35000.00, 78.0, '2025-10-15'),
(13,   'Frontend Web Development',      'Mr. Bayo Ade',     45000.00, 87.0, '2025-09-22'),
(17,   'Mobile App Development',        'Mr. Bayo Ade',     60000.00, 82.5, '2025-11-01'),
(19,   'DevOps Essentials',             'Mr. Kunle Falade', 50000.00, 70.0, '2025-10-25'),
-- 2 orphan courses (no student enrolled yet -- for RIGHT / FULL OUTER JOIN)
(NULL, 'Cybersecurity 101',             'Ms. Halima Sani',      0.00, NULL, '2026-01-15'),
(NULL, 'Advanced Postgres',             'Dr. Adaeze Obi',       0.00, NULL, '2026-01-18');

-- select * from courses

--1 . List every student with the title of each course they're enrolled in.

select * from students s
join courses c
on c.student_id= s.id

select * from students s
inner join courses c
on c.student_id= s.id

select s.id,first_name,last_name,title from students s
inner join courses c
on c.student_id= s.id

select s.id,first_name,last_name,title from students s left join courses c
on c.student_id= s.id


select s.id,first_name,last_name,title from students s
right join courses c
on c.student_id= s.id


-- 2. Show student name, course title, 
--  and instructor for every enrolment, sorted by student.

select s.id,last_name||' '||first_name name
,title,instructor from students s
inner join courses c
on c.student_id= s.id
order by s.id


-- 3. List courses taken by students from Lagos only.

select * from students limit 3

select s.id,last_name||' '||first_name name,title from students s
inner join courses c
on c.student_id= s.id
where city='Lagos'


-- 4. Find students who have not enrolled in any course

select s.id,first_name,title from students s
left join courses c
on s.id =c.student_id
where student_id is null






















