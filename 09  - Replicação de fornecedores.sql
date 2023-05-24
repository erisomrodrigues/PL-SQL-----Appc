/* Replicar fornecedor por código de fornecedor
1ª Colocar qual filial deseja replicar o código
2ª Informar qual existe o código para ser replicado */
begin tran
insert into Wms_F04.dbo.Fornecedor select * from WMS_F05.dbo.Fornecedor f where f.CodFornecedor=1537646
rollback tran

/* Replicar todos os fornecedores não existente na loja*/

insert into WMS_F14.dbo.Fornecedor
select * from WMS_F05.dbo.Fornecedor p where not exists (
select * from WMS_F14.dbo.Fornecedor d where p.CodFornecedor=d.CodFornecedor)

select * from WMS_F16.dbo.Fornecedor where CodFornecedor=1023118