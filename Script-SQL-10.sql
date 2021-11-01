SELECT nom_bataille, SUM(qte) AS nbCasque
FROM prendre_casque pc
INNER JOIN bataille b ON pc.id_bataille = b.id_bataille
GROUP BY nom_bataille
ORDER BY nbCasque DESC
LIMIT 1