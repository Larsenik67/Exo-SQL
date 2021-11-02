SELECT tc.nom_type_casque, COUNT(c.id_casque) AS nb, SUM(c.cout_casque) AS prix
FROM casque c
INNER JOIN type_casque tc ON c.id_type_casque = tc.id_type_casque
GROUP BY tc.nom_type_casque
ORDER BY nb DESC