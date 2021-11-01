SELECT nom_potion, nom_ingredient
FROM composer c
INNER JOIN potion p ON c.id_potion = p.id_potion
INNER JOIN ingredient i ON c.id_ingredient = i.id_ingredient
WHERE nom_ingredient = 'Poisson frais'