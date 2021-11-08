SELECT p.nom_personnage, LOWER(CONCAT(SUBSTRING(p.nom_personnage, 1, 3), ".", SUBSTRING(l.nom_lieu, 1, 4), "@gaulois.fr")) AS mail
FROM personnage p 
INNER JOIN lieu l ON p.id_lieu = l.id_lieu
ORDER BY p.nom_personnage