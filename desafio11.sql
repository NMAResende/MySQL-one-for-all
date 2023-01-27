SELECT 
    c.nome AS 'nome_musica',
    CASE
        WHEN c.nome LIKE '%Bard%' THEN REPLACE(nome, 'Bard', 'QA')
        WHEN c.nome LIKE '%Amar%' THEN REPLACE(nome, 'Amar', 'Code Review')
        WHEN c.nome LIKE '%Pais%' THEN REPLACE(nome, 'Pais', 'Pull Requests')
        WHEN c.nome LIKE '%SOUL%' THEN REPLACE(nome, 'SOUL', 'CODE')
        WHEN c.nome LIKE '%SUPERSTAR%' THEN REPLACE(nome, 'SUPERSTAR', 'SUPERDEV')
    END AS 'novo_nome'
FROM
    SpotifyClone.cancoes AS c
WHERE
    c.nome LIKE '%Bard%' OR c.nome LIKE '%Amar%'
        OR c.nome LIKE '%Pais%'
        OR c.nome LIKE '%SOUL%'
        OR c.nome LIKE '%SUPERSTAR%'
        ORDER BY c.nome DESC;
