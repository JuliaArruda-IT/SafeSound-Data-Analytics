USE aap_safesound;


# 1. Maiores níveis de ruído registrados
SELECT
    id_leitura,
    id_ponto,
    nivel_db,
    data_hora
FROM leituras_ruido
ORDER BY nivel_db DESC
LIMIT 10;


# 2. Visão geral das medições
SELECT
    COUNT(*) AS quantidade_leituras,
    ROUND(AVG(nivel_db), 2) AS media_db,
    MAX(nivel_db) AS maior_nivel_db,
    MIN(nivel_db) AS menor_nivel_db
FROM leituras_ruido;


# 3. Média de ruído por ponto de monitoramento
SELECT
    p.nome AS ponto_monitoramento,
    COUNT(l.id_leitura) AS quantidade_leituras,
    ROUND(AVG(l.nivel_db), 2) AS media_db
FROM pontos_monitoramento p
JOIN leituras_ruido l
    ON p.id_ponto = l.id_ponto
GROUP BY p.id_ponto, p.nome
ORDER BY media_db DESC;


# 4. Maior e menor nível registrado por ponto
SELECT
    p.nome AS ponto_monitoramento,
    ROUND(AVG(l.nivel_db), 2) AS media_db,
    MAX(l.nivel_db) AS maior_nivel_db,
    MIN(l.nivel_db) AS menor_nivel_db
FROM pontos_monitoramento p
JOIN leituras_ruido l
    ON p.id_ponto = l.id_ponto
GROUP BY p.id_ponto, p.nome
ORDER BY media_db DESC;


# 5. Média de ruído por zona
SELECT
    z.nome AS zona,
    COUNT(l.id_leitura) AS quantidade_leituras,
    ROUND(AVG(l.nivel_db), 2) AS media_db
FROM zonas z
JOIN pontos_monitoramento p
    ON z.id_zona = p.id_zona
JOIN leituras_ruido l
    ON p.id_ponto = l.id_ponto
GROUP BY z.id_zona, z.nome
ORDER BY media_db DESC;


# 6. Quantidade de leituras por ponto
SELECT
    p.nome AS ponto_monitoramento,
    COUNT(l.id_leitura) AS quantidade_leituras
FROM pontos_monitoramento p
LEFT JOIN leituras_ruido l
    ON p.id_ponto = l.id_ponto
GROUP BY p.id_ponto, p.nome
ORDER BY quantidade_leituras DESC;


# 7. Pontos com média de ruído acima de 60 dB
SELECT
    p.nome AS ponto_monitoramento,
    ROUND(AVG(l.nivel_db), 2) AS media_db
FROM pontos_monitoramento p
JOIN leituras_ruido l
    ON p.id_ponto = l.id_ponto
GROUP BY p.id_ponto, p.nome
HAVING AVG(l.nivel_db) > 60
ORDER BY media_db DESC;


# 8. Quantidade de medições acima de 70 dB por ponto
SELECT
    p.nome AS ponto_monitoramento,
    COUNT(*) AS leituras_acima_70db
FROM pontos_monitoramento p
JOIN leituras_ruido l
    ON p.id_ponto = l.id_ponto
WHERE l.nivel_db > 70
GROUP BY p.id_ponto, p.nome
ORDER BY leituras_acima_70db DESC;


# 9. Comparação entre nível medido e limite da zona
SELECT
    l.id_leitura,
    p.nome AS ponto_monitoramento,
    z.nome AS zona,
    l.nivel_db,
    z.limite_dia,
    CASE
        WHEN l.nivel_db > z.limite_dia THEN 'Acima do limite'
        ELSE 'Dentro do limite'
    END AS situacao
FROM leituras_ruido l
JOIN pontos_monitoramento p
    ON l.id_ponto = p.id_ponto
JOIN zonas z
    ON p.id_zona = z.id_zona
ORDER BY l.nivel_db DESC;