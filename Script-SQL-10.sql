SELECT b.nom_bataille, SUM(pc.qte) AS total
FROM prendre_casque pc
INNER JOIN bataille b ON pc.id_bataille = b.id_bataille
GROUP BY b.id_bataille
HAVING total >= ALL (
	SELECT SUM(pc.qte) AS nbCasque
	FROM prendre_casque pc
	GROUP BY pc.id_bataille)