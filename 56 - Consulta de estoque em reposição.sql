WITH GERAL AS (
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_MTZ.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F01.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F02.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F04.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F05.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F06.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F07.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F08.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F10.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F11.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F12.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F13.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F14.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F15.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F16.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F17.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F18.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F19.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F20.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F21.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F22.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F23.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F24.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F25.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F26.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F27.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F28.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F30.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F31.dbo.EstEndereco WHERE QtdReposicao <> 0 UNION
SELECT CodEstEndereco,CodFilial,CodEndereco,Codprod,DatUltimaEntrada,QtdEstoque,QtdReposicao,DtValidade FROM Wms_F32.dbo.EstEndereco WHERE QtdReposicao <> 0)
SELECT 
CASE
WHEN CodFilial = 1 THEN 'F001 Bezerra (CE) (V)'
WHEN CodFilial = 3 THEN 'F007 Comercial (CE) (V)'
WHEN CodFilial = 6 THEN 'F000 Matriz (CE) (V)'
WHEN CodFilial = 8 THEN 'F004 Atacado (CE) (A) (CD)'
WHEN CodFilial = 16 THEN 'F011 M Salazar (CE) (V)'
WHEN CodFilial = 18 THEN 'F012 Tabuleta (PI) (V)'
WHEN CodFilial = 22 THEN 'F016 M Rosa (PI) (V)'
WHEN CodFilial = 24 THEN 'F017 Maranguape (CE) (A) (CD)'
WHEN CodFilial = 26 THEN 'F023 Comprida (PI) (V)'
WHEN CodFilial = 50 THEN 'F024 Osorio P (CE) (V)'
WHEN CodFilial = 51 THEN 'F025 Real Copagre (PI) (V)'
WHEN CodFilial = 10 THEN 'F008 H Jorge (CE) (V)'
WHEN CodFilial = 20 THEN 'F014 Tintas (CE) (V)'
WHEN CodFilial = 23 THEN 'F018 Bosch (CE) (A)'
WHEN CodFilial = 46 THEN 'F021 Natal (RN) (V)'
WHEN CodFilial = 5 THEN 'F006 Importados (CE) (V)'
WHEN CodFilial = 25 THEN 'F019 Teresina (PI) (A) (CD)'
WHEN CodFilial = 2 THEN 'F002 Ant.Sales (CE) (V)'
WHEN CodFilial = 19 THEN 'F013 Maracanau (CE) (V)'
WHEN CodFilial = 52 THEN 'F026 Atacado RN (RN) (A) (CD)'
WHEN CodFilial = 54 THEN 'F027 Messejana 2 (CE) (V)'
WHEN CodFilial = 56 THEN 'F030 Garantia (CE)'
WHEN CodFilial = 58 THEN 'F032 Papicu (CE) (V)'
WHEN CodFilial = 15 THEN 'F010 Ol Paiva (CE) (V)'
WHEN CodFilial = 21 THEN 'F015 Atacadinho (PI) (A)'
WHEN CodFilial = 44 THEN 'F020 Jose Walter (CE) (V)'
WHEN CodFilial = 49 THEN 'F022 Caucaia (CE) (V)'
WHEN CodFilial = 55 THEN 'F028 Barra do Ceara (CE) (V)'
WHEN CodFilial = 4 THEN 'F005 Messejana (CE) (V)'
WHEN CodFilial = 57 THEN 'F031 Recife (PI) (V)'
WHEN CodFilial = 59 THEN 'F033 Itaitinga (CE) (V)'
ELSE 'Sem ' END AS 'Lojas',
* FROM GERAL ORDER BY CodFilial,QtdReposicao



