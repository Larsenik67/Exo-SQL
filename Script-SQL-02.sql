SELECT l.nom_lieu, COUNT(l.id_lieu) AS nbPersonnage
FROM personnage p
INNER JOIN lieu l ON p.id_lieu = l.id_lieu
GROUP BY l.id_lieu
ORDER BY nbPersonnage DESC