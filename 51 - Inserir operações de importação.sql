USE WMS_F11

SELECT * FROM Operacao WHERE CodFormulario=65

-- CRIAR CODIGO DE OPERAÇÕES
INSERT INTO Operacao VALUES (495,'Importar Clientes',0,65,1)
GO
INSERT INTO Operacao VALUES (496,'Importar Fornecedores',1,65,1)
GO
INSERT INTO Operacao VALUES (497,'Importar Transportadora',2,65,1)
GO
INSERT INTO Operacao VALUES (498,'Importar Produto',3,65,1)
GO
INSERT INTO Operacao VALUES (499,'Importar Vendedor',4,65,1)
GO
INSERT INTO Operacao VALUES (500,'Importar Pedido',5,65,1)
GO
INSERT INTO Operacao VALUES (501,'Importar NF Entrada',6,65,1)
GO
INSERT INTO Operacao VALUES (502,'Importar Estoque',7,65,1)
GO
INSERT INTO Operacao VALUES (503,'Importar Carregamento',8,65,1)



