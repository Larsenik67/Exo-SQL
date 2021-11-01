SELECT nom_personnage, qte
FROM prendre_casque pc 
INNER JOIN personnage p ON pc.id_personnage = p.id_personnage
INNER JOIN bataille b ON pc.id_bataille = b.id_bataille
WHERE nom_bataille = "Bataille du village gaulois"
ORDER BY qte DESC
LIMIT 3
