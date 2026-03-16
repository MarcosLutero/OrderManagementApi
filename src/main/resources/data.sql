-- =========================
-- CATEGORIAS
-- =========================

INSERT INTO categories (name, description, created_at, updated_at) VALUES
('Eletrônicos', 'Produtos eletrônicos em geral', NOW(), NOW()),
('Informática', 'Notebooks, periféricos e acessórios de informática', NOW(), NOW()),
('Smartphones', 'Celulares e acessórios relacionados', NOW(), NOW()),
('Áudio', 'Fones, caixas de som e dispositivos de áudio', NOW(), NOW()),
('Escritório', 'Materiais e equipamentos para escritório', NOW(), NOW()),
('Casa e Cozinha', 'Utilidades para casa e cozinha', NOW(), NOW()),
('Games', 'Produtos para jogos e entretenimento', NOW(), NOW()),
('Fitness', 'Equipamentos e acessórios esportivos', NOW(), NOW()),
('Livros', 'Livros físicos e materiais de leitura', NOW(), NOW()),
('Acessórios', 'Acessórios diversos para uso diário', NOW(), NOW());

-- =========================
-- PRODUTOS
-- =========================

INSERT INTO products (name, description, price, stock, active, image_url, category_id, created_at, updated_at) VALUES
-- Eletrônicos (1)
('Smart TV 50 Polegadas', 'Televisão 4K UHD com sistema smart integrado', 2499.90, 8, true, null, 1, NOW(), NOW()),
('Caixa de Som Bluetooth', 'Caixa de som portátil com conexão bluetooth', 299.90, 20, true, null, 1, NOW(), NOW()),
('Tablet 10 Polegadas', 'Tablet com tela de 10 polegadas e 64GB', 1199.90, 12, true, null, 1, NOW(), NOW()),

-- Informática (2)
('Notebook Intel i5', 'Notebook com 16GB RAM e SSD de 512GB', 3899.90, 10, true, null, 2, NOW(), NOW()),
('Mouse Gamer RGB', 'Mouse com sensor de alta precisão e iluminação RGB', 149.90, 25, true, null, 2, NOW(), NOW()),
('Teclado Mecânico', 'Teclado mecânico com switch azul e layout ABNT2', 259.90, 18, true, null, 2, NOW(), NOW()),

-- Smartphones (3)
('Smartphone 128GB', 'Smartphone com 128GB de armazenamento e 8GB RAM', 1799.90, 15, true, null, 3, NOW(), NOW()),
('Smartphone 256GB', 'Modelo avançado com câmera tripla e 256GB', 2499.90, 9, true, null, 3, NOW(), NOW()),
('Carregador Turbo USB-C', 'Carregador rápido de 30W com cabo USB-C', 89.90, 40, true, null, 3, NOW(), NOW()),

-- Áudio (4)
('Fone Bluetooth', 'Fone sem fio com cancelamento de ruído', 399.90, 22, true, null, 4, NOW(), NOW()),
('Headset Gamer', 'Headset com microfone e som surround', 279.90, 14, true, null, 4, NOW(), NOW()),
('Microfone Condensador', 'Microfone para streaming e gravação', 349.90, 11, true, null, 4, NOW(), NOW()),

-- Escritório (5)
('Cadeira de Escritório', 'Cadeira ergonômica com ajuste de altura', 899.90, 7, true, null, 5, NOW(), NOW()),
('Mesa Office', 'Mesa para escritório com acabamento amadeirado', 699.90, 6, true, null, 5, NOW(), NOW()),
('Monitor 24 Polegadas', 'Monitor Full HD ideal para trabalho e estudo', 799.90, 13, true, null, 5, NOW(), NOW()),

-- Casa e Cozinha (6)
('Liquidificador 1200W', 'Liquidificador potente com copo de 3 litros', 219.90, 16, true, null, 6, NOW(), NOW()),
('Air Fryer 5L', 'Fritadeira sem óleo com capacidade de 5 litros', 459.90, 10, true, null, 6, NOW(), NOW()),
('Jogo de Panelas', 'Conjunto com 5 panelas antiaderentes', 329.90, 9, true, null, 6, NOW(), NOW()),

-- Games (7)
('Console Next Gen', 'Console de última geração com 1TB SSD', 4299.90, 5, true, null, 7, NOW(), NOW()),
('Controle Sem Fio', 'Controle adicional compatível com console', 349.90, 17, true, null, 7, NOW(), NOW()),
('Jogo de Corrida', 'Game de corrida com modo online', 249.90, 30, true, null, 7, NOW(), NOW()),

-- Fitness (8)
('Halter 10kg', 'Par de halteres emborrachados de 10kg', 199.90, 20, true, null, 8, NOW(), NOW()),
('Tapete de Yoga', 'Tapete antiderrapante para yoga e pilates', 89.90, 25, true, null, 8, NOW(), NOW()),
('Corda de Pular', 'Corda ajustável para treino funcional', 39.90, 50, true, null, 8, NOW(), NOW()),

-- Livros (9)
('Livro de Java', 'Guia prático para desenvolvimento com Java', 119.90, 18, true, null, 9, NOW(), NOW()),
('Livro de Spring Boot', 'Construindo APIs REST com Spring Boot', 139.90, 14, true, null, 9, NOW(), NOW()),
('Livro de Clean Code', 'Boas práticas de código limpo e manutenção', 99.90, 21, true, null, 9, NOW(), NOW()),

-- Acessórios (10)
('Relógio Digital', 'Relógio casual com visor digital', 159.90, 19, true, null, 10, NOW(), NOW()),
('Mochila Executiva', 'Mochila resistente para notebook e acessórios', 229.90, 12, true, null, 10, NOW(), NOW()),
('Carteira Masculina', 'Carteira compacta em material sintético', 79.90, 28, true, null, 10, NOW(), NOW());