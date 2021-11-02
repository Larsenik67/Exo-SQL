SELECT p.nom_personnage
FROM personnage p
WHERE p.id_personnage NOT IN (
SELECT DISTINCT(b.id_personnage)
FROM boire b
)