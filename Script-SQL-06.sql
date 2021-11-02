SELECT p.nom_potion, SUM(l.cout_ingredient * c.qte) AS prix
FROM composer c
INNER JOIN potion p ON c.id_potion = p.id_potion
INNER JOIN ingredient i ON c.id_ingredient = i.id_ingredient
GROUP BY p.id_potion
ORDER BY prix DESC