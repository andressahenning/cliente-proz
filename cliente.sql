CREATE TABLE cliente (
  ID SERIAL PRIMARY KEY,
  nome VARCHAR(16) NOT NULL,
  sobrenome VARCHAR(24) not NULL,
  idade INT,
  pais VARCHAR(4)
);

CREATE TABLE pedido (
   id SERIAL,
   item VARCHAR(48) not NULL,
   quantidade INT not NULL,
   fk_id_cliente INT not NULL,
   CONSTRAINT fk_cliente FOREIGN KEY(fk_id_cliente) REFERENCES cliente(ID)
 );
    
INSERT INTO cliente(nome, sobrenome, idade, pais) VALUES
    ('João', 'Alves', 48, 'BR'),
    ('Roberto', 'Garcia', 36, 'MX'),
    ('Dario', 'Rubens', 39, 'ARG'),
    ('Julia', 'Silva', 28, 'BR'),
    ('Rebeca', 'Pereira', 34, 'BR');
    
INSERT INTO pedido(item, quantidade, fk_id_cliente) VALUES
    ('teclado', 1, 4),
    ('mouse', 2, 4),
    ('monitor', 8, 3),
    ('teclado', 1, 2),
    ('mousepad', 4, 2);
    
SELECT * FROM pedido
  INNER JOIN cliente
  on pedido.fk_id_cliente = cliente.id
  
 SELECT * FROM pedido
 RIGHT JOIN cliente
 on pedido.fk_id_cliente = cliente.id
 
 SELECT * FROM pedido
 right join cliente
 on pedido.fk_id_cliente = cliente.id
 WHERE pedido.id ISNULL
 
 SELECT pedido.id AS id_pedido, cliente.id AS id_cliente
 FROM pedido
 JOIN cliente
 ON pedido.fk_id_cliente = cliente.id