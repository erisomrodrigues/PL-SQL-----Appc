-- Update para inserir as referencias na descrição dos produtos--

update WMS_F01.dbo.Produto set DescProd=referencia +' '+ deprd from WMS_F01.dbo.Produto pw join Sap_Central.dbo.produto ps on pw.CodProduto=ps.cdprd
where ps.cdprd<999999 and referencia is not null


update WMS_F01.dbo.Produto set DescProd=referencia +' '+ deprd from WMS_F01.dbo.Produto t1 join Sap_Central.dbo.produto t2 on t1.CodProduto=t2.cdprd
where t1.CodProduto=68433

select t1.CodProduto,t2.New_Desc from Produto t1 join (select top 1000  cdprd,vrreffab,concat(vrreffab,' ',DEPRD)'New_Desc' from Sap_Central.dbo.tbl_produto) as t2
on t1.CodProduto=t2.cdprd where t1.DescProd collate SQL_Latin1_General_CP1_CI_AI=t2.New_Desc collate SQL_Latin1_General_CP1_CI_AI

update WMS_F01.dbo.Produto set DescProd=concat(vrreffab,' ',DEPRD)from WMS_F01.dbo.Produto t1 join Sap_Central.dbo.produto t2 on t1.CodProduto=t2.cdprd
where t1.CodProduto=68433


use WMS_F01

select * from Produto where CodProduto=770449
select * from Sap_Central.dbo.tbl_produto where cdprd=770449
select top 1000  cdprd,vrreffab,concat(vrreffab,' ',DEPRD)'New_Desc' from Sap_Central.dbo.tbl_produto where cdprd=770449

