-- Replicação de fornecedores de um wms para outro WMS--
insert into Wms_F04.dbo.Fornecedor
select * from WMS_F31.dbo.Fornecedor p where not exists (
select * from Wms_F04.dbo.Fornecedor d where p.CodFornecedor=d.CodFornecedor
)
go
insert into WMS_F19.dbo.Fornecedor
select * from WMS_F31.dbo.Fornecedor p where not exists (
select * from WMS_F19.dbo.Fornecedor d where p.CodFornecedor=d.CodFornecedor
)
go
insert into WMS_F26.dbo.Fornecedor
select * from WMS_F31.dbo.Fornecedor p where not exists (
select * from Wms_F26.dbo.Fornecedor d where p.CodFornecedor=d.CodFornecedor
)
go
insert into WMS_F17.dbo.Fornecedor
select * from WMS_F31.dbo.Fornecedor p where not exists (
select * from WMS_F17.dbo.Fornecedor d where p.CodFornecedor=d.CodFornecedor
)
go

use WMS_F17

select * from wms_f17.dbo.Fornecedor where CodFornecedor=301270
select * from WMS_F19.dbo.Fornecedor where CodFornecedor=301270
select * from WMS_F26.dbo.Fornecedor where CodFornecedor=301270
select * from WMS_F31.dbo.Fornecedor where CodFornecedor=301270

