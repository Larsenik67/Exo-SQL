SELECT nom_ingredient, cout_ingredient, qte
FROM composer c
INNER JOIN potion p ON c.id_potion = p.id_potion
INNER JOIN ingredient i ON c.id_ingredient = i.id_ingredient
WHERE nom_potion = 'Santé'