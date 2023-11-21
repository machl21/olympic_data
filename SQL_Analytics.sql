-- Count athletes for each country 
SELECT Country, COUNT(*) AS TotalAthletes
FROM athletes
GROUP BY Country
ORDER BY TotalAthletes DESC;

-- Calculate the total medals won by each country
SELECT Team_Country, 
SUM(Gold) AS TotalGold,
SUM(Silver) AS TotalSilver,
SUM(Bronze) AS TotalBronze
FROM medals
GROUP BY Team_Country
ORDER BY TotalGold DESC;

--Calculate the average number of entries by gender for each discipline
SELECT Discipline,
AVG(Female) AS AVGFemale,
AVG(Male) AS AVGMale
FROM entriesgender
GROUP BY Discipline;


