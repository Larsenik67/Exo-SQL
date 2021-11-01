SELECT nom_type_casque, SUM(cout_casque) AS prix
FROM casque c
INNER JOIN type_casque tc ON c.id_type_casque = tc.id_type_casque
GROUP BY nom_type_casque
ORDER BY prix DESC