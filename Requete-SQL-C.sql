DELETE FROM casque
WHERE id_casque NOT IN (
    SELECT pc.id_casque
    FROM prendre_casque pc
) AND id_type_casque = 2