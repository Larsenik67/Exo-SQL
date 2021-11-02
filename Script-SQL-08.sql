SELECT p.nom_personnage, SUM(qte) AS total
FROM prendre_casque pc
INNER JOIN personnage p ON pc.id_personnage = p.id_personnage
INNER JOIN bataille b ON pc.id_bataille = b.id_bataille
WHERE b.nom_bataille = "Bataille du village gaulois" 
GROUP BY p.id_personnage
HAVING total >= ALL (
	SELECT SUM(qte) AS quantite
	FROM prendre_casque pc
	INNER JOIN personnage p ON pc.id_personnage = p.id_personnage
	INNER JOIN bataille b ON pc.id_bataille = b.id_bataille
	WHERE b.nom_bataille = "Bataille du village gaulois"
	GROUP BY p.id_personnage)