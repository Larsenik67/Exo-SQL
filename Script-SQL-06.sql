SELECT nom_potion, SUM(cout_ingredient * qte) AS prix
FROM composer c
INNER JOIN potion p ON c.id_potion = p.id_potion
INNER JOIN ingredient i ON c.id_ingredient = i.id_ingredient
GROUP BY nom_potion
ORDER BY prix DESC