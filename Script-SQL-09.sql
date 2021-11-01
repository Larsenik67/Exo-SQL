SELECT nom_personnage, SUM(dose_boire) AS bu
FROM boire b
INNER JOIN personnage p ON b.id_personnage = p.id_personnage
GROUP BY nom_personnage
ORDER BY bu DESC