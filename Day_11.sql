-- Self Join
SELECT f1.title, f2.title, f1.length
FROM film AS f1
INNER JOIN film AS f2 ON
f1.film_id != f2.film_id
AND f1.length = f2.length


-- Assessment
-- bookings, members, facilities
-- 1. 
SELECT * FROM cd.facilities
-- SELECT * FROM cd.bookings
-- SELECT * FROM cd.members

--2.
SELECT name, membercost FROM cd.facilities

--3.
SELECT * FROM cd.facilities
WHERE membercost > 0
LIMIT 5

-- 4.
SELECT * FROM cd.facilities
WHERE membercost > 0
AND membercost < monthlymaintenance*(0.02)


--5.
SELECT * FROM cd.facilities
WHERE name LIKE '%Tennis%' 

--6.
SELECT * FROM cd.facilities
WHERE facid IN (1,5)

--7.
SELECT memid, surname, firstname, joindate FROM cd.members
WHERE joindate > '2012-09-01'

--8.
SELECT DISTINCT(surname) FROM cd.members
ORDER BY surname ASC
LIMIT 10

-- 9.
SELECT DISTINCT(joindate) FROM cd.members
ORDER BY joindate DESC
LIMIT 1

-- 10.
SELECT * FROM cd.facilities
WHERE guestcost >= 10

-- 11.
SELECT facid, SUM(slots)  FROM cd.bookings
WHERE starttime BETWEEN '2012-09-01' AND '2012-09-30'
GROUP BY 1

-- 12.
SELECT facid, SUM(slots)  FROM cd.bookings
GROUP BY 1
HAVING SUM(slots) > 1000

-- 13.
SELECT starttime, name FROM cd.bookings A
LEFT JOIN cd.facilities B
ON A.facid = B.facid
WHERE name ILIKE '%Tennis Court%'
AND DATE(starttime) = '2012-09-21'
ORDER BY starttime

-- 14.
SELECT starttime FROM cd.bookings A
LEFT JOIN cd.members B
ON A.memid = B.memid
WHERE firstname = 'David'
AND surname = 'Farrell'


SELECT * FROM cd.bookings
SELECT * FROM cd.members

