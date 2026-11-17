CREATE TABLE Vendas (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Produto VARCHAR(100),
    Categoria VARCHAR(100),
    Valor INT
);

INSERT INTO Vendas (Produto, Categoria, Valor)
VALUES
('Mouse', 'Informática', 50),
('Teclado', 'Informática', 100),
('Monitor', 'Informática', 500),
('Camiseta', 'Roupas', 50),
('Calça', 'Roupas', 100),
('Jaqueta', 'Roupas', 300);
