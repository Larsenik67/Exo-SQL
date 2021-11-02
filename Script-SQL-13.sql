SELECT l.nom_lieu, COUNT(p.nom_personnage) AS nbHabitant
FROM personnage p
INNER JOIN lieu l ON p.id_lieu = l.id_lieu
WHERE l.id_lieu != 1
GROUP BY l.id_lieu
HAVING nbHabitant >= ALL (
	SELECT COUNT(p.nom_personnage)
	FROM personnage p
	WHERE p.id_lieu != 1
	GROUP BY p.id_lieu)