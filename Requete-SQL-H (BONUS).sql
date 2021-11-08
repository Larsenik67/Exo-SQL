SELECT ABS(DATEDIFF(
	(SELECT b.date_bataille
	FROM bataille b
	WHERE b.id_bataille = 6),
	(SELECT b.date_bataille
	FROM bataille b
	WHERE b.id_bataille = 8)
	))