SELECT sqte.nom_personnage, MAX(sqte.quantite) AS max_qte
FROM (SELECT p.nom_personnage, SUM(pc.qte) as quantite
FROM prendre_casque pc
INNER JOIN personnage p ON pc.id_personnage = p.id_personnage
INNER JOIN bataille b ON pc.id_bataille = b.id_bataille
WHERE b.nom_bataille = "Bataille du village gaulois"
GROUP BY p.nom_personnage) sqte
GROUP BY sqte.nom_personnage
ORDER BY max_qte DESC