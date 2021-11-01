SELECT nom_lieu, COUNT(nom_personnage) AS nbHabitant
FROM personnage p
INNER JOIN lieu l ON p.id_lieu = l.id_lieu
WHERE nom_lieu != 'Village gaulois'
GROUP BY nom_lieu
ORDER BY nbHabitant DESC