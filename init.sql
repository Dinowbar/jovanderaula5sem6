CREATE DATABASE IF NOT EXISTS fernandobanco;
USE fernandobanco;

CREATE TABLE IF NOT EXISTS Clientes (
  Id_Cliente INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(100),
  Endereco VARCHAR(255),
  Cidade VARCHAR(100),
  Telefone VARCHAR(20)
);

INSERT INTO Clientes (Nome, Endereco, Cidade, Telefone) VALUES
('João Silva', 'Rua A, 123', 'São Paulo', '1111-1111'),
('Maria Oliveira', 'Rua B, 456', 'Rio de Janeiro', '2222-2222'),
('José Santos', 'Rua C, 789', 'Belo Horizonte', '3333-3333'),
('Ana Costa', 'Rua D, 101', 'Salvador', '4444-4444'),
('Carlos Pereira', 'Rua E, 202', 'Fortaleza', '5555-5555'),
('Fernanda Alves', 'Rua F, 303', 'Curitiba', '6666-6666'),
('Rafael Souza', 'Rua G, 404', 'Manaus', '7777-7777'),
('Patricia Lima', 'Rua H, 505', 'Porto Alegre', '8888-8888'),
('Eduardo Rocha', 'Rua I, 606', 'Recife', '9999-9999'),
('Luciana Martins', 'Rua J, 707', 'Natal', '1000-1000'),
('Paulo Silva', 'Rua K, 808', 'Vitória', '1100-1100'),
('Simone Gomes', 'Rua L, 909', 'Goiânia', '1200-1200'),
('Marcos Ribeiro', 'Rua M, 1001', 'Maceió', '1300-1300'),
('Cláudia Mendes', 'Rua N, 1112', 'São Luís', '1400-1400'),
('Ricardo Fernandes', 'Rua O, 1223', 'João Pessoa', '1500-1500'),
('Tatiane Costa', 'Rua P, 1334', 'Aracaju', '1600-1600'),
('André Oliveira', 'Rua Q, 1445', 'Cuiabá', '1700-1700'),
('Beatriz Pereira', 'Rua R, 1556', 'Campo Grande', '1800-1800'),
('Gabriel Almeida', 'Rua S, 1667', 'Teresina', '1900-1900'),
('Juliana Costa', 'Rua T, 1778', 'São José', '2000-2000'),
('Felipe Rocha', 'Rua U, 1889', 'Florianópolis', '2100-2100'),
('Carla Almeida', 'Rua V, 1990', 'Belém', '2200-2200'),
('Sérgio Martins', 'Rua W, 2101', 'Porto Velho', '2300-2300'),
('Marcela Souza', 'Rua X, 2112', 'Palmas', '2400-2400'),
('Gustavo Lima', 'Rua Y, 2223', 'Anápolis', '2500-2500'),
('Renata Alves', 'Rua Z, 2334', 'Ribeirão Preto', '2600-2600'),
('Tiago Oliveira', 'Rua AA, 2445', 'Uberlândia', '2700-2700'),
('Eduarda Santos', 'Rua BB, 2556', 'Londrina', '2800-2800'),
('Bruno Ribeiro', 'Rua CC, 2667', 'Ponta Grossa', '2900-2900'),
('Isabela Martins', 'Rua DD, 2778', 'Campinas', '3000-3000');
