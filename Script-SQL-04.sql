SELECT s.nom_specialite, COUNT(p.id_specialite) AS nbGaulois
FROM specialite s
LEFT JOIN personnage p ON p.id_specialite = s.id_specialite
GROUP BY s.id_specialite
ORDER BY nbGaulois DESC