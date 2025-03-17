-- Exercises

-- Look at EndDate values
SELECT EndDate
FROM Artists
GROUP BY EndDate
ORDER BY EndDate;

-- (a) Artist Count
SELECT  COUNT(*)
FROM Artists
WHERE EndDate = 0;

-- (a) Artists Alive
SELECT COUNT(*)
FROM Artists
WHERE EndDate = 0 AND (BeginDate > 0);

-- (b) Women from Poland
SELECT COUNT(*)
FROM Artists
WHERE Nationality LIKE "polish" AND (Gender LIKE '%emale%' OR Gender LIKE '%wom%');

-- (c) Top countries by Nationality
SELECT * FROM (
	SELECT Nationality, COUNT(*) AS Total
	FROM Artists
	WHERE NOT (Nationality = "NULL")
	GROUP BY Nationality
	ORDER BY Total DESC
	LIMIT 5
) Q
ORDER BY Nationality;

-- (c) Top countries by Count
SELECT Nationality, COUNT(*) AS Total
FROM Artists
WHERE NOT (Nationality = "NULL")
GROUP BY Nationality
ORDER BY Total DESC
LIMIT 5;

-- (d) American gender breakdown
SELECT Gender, COUNT(*) AS Total
FROM Artists
WHERE (Nationality = "American")
GROUP BY Gender
ORDER BY Total DESC;

-- (e) average age of living mexican artists
SELECT AVG(Age) AS "Average Age" FROM (
	SELECT DisplayName, 2025 - BeginDate AS Age
	FROM Artists
	WHERE (Nationality = "Mexican") AND (EndDate = 0) AND (BeginDate > 1900)
);

SELECT AVG(2025 - BeginDate) AS "Average Age"
FROM Artists
WHERE (Nationality = "Mexican") AND (EndDate = 0) AND (BeginDate > 1900);

-- Debug age
SELECT DisplayName,BeginDate, EndDate, Nationality,(2025-EndDate) AS Age
FROM Artists
WHERE Nationality = "Mexican" AND (EndDate = 0) AND (BeginDate > 0)
ORDER BY BeginDate;


-- (f) Early American Artists
SELECT DisplayName, BeginDate, EndDate, Nationality
FROM Artists
WHERE ((Nationality = "American") OR (Nationality = "Canadian")) AND (BeginDate < 1900) AND (BeginDate > 0)
ORDER BY BeginDate;

-- Check Canada
SELECT DisplayName, BeginDate, EndDate, Nationality
FROM Artists
WHERE ((Nationality = "American") OR (Nationality = "Canadian")) AND (BeginDate < 1900) AND (BeginDate > 0)
ORDER BY Nationality DESC, BeginDate;

-- (g) Young Living Iranian Artists
SELECT DisplayName, BeginDate, EndDate, Nationality
FROM Artists
WHERE (Nationality = "Iranian") AND (BeginDate > 1985) AND (EndDate = 0);

-- (h) Japanese or Korean pen names
SELECT ConstituentID, DisplayName, Nationality
FROM Artists
WHERE ((Nationality = "Japanese") OR (Nationality = "Korean")) AND LOWER(DisplayName) LIKE "%pen %";

-- (i) Missing birth year
SELECT COUNT(*)
FROM Artists
WHERE (BeginDate = 0);
