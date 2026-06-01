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