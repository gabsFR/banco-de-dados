CREATE TABLE Vendas_Atividade (
    ID INT PRIMARY KEY,
    Produto VARCHAR(100),
    Categoria VARCHAR(100),
    Valor INT
);

INSERT INTO Vendas_Atividade (ID, Produto, Categoria, Valor)
VALUES
(1, 'Mouse', 'Periférico', 50),
(2, 'Teclado', 'Periférico', 120),
(3, 'Monitor', 'Tela', 800),
(4, 'Headset', 'Periférico', 70);
