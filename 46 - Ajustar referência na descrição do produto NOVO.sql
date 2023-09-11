use WMS_F04

-- Consultar Descrição
select t2.cdprd,DescProd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Produto t1 join SAP_Central.DBO.tbl_produto t2
on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI

-- Consultar produtos com referências diferentes do frente de loja
select t2.cdprd,vrreffab,RefProd,convert(varchar,t2.referencia)'Ref' from Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd
where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI 

-- Ajustar referências 
update Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Produto t1 join SAP_Central.DBO.tbl_produto t2
on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
go
-- Concatenar referência com descrição de produto
update Produto set DescProd = NewDesc
from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Produto t1 join SAP_Central.DBO.tbl_produto t2
on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd


