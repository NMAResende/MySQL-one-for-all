SELECT 
    c.nome AS 'nome', COUNT(h.usuario_id) AS 'reproducoes'
FROM
    SpotifyClone.cancoes AS c
        INNER JOIN
    SpotifyClone.historico_reproducoes AS h ON c.cancao_id = h.cancao_id
        INNER JOIN
    SpotifyClone.usuarios AS u ON u.usuario_id = h.usuario_id
        INNER JOIN
    SpotifyClone.planos AS p ON p.plano_id = u.plano_id
GROUP BY c.nome , p.plano_id
HAVING p.plano_id = 1 OR p.plano_id = 4
ORDER BY c.nome ASC;