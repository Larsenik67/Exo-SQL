SELECT nom_personnage, nom_specialite, adresse_personnage, nom_lieu
FROM personnage p
INNER JOIN specialite s ON p.id_specialite = s.id_specialite
INNER JOIN lieu l ON p.id_lieu = l.id_lieu
ORDER BY l.id_lieu, nom_personnage