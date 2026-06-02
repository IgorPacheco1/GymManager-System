USE GymManager;

-- Inserir usuários
INSERT INTO USUARIO (login, senha, nivel_acesso) VALUES 
('aluno01', 'senha123', 'aluno'),
('aluno02', 'senha123', 'aluno');

-- Inserir clientes
INSERT INTO CLIENTE (id_usuario, nome, cpf, telefone) VALUES 
(1, 'João Silva', '12345678901', '31999998888'),
(2, 'Maria Oliveira', '98765432109', '31988887777');

-- Inserir planos
INSERT INTO PLANO (nome_plano, valor) VALUES 
('Mensal', 100.00),
('Anual', 1000.00);

-- Inserir matrículas
INSERT INTO MATRICULA (id_cliente, id_plano, data_inicio) VALUES 
(1, 1, '2026-06-01'),
(2, 2, '2026-06-02');

-- Inserir exercícios
INSERT INTO EXERCICIO (nome_exercicio, grupo_muscular) VALUES 
('Supino Reto', 'Peito'),
('Agachamento Livre', 'Pernas');

-- Inserir treinos
INSERT INTO TREINO (id_cliente, id_exercicio, series, repeticoes, carga) VALUES 
(1, 1, 3, 12, 20.00),
(2, 2, 4, 10, 40.00);