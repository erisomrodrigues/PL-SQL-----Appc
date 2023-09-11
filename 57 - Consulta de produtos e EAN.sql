USE WMS_F17



SELECT COUNT(T1.CodProduto)'REP', T1.CodProduto,T1.RefProd,T1.DescProd,Aux,T3.CodFornecedor,T3.NomeFornecedor,T1.Situacao FROM Produto T1 JOIN Embalagem T2 ON T1.CodProduto=T2.Codproduto JOIN Fornecedor T3 ON T1.CodFornecedor=T3.CodFornecedor
GROUP BY T1.CodProduto,T1.RefProd,T1.DescProd,Aux,T3.CodFornecedor,T3.NomeFornecedor,T1.Situacao HAVING COUNT(T1.CodProduto) >1 ORDER BY T1.CodProduto,REP



BEGIN TRAN
DELETE FROM Embalagem WHERE CodEmbalagem=319949

ROLLBACK TRAN


SELECT * FROM Embalagem WHERE Codproduto=442521