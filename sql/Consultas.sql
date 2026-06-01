select c.nome, p.nome_plano
from cliente c
join matricula m on c.id_cliente = m.id_cliente
join plano p on m.id_plano = p.id_plano;

-- no caso esses c, m, e p são para diferenciar do nome da tabela, se nao ia ficar muito confuso, caso alguem tenha uma sugestão de um nome melhor já pode alterar 

select distinct c.nome
from cliente c
inner join matricula m on c.id_cliente = m.id_cliente
inner join treino t on c.id_cliente = t.id_cliente;

-- De onde os dados vêm? (FROM e JOIN)
-- O que eu quero filtrar antes? (WHERE)
-- Como eu quero agrupar? (GROUP BY)
-- O que eu quero ver no final? (SELECT)


select p.nome_plano, count(m.id_matricula) as total_alunos
from plano p
join matricula m on p.id_plano = m.id_plano
group by p.nome_plano
having count(m.id_matricula) > 5;

-- De onde vêm os dados? (FROM + JOIN)
-- O que procurar: Identifique todas as tabelas envolvidas e como elas estão "coladas" (as condições de ON).
-- Pergunte-se: "Quais são as tabelas necessárias para buscar essa informação?"

-- O que eu quero descartar antes de calcular? (WHERE)
-- O que procurar: Filtros individuais (ex: WHERE cpf = '123').
-- Pergunte-se: "Quais registros eu quero ignorar logo de cara?"

-- Como eu quero organizar/resumir? (GROUP BY)
-- O que procurar: O campo que está criando os "grupos" ou "pilhas" de dados.
-- Pergunte-se: "O que eu estou contando ou somando?"

-- Existe algum filtro após o resumo? (HAVING)
-- O que procurar: Filtros feitos após o agrupamento (ex: HAVING COUNT > 5).
-- Pergunte-se: "Dos grupos que eu criei, quais eu quero manter?"

-- O que eu quero ver no final? (SELECT)
-- O que procurar: As colunas finais ou cálculos (ex: COUNT, SUM, AVG).
-- Pergunte-se: "Qual é a resposta final que o usuário precisa enxergar?"

-- Como quero ordenar? (ORDER BY)
-- O que procurar: ASC (crescente) ou DESC (decrescente).
-- Pergunte-se: "Qual é a organização visual mais fácil para ler essa lista?"