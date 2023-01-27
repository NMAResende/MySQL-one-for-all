SELECT 
    COUNT(DISTINCT c.cancao_id) AS cancoes,
    COUNT(DISTINCT ar.artista_id) AS artistas,
    COUNT(DISTINCT a.album_id) AS albuns
FROM
    SpotifyClone.cancoes AS c
        INNER JOIN
    SpotifyClone.albuns AS a ON c.album_id = a.album_id
        INNER JOIN
    SpotifyClone.artistas AS ar ON ar.artista_id = a.artista_id;