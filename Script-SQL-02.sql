SELECT nom_lieu, COUNT(l.nom_lieu) AS nbPersonnage
FROM personnage p
INNER JOIN lieu l ON p.id_lieu = l.id_lieu
GROUP BY p.id_lieu
ORDER BY nbPersonnage