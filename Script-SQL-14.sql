SELECT nom_personnage
FROM personnage p
WHERE NOT EXISTS (
SELECT nom_personnage
FROM boire b
WHERE p.	id_personnage = b.id_personnage
)
GROUP BY nom_personnage