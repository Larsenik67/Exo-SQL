SELECT nom_personnage
FROM personnage p
WHERE NOT EXISTS (
SELECT ab.id_personnage
FROM autoriser_boire ab
INNER JOIN potion po ON ab.id_potion = po.id_potion
WHERE p.id_personnage = ab.id_personnage AND nom_potion = "Magique"
)