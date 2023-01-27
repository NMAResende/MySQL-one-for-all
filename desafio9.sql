SELECT COUNT(h.usuario_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historico_reproducoes AS h
INNER JOIN SpotifyClone.usuarios AS u
ON h.usuario_id = u.usuario_id
GROUP BY u.usuario_id
HAVING u.usuario_id = 1;