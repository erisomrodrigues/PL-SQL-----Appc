/* Replicar fornecedor por c�digo de fornecedor
1� Colocar qual filial deseja replicar o c�digo
2� Informar qual existe o c�digo para ser replicado */
begin tran
insert into Wms_F04.dbo.Fornecedor select * from WMS_F05.dbo.Fornecedor f where f.CodFornecedor=1537646
rollback tran

/* Replicar todos os fornecedores n�o existente na loja*/

insert into WMS_F14.dbo.Fornecedor
select * from WMS_F05.dbo.Fornecedor p where not exists (
select * from WMS_F14.dbo.Fornecedor d where p.CodFornecedor=d.CodFornecedor)

select * from WMS_F16.dbo.Fornecedor where CodFornecedor=1023118