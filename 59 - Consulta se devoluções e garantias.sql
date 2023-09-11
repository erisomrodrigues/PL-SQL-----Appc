WITH GERAL AS (
SELECT distinct t2.CodFilial,NumDocumento,t2.NumNotaFiscal,t4.CodBonusNotaCab,DtEmissao FROM Wms_F04.DBO.NotaFiscalItemEntrada T1 JOIN Wms_F04.DBO.NotaFiscalEntrada T2 ON T1.CodNotaFiscal=T2.CodNotaFiscal JOIN Wms_F04.DBO.Fornecedor T3 ON T2.CodFornecedor=T3.CodFornecedor LEFT JOIN Wms_F04.DBO.BonusNotaCab T4 ON T2.CodNotaFiscal=T4.CodNotaFiscal UNION
SELECT distinct t2.CodFilial,NumDocumento,t2.NumNotaFiscal,t4.CodBonusNotaCab,DtEmissao FROM WMS_F17.DBO.NotaFiscalItemEntrada T1 JOIN WMS_F17.DBO.NotaFiscalEntrada T2 ON T1.CodNotaFiscal=T2.CodNotaFiscal JOIN WMS_F17.DBO.Fornecedor T3 ON T2.CodFornecedor=T3.CodFornecedor LEFT JOIN WMS_F17.DBO.BonusNotaCab T4 ON T2.CodNotaFiscal=T4.CodNotaFiscal UNION
SELECT distinct t2.CodFilial,NumDocumento,t2.NumNotaFiscal,t4.CodBonusNotaCab,DtEmissao FROM WMS_F19.DBO.NotaFiscalItemEntrada T1 JOIN WMS_F19.DBO.NotaFiscalEntrada T2 ON T1.CodNotaFiscal=T2.CodNotaFiscal JOIN WMS_F19.DBO.Fornecedor T3 ON T2.CodFornecedor=T3.CodFornecedor LEFT JOIN WMS_F19.DBO.BonusNotaCab T4 ON T2.CodNotaFiscal=T4.CodNotaFiscal UNION
SELECT distinct t2.CodFilial,NumDocumento,t2.NumNotaFiscal,t4.CodBonusNotaCab,DtEmissao FROM WMS_F26.DBO.NotaFiscalItemEntrada T1 JOIN WMS_F26.DBO.NotaFiscalEntrada T2 ON T1.CodNotaFiscal=T2.CodNotaFiscal JOIN WMS_F26.DBO.Fornecedor T3 ON T2.CodFornecedor=T3.CodFornecedor LEFT JOIN WMS_F26.DBO.BonusNotaCab T4 ON T2.CodNotaFiscal=T4.CodNotaFiscal UNION
SELECT distinct t2.CodFilial,NumDocumento,t2.NumNotaFiscal,t4.CodBonusNotaCab,DtEmissao FROM WMS_F31.DBO.NotaFiscalItemEntrada T1 JOIN WMS_F19.DBO.NotaFiscalEntrada T2 ON T1.CodNotaFiscal=T2.CodNotaFiscal JOIN WMS_F31.DBO.Fornecedor T3 ON T2.CodFornecedor=T3.CodFornecedor LEFT JOIN WMS_F31.DBO.BonusNotaCab T4 ON T2.CodNotaFiscal=T4.CodNotaFiscal
) SELECT NumDocumento,NumNotaFiscal,CodBonusNotaCab,CASE 
WHEN CodFilial = 8 THEN 'F04'
WHEN CodFilial = 24 THEN 'F17'
WHEN CodFilial = 25 THEN 'F19'
WHEN CodFilial = 52 THEN 'F26'
WHEN CodFilial = 57 THEN 'F31'
ELSE 'SEM' END AS 'Centros'  FROM GERAL WHERE NumDocumento LIKE '49%' AND DtEmissao >='2023-01-08'  ORDER BY CodFilial

