
-- Consulta: Listar clientes e os planos que contrataram
SELECT c.nome, p.nome_plano
FROM cliente c
JOIN matricula m ON c.id_cliente = m.id_cliente
JOIN plano p ON m.id_plano = p.id_plano;

-- Consulta: Listar clientes que possuem treinos cadastrados (uso de DISTINCT para evitar duplicados)
SELECT DISTINCT c.nome
FROM cliente c
INNER JOIN matricula m ON c.id_cliente = m.id_cliente
INNER JOIN treino t ON c.id_cliente = t.id_cliente;

-- Consulta: Planos com mais de 5 alunos (Exige a cláusula HAVING)
SELECT p.nome_plano, COUNT(m.id_matricula) AS total_alunos
FROM plano p
JOIN matricula m ON p.id_plano = m.id_plano
GROUP BY p.nome_plano
HAVING COUNT(m.id_matricula) > 5;

-- Consulta: Média de alunos por plano (Agregação adicional)
SELECT AVG(total_por_plano) as media_alunos
FROM (SELECT COUNT(id_matricula) as total_por_plano FROM matricula GROUP BY id_plano) as subquery;

-- Consulta: Lista unificada de todos os nomes de clientes e nomes de planos
SELECT nome AS descricao FROM cliente
UNION
SELECT nome_plano FROM plano;

-- Consulta: Clientes que possuem matrícula (Interseção lógica via IN)
SELECT nome FROM cliente
WHERE id_cliente IN (SELECT id_cliente FROM matricula);

-- Consulta: Diferença (Clientes que não possuem matrícula - quem ainda não se matriculou)
SELECT nome FROM cliente
WHERE id_cliente NOT IN (SELECT id_cliente FROM matricula);

-- De onde os dados vêm? (FROM e JOIN)
-- O que eu quero filtrar antes? (WHERE)
-- Como eu quero agrupar? (GROUP BY)
-- O que eu quero ver no final? (SELECT)
-- Existe algum filtro após o resumo? (HAVING)
-- Como quero ordenar? (ORDER BY)