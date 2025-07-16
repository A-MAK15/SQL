
-- NULLIF
CREATE TABLE depts(
	first_name VARCHAR(50),
	department VARCHAR(50)
)

INSERT INTO depts(
	first_name,
	department
)
VALUES
	('Vinton', 'A'),
	('Lauren', 'A'),
	('Claire', 'B');

SELECT * FROM depts


SELECT (
SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END) / NULLIF(SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END),0)
) AS dept_ratio
FROM depts

DELETE FROM depts 
WHERE department = 'B'


-- VIEWS
CREATE VIEW customer_info AS
SELECT first_name, last_name, address FROM customer
INNER JOIN address
ON customer.address_id = address.address_id

SELECT * FROM customer_info

CREATE OR REPLACE VIEW customer_info AS
SELECT first_name, last_name, address, district FROM customer
INNER JOIN address
ON customer.address_id = address.address_id

DROP VIEW IF EXIST customer_info

ALTER VIEW customer_info RENAME to c_info

SELECT * FROM c_info

