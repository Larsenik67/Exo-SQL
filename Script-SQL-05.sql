SELECT nom_bataille, DATE_FORMAT(date_bataille, "%d/%m/%Y"), nom_lieu
FROM bataille b
INNER JOIN lieu l ON b.id_lieu = l.id_lieu
ORDER BY date_bataille DESC