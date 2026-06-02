CREATE TABLE students (
    id            SERIAL PRIMARY KEY,
    first_name    TEXT          NOT NULL,
    last_name     TEXT          NOT NULL,
    email         TEXT          NOT NULL UNIQUE,
    city          TEXT          NOT NULL,
    date_of_birth DATE          NOT NULL,
    tuition_fee   NUMERIC(10, 2) NOT NULL,
    scholarship   NUMERIC(10, 2) NOT NULL DEFAULT 0,
    score         NUMERIC(5, 2),                 -- NULL = not yet assessed
    is_active     BOOLEAN       NOT NULL DEFAULT TRUE,
    created_at    TIMESTAMPTZ   NOT NULL DEFAULT NOW()
);


INSERT INTO students
    (first_name, last_name, email, city, date_of_birth, tuition_fee, scholarship, score, is_active, created_at) VALUES
('Amara',       'Okeke',     'amara@example.com',       'Port Harcourt', '2002-04-12', 150000,     0, 88.0, TRUE,  NOW() - INTERVAL '58 days'),
('Chinedu',     'Eze',       'chinedu@example.com',     'Lagos',         '2001-09-30', 120000,     0, 72.5, TRUE,  NOW() - INTERVAL '55 days'),
('Fatima',      'Bello',     'fatima@example.com',      'Abuja',         '2003-01-15', 200000, 50000, 91.0, TRUE,  NOW() - INTERVAL '52 days'),
('Tunde',       'Adeyemi',   'tunde@example.com',       'Lagos',         '2000-07-22',  80000,     0, 65.0, TRUE,  NOW() - INTERVAL '50 days'),
('Ngozi',       'Umeh',      'ngozi@example.com',       'Enugu',         '2002-11-04', 120000,     0, 79.5, TRUE,  NOW() - INTERVAL '47 days'),
('Aisha',       'Mohammed',  'aisha@example.com',       'Kano',          '2001-03-18', 150000,     0, 84.0, TRUE,  NOW() - INTERVAL '45 days'),
('Olamide',     'Bakare',    'olamide@example.com',     'Lagos',         '1999-12-25',  80000,     0, 58.0, TRUE,  NOW() - INTERVAL '42 days'),
('Emeka',       'Okafor',    'emeka@example.com',       'Port Harcourt', '2003-06-08', 200000, 30000, 95.5, TRUE,  NOW() - INTERVAL '40 days'),
('Hauwa',       'Ibrahim',   'hauwa@example.com',       'Abuja',         '2002-08-14', 120000,     0, 70.0, TRUE,  NOW() - INTERVAL '38 days'),
('Bayo',        'Ogundimu',  'bayo@example.com',        'Ibadan',        '2000-02-27',  80000,     0, 45.0, FALSE, NOW() - INTERVAL '36 days'),
('Chioma',      'Nwosu',     'chioma@example.com',      'Enugu',         '2001-10-19', 150000,     0, 82.5, TRUE,  NOW() - INTERVAL '34 days'),
('Yusuf',       'Aliyu',     'yusuf@example.com',       'Kano',          '2003-05-03', 120000,     0, 77.0, TRUE,  NOW() - INTERVAL '32 days'),
('Funke',       'Adesanya',  'funke@example.com',       'Lagos',         '2002-07-30', 150000, 20000, 89.0, TRUE,  NOW() - INTERVAL '30 days'),
('Ifeanyi',     'Okeke',     'ifeanyi@example.com',     'Port Harcourt', '1999-11-11',  80000,     0, 63.5, TRUE,  NOW() - INTERVAL '28 days'),
('Khadija',     'Sani',      'khadija@example.com',     'Abuja',         '2004-02-09', 200000, 25000, 92.0, TRUE,  NOW() - INTERVAL '26 days'),
('Segun',       'Olatunji',  'segun@example.com',       'Ibadan',        '2000-08-22',  80000,     0, 51.0, FALSE, NOW() - INTERVAL '24 days'),
('Nneka',       'Anyanwu',   'nneka@example.com',       'Enugu',         '2001-04-15', 150000,     0, 86.0, TRUE,  NOW() - INTERVAL '22 days'),
('Maryam',      'Garba',     'maryam@example.com',      'Kano',          '2003-09-28', 120000,     0, 74.5, TRUE,  NOW() - INTERVAL '20 days'),
('Tobi',        'Ajayi',     'tobi@example.com',        'Lagos',         '2002-01-06', 120000,     0, 68.0, TRUE,  NOW() - INTERVAL '18 days'),
('Ikechukwu',   'Onuoha',    'ikechukwu@example.com',   'Port Harcourt', '2000-05-17', 200000, 40000, 90.5, TRUE,  NOW() - INTERVAL '16 days'),
('Zainab',      'Yusuf',     'zainab@example.com',      'Abuja',         '2004-07-23', 150000,     0, 81.0, TRUE,  NOW() - INTERVAL '14 days'),
('Wale',        'Akinola',   'wale@example.com',        'Ibadan',        '1998-10-30',  80000,     0, 49.5, FALSE, NOW() - INTERVAL '12 days'),
('Adaeze',      'Obi',       'adaeze@example.com',      'Port Harcourt', '2003-12-12', 200000, 30000, NULL, TRUE,  NOW() - INTERVAL '10 days'),
('Halima',      'Suleiman',  'halima@example.com',      'Kano',          '2002-03-05', 120000,     0, NULL, TRUE,  NOW() - INTERVAL '8 days'),
('Damilola',    'Adebayo',   'damilola@example.com',    'Lagos',         '2001-06-21', 150000,     0, NULL, TRUE,  NOW() - INTERVAL '7 days'),
('Chukwuemeka', 'Okwu',      'chukwuemeka@example.com', 'Enugu',         '2000-09-09',  80000,     0, NULL, FALSE, NOW() - INTERVAL '6 days'),
('Bilkisu',     'Aminu',     'bilkisu@example.com',     'Abuja',         '2003-11-26', 200000, 20000, NULL, TRUE,  NOW() - INTERVAL '5 days'),
('Kunle',       'Adeleke',   'kunle@example.com',       'Lagos',         '2001-02-14', 120000,     0, NULL, TRUE,  NOW() - INTERVAL '4 days'),
('Obinna',      'Eze',       'obinna@example.com',      'Port Harcourt', '2002-05-31', 150000,     0, NULL, TRUE,  NOW() - INTERVAL '2 days'),
('Rashida',     'Lawal',     'rashida@example.com',     'Kano',          '1999-08-07', 120000, 15000, NULL, TRUE,  NOW() - INTERVAL '1 day');





select * from students

-- conditional functions and expressions

-- coalesce and nullif functions--

select  coalesce(20,null)

select  coalesce(null,null,-10)
select  coalesce(null,90,null,-10)

select score, coalesce(score,0) from students

select count(*),count(score) from students

select count(score), sum(score),avg(score),1653.0/22 from students
select count(score), sum(score),avg(score),avg(coalesce(score,0)) 
from students

-- select score,coalesce(score,avg(score))
-- from students

-- select score,coalesce(score,(select avg(score) from students))
-- from students

-- select 1653/22

select nullif(null,30),nullif(30,null), 
nullif(null,null),nullif(30,20),nullif(20,30),nullif(30,30),
nullif(nullif(30,20),30)

select score from students

select score, nullif(score,95.50) from students

select score, coalesce(nullif(score,95.50),100) from students

select score, 
coalesce(score,-10),
nullif(coalesce(score,-10),95.50),
coalesce(nullif(coalesce(score,-10),95.50),100),
nullif(coalesce(nullif(coalesce(score,-10),95.50),100),-10)
from students

select 
	score,
	case 
		when score =95.50 then 100
		-- when score is null then -1000
		else score
	end new_score
from students













 