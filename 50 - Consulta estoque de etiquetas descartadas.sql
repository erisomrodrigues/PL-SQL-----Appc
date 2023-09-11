USE WMS_F19

SELECT T1.CodEndereco,T1.CodProd,convert(numeric,EstoqueDisponivel)'Qtd',T2.CodEtiqueta FROM EstoquePulmao T1 JOIN Etiqueta T2 ON T1.CodEtiqueta=T2.CodEtiqueta
WHERE EstoqueDisponivel <> 0 AND T2.Situacao =2 ORDER BY CodEtiqueta

UPDATE Etiqueta SET Situacao=1 WHERE CodEtiqueta IN (
SELECT DISTINCT T2.CodEtiqueta FROM EstoquePulmao T1 JOIN Etiqueta T2 ON T1.CodEtiqueta=T2.CodEtiqueta
WHERE EstoqueDisponivel <> 0 AND T2.Situacao =2)

/* SITUAÇÕES DE ETIQUETAS
1 - Armazenada
2 - Descartada
*/

SELECT * FROM Etiqueta WHERE CodEtiqueta=726606
SELECT * FROM Etiqueta WHERE CodEtiqueta=726606

SELECT T1.CodEndereco,T1.CodProd,convert(numeric,EstoqueDisponivel)'Qtd',T2.CodEtiqueta FROM EstoquePulmao T1 JOIN Etiqueta T2 ON T1.CodEtiqueta=T2.CodEtiqueta
WHERE T2.CodEtiqueta=726606





