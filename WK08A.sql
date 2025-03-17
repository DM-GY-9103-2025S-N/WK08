-- Practice

SELECT COUNT (*) FROM Artists;

SELECT *
FROM Artists
LIMIT 10;

SELECT DisplayName, Nationality
FROM Artists
LIMIT 10;

SELECT DisplayName || " (" || Nationality || ")"
FROM Artists
ORDER BY ConstituentID
LIMIT 10;

SELECT DISTINCT(Gender)
FROM Artists
ORDER BY Gender;

SELECT Gender,COUNT(*)
FROM Artists
GROUP BY Gender
ORDER BY Gender;

SELECT DisplayName, Nationality
FROM Artists
WHERE Nationality = "French"
ORDER BY ConstituentID
LIMIT 10;