WITH GERAL AS (
SELECT distinct t2.CodFilial,NumDocumento,t2.NumNotaFiscal,t4.CodBonusNotaCab,DtEmissao FROM Wms_F04.DBO.NotaFiscalItemEntrada T1 JOIN Wms_F04.DBO.NotaFiscalEntrada T2 ON T1.CodNotaFiscal=T2.CodNotaFiscal JOIN Wms_F04.DBO.Fornecedor T3 ON T2.CodFornecedor=T3.CodFornecedor LEFT JOIN Wms_F04.DBO.BonusNotaCab T4 ON T2.CodNotaFiscal=T4.CodNotaFiscal UNION
SELECT distinct t2.CodFilial,NumDocumento,t2.NumNotaFiscal,t4.CodBonusNotaCab,DtEmissao FROM WMS_F17.DBO.NotaFiscalItemEntrada T1 JOIN WMS_F17.DBO.NotaFiscalEntrada T2 ON T1.CodNotaFiscal=T2.CodNotaFiscal JOIN WMS_F17.DBO.Fornecedor T3 ON T2.CodFornecedor=T3.CodFornecedor LEFT JOIN WMS_F17.DBO.BonusNotaCab T4 ON T2.CodNotaFiscal=T4.CodNotaFiscal UNION
SELECT distinct t2.CodFilial,NumDocumento,t2.NumNotaFiscal,t4.CodBonusNotaCab,DtEmissao FROM WMS_F19.DBO.NotaFiscalItemEntrada T1 JOIN WMS_F19.DBO.NotaFiscalEntrada T2 ON T1.CodNotaFiscal=T2.CodNotaFiscal JOIN WMS_F19.DBO.Fornecedor T3 ON T2.CodFornecedor=T3.CodFornecedor LEFT JOIN WMS_F19.DBO.BonusNotaCab T4 ON T2.CodNotaFiscal=T4.CodNotaFiscal UNION
SELECT distinct t2.CodFilial,NumDocumento,t2.NumNotaFiscal,t4.CodBonusNotaCab,DtEmissao FROM WMS_F26.DBO.NotaFiscalItemEntrada T1 JOIN WMS_F26.DBO.NotaFiscalEntrada T2 ON T1.CodNotaFiscal=T2.CodNotaFiscal JOIN WMS_F26.DBO.Fornecedor T3 ON T2.CodFornecedor=T3.CodFornecedor LEFT JOIN WMS_F26.DBO.BonusNotaCab T4 ON T2.CodNotaFiscal=T4.CodNotaFiscal UNION
SELECT distinct t2.CodFilial,NumDocumento,t2.NumNotaFiscal,t4.CodBonusNotaCab,DtEmissao FROM WMS_F19.DBO.NotaFiscalItemEntrada T1 JOIN WMS_F31.DBO.NotaFiscalEntrada T2 ON T1.CodNotaFiscal=T2.CodNotaFiscal JOIN WMS_F31.DBO.Fornecedor T3 ON T2.CodFornecedor=T3.CodFornecedor LEFT JOIN WMS_F31.DBO.BonusNotaCab T4 ON T2.CodNotaFiscal=T4.CodNotaFiscal
) SELECT NumDocumento,NumNotaFiscal,CodBonusNotaCab,CASE 
WHEN CodFilial = 8 THEN 'F04'
WHEN CodFilial = 24 THEN 'F17'
WHEN CodFilial = 25 THEN 'F19'
WHEN CodFilial = 52 THEN 'F26'
WHEN CodFilial = 57 THEN 'F31'

ELSE 'SEM' END AS 'Centros'  FROM GERAL WHERE NumDocumento in ('4925221125')

UPDATE NotaFiscalEntrada SET NumNotaFiscal='000007296' WHERE NumDocumento=4925237566	
UPDATE BonusNotaCab SET NumNotaFiscal='000001007' WHERE CodBonusNotaCab=76708


USE Wms_F04



