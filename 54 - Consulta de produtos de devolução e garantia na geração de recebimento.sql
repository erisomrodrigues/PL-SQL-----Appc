use WMS_F19

SELECT distinct NumDocumento,t2.NumNotaFiscal,t4.CodBonusNotaCab FROM NotaFiscalItemEntrada T1 JOIN NotaFiscalEntrada T2 
ON T1.CodNotaFiscal=T2.CodNotaFiscal JOIN Fornecedor T3 ON T2.CodFornecedor=T3.CodFornecedor LEFT JOIN BonusNotaCab T4 ON T2.CodNotaFiscal=T4.CodNotaFiscal
WHERE t2.NumDocumento like '49%' and t2.DtEmissao between '2023-06-01' and '2023-08-24'


SELECT t2.NumNotaFiscal,CodProduto,Quantidade,convert(money,t2.ValTotNotaFiscal,10),convert(money,ValProduto,10),T2.CodFornecedor,NomeFornecedor,DtEmissao,NumDocumento,t4.CodBonusCab,t4.CodBonusNotaCab FROM NotaFiscalItemEntrada T1 JOIN NotaFiscalEntrada T2 
ON T1.CodNotaFiscal=T2.CodNotaFiscal JOIN Fornecedor T3 ON T2.CodFornecedor=T3.CodFornecedor LEFT JOIN BonusNotaCab T4 ON T2.CodNotaFiscal=T4.CodNotaFiscal
WHERE t2.NumDocumento like '49%' and t2.DtEmissao='2023-08-09'


SELECT TOP 100 t2.NumNotaFiscal,CodProduto,Quantidade,t2.ValTotNotaFiscal,ValProduto,T2.CodFornecedor,NomeFornecedor,DtEmissao,NumDocumento,t4.CodBonusCab,t4.CodBonusNotaCab FROM NotaFiscalItemEntrada T1 JOIN NotaFiscalEntrada T2 
ON T1.CodNotaFiscal=T2.CodNotaFiscal JOIN Fornecedor T3 ON T2.CodFornecedor=T3.CodFornecedor LEFT JOIN BonusNotaCab T4 ON T2.CodNotaFiscal=T4.CodNotaFiscal
WHERE T2.NumDocumento LIKE '49%' AND T2.NumNotaFiscal in ('000545082')


SELECT t2.NumNotaFiscal,CodProduto,Quantidade,convert(money,t2.ValTotNotaFiscal,10)'Un',convert(money,ValProduto,10)'Total',T2.CodFornecedor,NomeFornecedor,DtEmissao,NumDocumento,t4.CodBonusCab,t4.CodBonusNotaCab FROM NotaFiscalItemEntrada T1 JOIN NotaFiscalEntrada T2 
ON T1.CodNotaFiscal=T2.CodNotaFiscal JOIN Fornecedor T3 ON T2.CodFornecedor=T3.CodFornecedor LEFT JOIN BonusNotaCab T4 ON T2.CodNotaFiscal=T4.CodNotaFiscal
WHERE NumDocumento in ('4924842400')

UPDATE NotaFiscalEntrada SET NumNotaFiscal='000075348' WHERE NumDocumento=4924842317	
UPDATE BonusNotaCab SET NumNotaFiscal='000003495' WHERE CodBonusNotaCab=69011


