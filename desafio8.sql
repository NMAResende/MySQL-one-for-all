SELECT a.nome AS 'artista',
	   al.nome AS 'album'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
ON a.artista_id = al.artista_id
WHERE a.nome = 'Elis Regina'
ORDER BY al.nome ASC;