-- Inserindo todos os fornecedores que não existe nas lojas: F017, F019, F026 e F031 no banco da F004 --
insert into Wms_F04.dbo.Fornecedor select * from Wms_F17.dbo.Fornecedor p where not exists (select * from Wms_F04.dbo.Fornecedor d where p.CodFornecedor=d.CodFornecedor)
insert into Wms_F04.dbo.Fornecedor select * from WMS_F19.dbo.Fornecedor p where not exists (select * from Wms_F04.dbo.Fornecedor d where p.CodFornecedor=d.CodFornecedor)
insert into Wms_F04.dbo.Fornecedor select * from WMS_F26.dbo.Fornecedor p where not exists (select * from Wms_F04.dbo.Fornecedor d where p.CodFornecedor=d.CodFornecedor)
insert into Wms_F04.dbo.Fornecedor select * from WMS_F31.dbo.Fornecedor p where not exists (select * from Wms_F04.dbo.Fornecedor d where p.CodFornecedor=d.CodFornecedor)
-- Inserindo todos os produtos que não existe nas lojas: F017, F019, F026 e F031 no banco da F004 --
insert into Wms_F04.dbo.Produto select * from Wms_F17.dbo.Produto p where not exists (select * from Wms_F04.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F04.dbo.Produto select * from WMS_F19.dbo.Produto p where not exists (select * from Wms_F04.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F04.dbo.Produto select * from WMS_F26.dbo.Produto p where not exists (select * from Wms_F04.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F04.dbo.Produto select * from WMS_F31.dbo.Produto p where not exists (select * from Wms_F04.dbo.Produto d where p.CodProduto=d.CodProduto)
-- INSERIR PRODUTOS DO FRENTE DE LOJA PARA A F04 --
insert into wms_f04.dbo.Produto (CodProduto,DescProd,DatCadastro,RefProd,CodFabrica,CodFornecedor) select cdprd,DEPRD,dtcad,convert(varchar,vrreffab)'Ref',cdfab,cdfrn from Sap_Central.dbo.tbl_produto t1 where not exists (select * from wms_f04.dbo.Produto t2 where t1.cdprd=t2.CodProduto)
-- REPLICAR OS GRUPOS DA F004 PARA AS OUTRAS FILIAIS --
--insert into Wms_MTZ.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_MTZ.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F01.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F01.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F02.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F02.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F05.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F05.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F06.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F06.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F07.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F07.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F08.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F08.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F10.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F10.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F11.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F11.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F12.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F12.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F13.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F13.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
--insert into Wms_F14.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F14.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F15.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F15.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F16.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F16.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F17.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F17.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F18.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F18.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F19.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F19.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F20.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F20.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F21.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F21.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F22.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F22.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F23.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F23.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F24.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F24.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F25.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F25.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F26.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F26.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F27.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F27.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F28.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F28.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F30.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F30.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F31.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F31.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F32.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F32.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
insert into Wms_F33.dbo.Grupo select * from Wms_F04.dbo.Grupo p where not exists (select * from Wms_F33.dbo.Grupo d where p.CodGrupo=d.CodGrupo)
-- REPLICAR CÓDIGOS DE PRODUTOS DA F04 PARA AS FILIAIS
--insert into Wms_MTZ.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_MTZ.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F01.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F01.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F02.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F02.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F05.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F05.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F06.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F06.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F07.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F07.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F08.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F08.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F10.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F10.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F11.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F11.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F12.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F12.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F13.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F13.dbo.Produto d where p.CodProduto=d.CodProduto)
--insert into Wms_F14.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F14.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F15.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F15.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F16.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F16.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F17.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F17.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F18.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F18.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F19.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F19.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F20.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F20.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F21.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F21.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F22.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F22.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F23.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F23.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F24.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F24.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F25.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F25.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F26.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F26.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F27.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F27.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F28.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F28.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F30.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F30.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F31.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F31.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F32.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F32.dbo.Produto d where p.CodProduto=d.CodProduto)
insert into Wms_F33.dbo.Produto select * from Wms_F04.dbo.Produto p where not exists (select * from Wms_F33.dbo.Produto d where p.CodProduto=d.CodProduto)
-- DEIXAR TODOS OS PRODUTOS SEM ALMOXARIFADOS NO CADASTRO DE PRODUTOS --
update Wms_MTZ.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F01.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F02.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F04.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F05.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F06.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F07.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F08.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F10.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F11.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F12.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F13.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F14.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F15.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F16.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F17.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F18.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F19.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F20.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F21.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F22.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F23.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F24.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F25.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F26.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F27.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F28.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F30.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F31.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F32.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
update Wms_F33.dbo.Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
-- INSERIR QTDCX NO CADASTRO DE PRODUTOS
update Wms_MTZ.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F01.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F02.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F04.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F05.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F06.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F07.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F08.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F10.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F11.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F12.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F13.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F14.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F15.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F16.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F17.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F18.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F19.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F20.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F21.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F22.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F23.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F24.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F25.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F26.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F27.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F28.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F30.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F31.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F32.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
update Wms_F33.dbo.Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
--DEIXAR TODOS OS PRODUTOS COMO ATIVOS NO CADASTRO DE PRODUTOS
update Wms_MTZ.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_MTZ.dbo.EstoqueGeral e right join Wms_MTZ.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F01.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F01.dbo.EstoqueGeral e right join Wms_F01.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F02.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F02.dbo.EstoqueGeral e right join Wms_F02.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F04.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F04.dbo.EstoqueGeral e right join Wms_F04.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F05.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F05.dbo.EstoqueGeral e right join Wms_F05.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F06.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F06.dbo.EstoqueGeral e right join Wms_F06.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F07.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F07.dbo.EstoqueGeral e right join Wms_F07.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F08.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F08.dbo.EstoqueGeral e right join Wms_F08.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F10.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F10.dbo.EstoqueGeral e right join Wms_F10.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F11.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F11.dbo.EstoqueGeral e right join Wms_F11.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F12.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F12.dbo.EstoqueGeral e right join Wms_F12.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F13.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F13.dbo.EstoqueGeral e right join Wms_F13.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F14.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F14.dbo.EstoqueGeral e right join Wms_F14.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F15.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F15.dbo.EstoqueGeral e right join Wms_F15.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F16.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F16.dbo.EstoqueGeral e right join Wms_F16.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F17.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F17.dbo.EstoqueGeral e right join Wms_F17.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F18.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F18.dbo.EstoqueGeral e right join Wms_F18.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F19.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F19.dbo.EstoqueGeral e right join Wms_F19.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F20.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F20.dbo.EstoqueGeral e right join Wms_F20.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F21.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F21.dbo.EstoqueGeral e right join  Wms_F21.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F22.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F22.dbo.EstoqueGeral e right join Wms_F22.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F23.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F23.dbo.EstoqueGeral e right join Wms_F23.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F24.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F24.dbo.EstoqueGeral e right join Wms_F24.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F25.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F25.dbo.EstoqueGeral e right join Wms_F25.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F26.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F26.dbo.EstoqueGeral e right join Wms_F26.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F27.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F27.dbo.EstoqueGeral e right join Wms_F27.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F28.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F28.dbo.EstoqueGeral e right join Wms_F28.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F30.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F30.dbo.EstoqueGeral e right join Wms_F30.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F31.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F31.dbo.EstoqueGeral e right join Wms_F31.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F32.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F32.dbo.EstoqueGeral e right join Wms_F32.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
update Wms_F33.dbo.Produto set Situacao=1,Bloqueado=0 from Wms_F33.dbo.EstoqueGeral e right join Wms_F33.dbo.Produto p on e.CodProd=p.CodProduto where p.Situacao is null
-- ATUALIZAR REFERENCIA DE ACORDO COM O FRENTE DE LOJA
update Wms_MTZ.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_MTZ.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F01.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F01.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F02.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F02.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F04.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F04.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F05.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F05.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F06.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F06.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F07.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F07.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F08.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F08.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F10.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F10.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F11.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F11.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F12.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F12.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F13.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F13.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F14.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F14.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F15.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F15.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F16.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F16.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F17.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F17.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F18.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F18.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F19.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F19.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F20.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F20.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F21.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F21.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F22.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F22.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F23.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F23.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F24.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F24.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F25.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F25.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F26.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F26.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F27.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F27.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F28.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F28.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F30.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F30.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F31.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F31.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F32.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F32.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F33.dbo.Produto set RefProd = t3.Ref from (select t2.cdprd,convert(varchar,t2.referencia)'Ref' from Wms_F33.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.RefProd COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.referencia  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
-- INSERIR REFERENCIA NA FRENTE DA DESCRIÇÃO
update Wms_MTZ.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_MTZ.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F01.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F01.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F02.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F02.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F04.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F04.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F05.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F05.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F06.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F06.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F07.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F07.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F08.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F08.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F10.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F10.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F11.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F11.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F12.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F12.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F13.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F13.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F14.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F14.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F15.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F15.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F16.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F16.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F17.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F17.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F18.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F18.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F19.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F19.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F20.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F20.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F21.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F21.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F22.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F22.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F23.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F23.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F24.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F24.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F25.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F25.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F26.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F26.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F27.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F27.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F28.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F28.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F30.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F30.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F31.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F31.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F32.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F32.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
update Wms_F33.dbo.Produto set DescProd = NewDesc from (select t2.cdprd,concat(t2.referencia,' ',t2.DEPRD) as 'NewDesc' from Wms_F33.dbo.Produto t1 join SAP_Central.DBO.tbl_produto t2 on t1.CodProduto =t2.cdprd where t1.DescProd COLLATE SQL_Latin1_General_CP1_CI_AI <> CONCAT(t2.referencia,' ',t2.DEPRD)  COLLATE SQL_Latin1_General_CP1_CI_AI) as t3 where CodProduto=t3.cdprd
--AJUSTAR CODIGO DOS MUNICIO NOS CADASTRO DO CLIENTE DE ACORDO COM CADASTRO NO FRENTE DE LOJA
update Wms_f04.dbo.Cliente set Cep=nrcepfat from Sap_Central.dbo.tbl_cliente where cdcli In (select t1.cdcli from Sap_Central.dbo.tbl_cliente t1 join Wms_f04.dbo.Cliente t2 on t1.cdcli=t2.CodCliente  where t1.nrcepfat collate SQL_Latin1_General_CP1_CI_AI <>t2.Cep  collate SQL_Latin1_General_CP1_CI_AI or t2.Cep is null) and cdcli=CodCliente
update Wms_f17.dbo.Cliente set Cep=nrcepfat from Sap_Central.dbo.tbl_cliente where cdcli In (select t1.cdcli from Sap_Central.dbo.tbl_cliente t1 join Wms_f17.dbo.Cliente t2 on t1.cdcli=t2.CodCliente  where t1.nrcepfat collate SQL_Latin1_General_CP1_CI_AI <>t2.Cep  collate SQL_Latin1_General_CP1_CI_AI or t2.Cep is null) and cdcli=CodCliente
update Wms_F19.dbo.Cliente set Cep=nrcepfat from Sap_Central.dbo.tbl_cliente where cdcli In (select t1.cdcli from Sap_Central.dbo.tbl_cliente t1 join Wms_F19.dbo.Cliente t2 on t1.cdcli=t2.CodCliente  where t1.nrcepfat collate SQL_Latin1_General_CP1_CI_AI <>t2.Cep  collate SQL_Latin1_General_CP1_CI_AI or t2.Cep is null) and cdcli=CodCliente
update Wms_F26.dbo.Cliente set Cep=nrcepfat from Sap_Central.dbo.tbl_cliente where cdcli In (select t1.cdcli from Sap_Central.dbo.tbl_cliente t1 join Wms_F26.dbo.Cliente t2 on t1.cdcli=t2.CodCliente  where t1.nrcepfat collate SQL_Latin1_General_CP1_CI_AI <>t2.Cep  collate SQL_Latin1_General_CP1_CI_AI or t2.Cep is null) and cdcli=CodCliente
update Wms_F31.dbo.Cliente set Cep=nrcepfat from Sap_Central.dbo.tbl_cliente where cdcli In (select t1.cdcli from Sap_Central.dbo.tbl_cliente t1 join Wms_F31.dbo.Cliente t2 on t1.cdcli=t2.CodCliente  where t1.nrcepfat collate SQL_Latin1_General_CP1_CI_AI <>t2.Cep  collate SQL_Latin1_General_CP1_CI_AI or t2.Cep is null) and cdcli=CodCliente
--AJUSTAR CODGIDO DOS BAIRRO NOS CADASTROS DOS CLIENTES DE ACORDO COM O CADASTRO DO FRENTE DE LOJA
update Wms_f04.dbo.Cliente set CodCidadeIbge=cdmunic from Sap_Central.dbo.tbl_cliente where cdcli In (select t1.cdcli from Sap_Central.dbo.tbl_cliente t1 join Wms_f04.dbo.Cliente t2 on t1.cdcli=t2.CodCliente  where t1.cdmunic <>t2.CodCidadeIbge or t2.CodCidadeIbge is null) and cdcli=CodCliente
update Wms_f17.dbo.Cliente set CodCidadeIbge=cdmunic from Sap_Central.dbo.tbl_cliente where cdcli In (select t1.cdcli from Sap_Central.dbo.tbl_cliente t1 join Wms_f17.dbo.Cliente t2 on t1.cdcli=t2.CodCliente  where t1.cdmunic <>t2.CodCidadeIbge or t2.CodCidadeIbge is null) and cdcli=CodCliente
update Wms_f19.dbo.Cliente set CodCidadeIbge=cdmunic from Sap_Central.dbo.tbl_cliente where cdcli In (select t1.cdcli from Sap_Central.dbo.tbl_cliente t1 join Wms_f19.dbo.Cliente t2 on t1.cdcli=t2.CodCliente  where t1.cdmunic <>t2.CodCidadeIbge or t2.CodCidadeIbge is null) and cdcli=CodCliente
update Wms_f26.dbo.Cliente set CodCidadeIbge=cdmunic from Sap_Central.dbo.tbl_cliente where cdcli In (select t1.cdcli from Sap_Central.dbo.tbl_cliente t1 join Wms_f26.dbo.Cliente t2 on t1.cdcli=t2.CodCliente  where t1.cdmunic <>t2.CodCidadeIbge or t2.CodCidadeIbge is null) and cdcli=CodCliente
update Wms_f31.dbo.Cliente set CodCidadeIbge=cdmunic from Sap_Central.dbo.tbl_cliente where cdcli In (select t1.cdcli from Sap_Central.dbo.tbl_cliente t1 join Wms_f31.dbo.Cliente t2 on t1.cdcli=t2.CodCliente  where t1.cdmunic <>t2.CodCidadeIbge or t2.CodCidadeIbge is null) and cdcli=CodCliente
--AJUSTAR NOME DAS RAZÕES SOCIAIS DOS CLIENTES ATACADOS E ATACAREJOS
update Wms_f04.dbo.Cliente set NomCliente=derazscl from Sap_Central.dbo.tbl_cliente where cdcli in (select t1.cdcli from Sap_Central.dbo.tbl_cliente t1 join Wms_f04.dbo.Cliente t2 on t1.cdcli=t2.CodCliente where t1.derazscl COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.NomCliente COLLATE SQL_Latin1_General_CP1_CI_AI) and cdcli=CodCliente
update WMS_F17.dbo.Cliente set NomCliente=derazscl from Sap_Central.dbo.tbl_cliente where cdcli in (select t1.cdcli from Sap_Central.dbo.tbl_cliente t1 join WMS_F17.dbo.Cliente t2 on t1.cdcli=t2.CodCliente where t1.derazscl COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.NomCliente COLLATE SQL_Latin1_General_CP1_CI_AI) and cdcli=CodCliente
update WMS_F19.dbo.Cliente set NomCliente=derazscl from Sap_Central.dbo.tbl_cliente where cdcli in (select t1.cdcli from Sap_Central.dbo.tbl_cliente t1 join WMS_F19.dbo.Cliente t2 on t1.cdcli=t2.CodCliente where t1.derazscl COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.NomCliente COLLATE SQL_Latin1_General_CP1_CI_AI) and cdcli=CodCliente
update WMS_F26.dbo.Cliente set NomCliente=derazscl from Sap_Central.dbo.tbl_cliente where cdcli in (select t1.cdcli from Sap_Central.dbo.tbl_cliente t1 join WMS_F26.dbo.Cliente t2 on t1.cdcli=t2.CodCliente where t1.derazscl COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.NomCliente COLLATE SQL_Latin1_General_CP1_CI_AI) and cdcli=CodCliente
update WMS_F31.dbo.Cliente set NomCliente=derazscl from Sap_Central.dbo.tbl_cliente where cdcli in (select t1.cdcli from Sap_Central.dbo.tbl_cliente t1 join WMS_F31.dbo.Cliente t2 on t1.cdcli=t2.CodCliente where t1.derazscl COLLATE SQL_Latin1_General_CP1_CI_AI <> t2.NomCliente COLLATE SQL_Latin1_General_CP1_CI_AI) and cdcli=CodCliente

