-- INSERT

INSERT INTO account(user_name, password, email, created_on)
VALUES 
('Jose', 'password', 'Jose@gmail.com', CURRENT_TIMESTAMP)

INSERT INTO job(job_name)
VALUES
('Astronaut')

INSERT INTO job(job_name)
VALUES
('President')

INSERT INTO account_job(user_id, job_id, hire_date)
VALUES
(1, 1, CURRENT_TIMESTAMP)

-- UPDATE
UPDATE account
SET last_login = CURRENT_TIMESTAMP

UPDATE account 
SET last_login = created_on


UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id

UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email, created_on, last_login

-- DELETE
INSERT INTO job(job_name)
VALUES('Cowboy')

DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id, job_name

-- ALTER 
CREATE TABLE information(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
)

ALTER TABLE information --changing table name
RENAME TO new_info

ALTER TABLE new_info
RENAME COLUMN person TO people

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL


-- DROP
ALTER TABLE new_info
DROP COLUMN people

ALTER TABLE new_info
DROP COLUMN IF EXISTS people

-- Check Constraints
CREATE TABLE employees(
	emp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthdate DATE CHECK (birthdate > '1990-01-01'),
	hire_date DATE CHECK (hire_date > birthdate),
	salary INTEGER CHECK (salary > 0)
)

INSERT INTO employees(
	first_name,
	last_name,
	birthdate,
	hire_date,
	salary
)
VALUES(
	'Sarah',
	'Vish',
	'1990-11-03',
	'2010-01-01',
	2100
)

