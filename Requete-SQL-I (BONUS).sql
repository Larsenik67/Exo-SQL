SELECT tp.nom_type_casque, GROUP_CONCAT(c.nom_casque ORDER BY c.nom_casque)
FROM casque c
INNER JOIN type_casque tp ON c.id_type_casque = tp.id_type_casque
GROUP BY tp.nom_type_casque
ORDER BY tp.nom_type_casque