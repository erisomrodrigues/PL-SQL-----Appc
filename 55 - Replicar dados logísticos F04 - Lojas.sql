INSERT INTO DadosLogistica 



SELECT
Codprod,Altura,Largura,Comprimento,Volume,PesoLiquido,PesoBruto,Lastro,Camada,Fracionado,AbastecimentoPalete,EstMinFracionado,EstMaxFracionado,EstMinMaster,EstMaxMaster,AlturaCx,LarguraCx,ComprimentoCx,VolumeCx,PesoLiquidoCx,PesoBrutoCx


FROM WMS_F04.DBO.DadosLogistica WHERE Not EXISTS (SELECT T1.CodProduto FROM WMS_F06.DBO.Produto T1 LEFT JOIN WMS_F06.DBO.DadosLogistica T2 ON T1.CodProduto=T2.Codprod WHERE T2.CodLogistico IS NULL)




SELECT * FROM DadosLogistica WHERE Codprod=685215

USE wms_f06

