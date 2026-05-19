-- create database school_management
-- create database victoria_high_school

-- drop table students

CREATE TABLE students (
    id            SERIAL PRIMARY KEY,
    first_name    TEXT        NOT NULL,
    last_name     TEXT        NOT NULL,
    email         TEXT        NOT NULL UNIQUE,
    date_of_birth DATE        NOT NULL,
    is_active     BOOLEAN     NOT NULL DEFAULT TRUE,
    created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO students (first_name, last_name, email, date_of_birth, is_active, created_at) VALUES
('Amara',       'Okeke',     'amara@example.com',       '2002-04-12', TRUE,  NOW() - INTERVAL '58 days'),
('Chinedu',     'Eze',       'chinedu@example.com',     '2001-09-30', TRUE,  NOW() - INTERVAL '55 days'),
('Fatima',      'Bello',     'fatima@example.com',      '2003-01-15', TRUE,  NOW() - INTERVAL '52 days'),
('Tunde',       'Adeyemi',   'tunde@example.com',       '2000-07-22', TRUE,  NOW() - INTERVAL '50 days'),
('Ngozi',       'Umeh',      'ngozi@example.com',       '2002-11-04', TRUE,  NOW() - INTERVAL '47 days'),
('Aisha',       'Mohammed',  'aisha@example.com',       '2001-03-18', TRUE,  NOW() - INTERVAL '45 days'),
('Olamide',     'Bakare',    'olamide@example.com',     '1999-12-25', TRUE,  NOW() - INTERVAL '42 days'),
('Emeka',       'Okafor',    'emeka@example.com',       '2003-06-08', TRUE,  NOW() - INTERVAL '40 days'),
('Hauwa',       'Ibrahim',   'hauwa@example.com',       '2002-08-14', TRUE,  NOW() - INTERVAL '38 days'),
('Bayo',        'Ogundimu',  'bayo@example.com',        '2000-02-27', FALSE, NOW() - INTERVAL '36 days'),
('Chioma',      'Nwosu',     'chioma@example.com',      '2001-10-19', TRUE,  NOW() - INTERVAL '34 days'),
('Yusuf',       'Aliyu',     'yusuf@example.com',       '2003-05-03', TRUE,  NOW() - INTERVAL '32 days'),
('Funke',       'Adesanya',  'funke@example.com',       '2002-07-30', TRUE,  NOW() - INTERVAL '30 days'),
('Ifeanyi',     'Okeke',     'ifeanyi@example.com',     '1999-11-11', TRUE,  NOW() - INTERVAL '28 days'),
('Khadija',     'Sani',      'khadija@example.com',     '2004-02-09', TRUE,  NOW() - INTERVAL '26 days'),
('Segun',       'Olatunji',  'segun@example.com',       '2000-08-22', FALSE, NOW() - INTERVAL '24 days'),
('Nneka',       'Anyanwu',   'nneka@example.com',       '2001-04-15', TRUE,  NOW() - INTERVAL '22 days'),
('Maryam',      'Garba',     'maryam@example.com',      '2003-09-28', TRUE,  NOW() - INTERVAL '20 days'),
('Tobi',        'Ajayi',     'tobi@example.com',        '2002-01-06', TRUE,  NOW() - INTERVAL '18 days'),
('Ikechukwu',   'Onuoha',    'ikechukwu@example.com',   '2000-05-17', TRUE,  NOW() - INTERVAL '16 days'),
('Zainab',      'Yusuf',     'zainab@example.com',      '2004-07-23', TRUE,  NOW() - INTERVAL '14 days'),
('Wale',        'Akinola',   'wale@example.com',        '1998-10-30', FALSE, NOW() - INTERVAL '12 days'),
('Adaeze',      'Obi',       'adaeze@example.com',      '2003-12-12', TRUE,  NOW() - INTERVAL '10 days'),
('Halima',      'Suleiman',  'halima@example.com',      '2002-03-05', TRUE,  NOW() - INTERVAL '8 days'),
('Damilola',    'Adebayo',   'damilola@example.com',    '2001-06-21', TRUE,  NOW() - INTERVAL '7 days'),
('Chukwuemeka', 'Okwu',      'chukwuemeka@example.com', '2000-09-09', FALSE, NOW() - INTERVAL '6 days'),
('Bilkisu',     'Aminu',     'bilkisu@example.com',     '2003-11-26', TRUE,  NOW() - INTERVAL '5 days'),
('Kunle',       'Adeleke',   'kunle@example.com',       '2001-02-14', TRUE,  NOW() - INTERVAL '4 days'),
('Obinna',      'Eze',       'obinna@example.com',      '2002-05-31', TRUE,  NOW() - INTERVAL '2 days'),
('Rashida',     'Lawal',     'rashida@example.com',     '1999-08-07', TRUE,  NOW() - INTERVAL '1 day');

select * from students

select *  from students where last_name='Okeke'

select *  from students 
where last_name='Okeke' or last_name='Okafor' or last_name='Bakare' 

-- or --
select *  from students 
where last_name in ('Okeke','Okafor','Bakare')


select * from students where first_name like 'A%'

select * from students where first_name like 'C%'

select * from students where first_name ilike 'C%'

select * from students where first_name ilike 'Chi%'
select * from students where first_name ilike '%a'
select * from students where first_name ilike '%ra'

select * from students 
where first_name ilike '%ai%' or last_name ilike '%ai%'


select * from students 
where first_name ilike 'chi___'

select * from students 
where first_name ilike '_____'

select is_active from students

select distinct is_active from students

select distinct created_at from students
select  distinct last_name from students

select  distinct last_name from students order by last_name

select  distinct last_name from students order by last_name desc









