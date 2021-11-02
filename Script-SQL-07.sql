SELECT i.nom_ingredient, i.cout_ingredient, c.qte
FROM composer c
INNER JOIN potion p ON c.id_potion = p.id_potion
INNER JOIN ingredient i ON c.id_ingredient = i.id_ingredient
WHERE p.id_potion = 3