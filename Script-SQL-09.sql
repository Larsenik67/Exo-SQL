SELECT p.nom_personnage, SUM(b.dose_boire) AS bu
FROM boire b
INNER JOIN personnage p ON b.id_personnage = p.id_personnage
GROUP BY p.id_personnage
ORDER BY bu DESC