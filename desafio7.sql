SELECT a.nome AS 'artista',
       al.nome AS 'album',
       COUNT(s.usuario_id) AS 'seguidores'
FROM SpotifyClone.albuns AS al
INNER JOIN SpotifyClone.artistas AS a
ON al.artista_id = a.artista_id
INNER JOIN SpotifyClone.seguidores_artistas AS s
ON s.artista_id = a.artista_id
GROUP BY a.nome, al.nome
ORDER BY COUNT(s.usuario_id) DESC, a.nome ASC, al.nome ASC;