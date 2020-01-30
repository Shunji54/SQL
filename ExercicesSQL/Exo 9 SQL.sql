SELECT COUNT(resilies) AS "Nombre de non resilies", 
AVG(sinistre) AS "Moyenne du sinistre",
(SELECT COUNT(resilies) FROM dataia_nancy WHERE resilies=0 AND sinistre > (SELECT AVG(sinistre) FROM dataia_nancy)) AS "Résultat exo"
FROM dataia_nancy 
WHERE resilies = 0;