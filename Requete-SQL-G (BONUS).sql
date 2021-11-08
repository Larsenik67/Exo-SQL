SELECT p.nom_personnage, LOWER(CONCAT(LEFT(p.nom_personnage, 3), ".", LEFT(l.nom_lieu, 4), "@gaulois.fr")) AS mail
FROM personnage p 
INNER JOIN lieu l ON p.id_lieu = l.id_lieu
ORDER BY p.nom_personnage