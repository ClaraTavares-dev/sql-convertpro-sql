
INSERT INTO usuarios (nome, email, senha_hash) VALUES
('João Silva', 'joao.silva@email.com', '$2y$10$abcdefghijklmnopqrstuvwxyz123456789'),
('Maria Santos', 'maria.santos@email.com', '$2y$10$zyxwvutsrqponmlkjihgfedcba987654321'),
('Pedro Oliveira', 'pedro.oliveira@email.com', '$2y$10$1234567890abcdefghijklmnopqrstuvwxyz'),
('Ana Costa', 'ana.costa@email.com', '$2y$10$qwertyuiopasdfghjklzxcvbnm123456789');


SELECT id, nome, email, senha_hash, created_at FROM usuarios;

update usuarios
set nome = "Clara Tavares"
where id = 3; 