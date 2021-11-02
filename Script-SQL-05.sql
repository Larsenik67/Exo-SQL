SELECT nom_bataille, DATE_FORMAT(date_bataille, "%d/%m/-%y"), nom_lieu
FROM bataille b
INNER JOIN lieu l ON b.id_lieu = l.id_lieu
ORDER BY YEAR(date_bataille), MONTH(date_bataille) DESC