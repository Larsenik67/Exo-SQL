SELECT nom_specialite, COUNT(s.id_specialite) AS nbGaulois
FROM personnage p
INNER JOIN specialite s ON p.id_specialite = s.id_specialite
GROUP BY s.id_specialite
HAVING nbGaulois >= 5
ORDER BY nbGaulois DESC