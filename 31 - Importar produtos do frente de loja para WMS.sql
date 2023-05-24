use Wms_F04

/* Consulat de produtos que não existe no WMS */
select cdprd,DEPRD,dtcad,vrreffab,cdfab,cdfrn from Sap_Central.dbo.tbl_produto t1 where not exists (
select * from Produto t2 where t1.cdprd=t2.CodProduto)

/* Importa os produtos do frente de loja para o WMS */
insert into Produto (CodProduto,DescProd,DatCadastro,RefProd,CodFabrica,CodFornecedor)
select cdprd,DEPRD,dtcad,vrreffab,cdfab,cdfrn from Sap_Central.dbo.tbl_produto t1 where not exists (
select * from Produto t2 where t1.cdprd=t2.CodProduto)
