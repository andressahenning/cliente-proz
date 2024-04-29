CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    endereco VARCHAR(200)
);

INSERT INTO clientes (nome, email, telefone, endereco) VALUES
    ('João Silva', 'joao.silva@email.com', '(11) 1234-5678', 'Rua das Flores, 123, São Paulo'),
    ('Maria Oliveira', 'maria.oliveira@email.com', '(21) 9876-5432', 'Av. das Palmeiras, 456, Rio de Janeiro'),
    ('Pedro Santos', 'pedro.santos@email.com', '(81) 1111-2222', 'Praça das Árvores, 789, Recife'),
    ('Ana Costa', 'ana.costa@email.com', '(31) 5555-4444', 'Alameda dos Coqueiros, 234, Belo Horizonte'),
    ('Carlos Lima', 'carlos.lima@email.com', '(62) 3333-9999', 'Avenida das Mangueiras, 567, Goiânia');

CREATE OR REPLACE FUNCTION contar_clientes()
RETURNS INTEGER AS $$
DECLARE
    total_clientes INTEGER;
BEGIN
    SELECT COUNT(*) INTO total_clientes FROM clientes;
    RETURN total_clientes;
END;
$$ LANGUAGE plpgsql;

SELECT contar_clientes();