SELECT p.nom_personnage, SUM(pc.qte) AS total
FROM prendre_casque pc
INNER JOIN personnage p ON pc.id_personnage = p.id_personnage
INNER JOIN bataille b ON pc.id_bataille = b.id_bataille
WHERE b.id_bataille = 1 
GROUP BY p.id_personnage
HAVING total >= ALL (
	SELECT SUM(pc.qte) AS quantite
	FROM prendre_casque pc
	WHERE pc.id_bataille = 1 
	GROUP BY pc.id_personnage)