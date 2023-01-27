SELECT c.nome AS 'cancao',
COUNT(h.cancao_id) AS 'reproducoes'
FROM SpotifyClone.cancoes AS c 
INNER JOIN
SpotifyClone.historico_reproducoes AS h ON c.cancao_id = h.cancao_id
GROUP BY h.cancao_id
ORDER BY COUNT(h.cancao_id) DESC, c.nome ASC
LIMIT 2;