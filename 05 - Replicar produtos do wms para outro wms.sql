-- Replicação de subgrupos,grupos e produtos de um wms para outro WMS--
insert into WMS_F19.dbo.SubGrupo
select * from Wms_F04.dbo.SubGrupo p where not exists (
select * from WMS_F19.dbo.SubGrupo d where p.CodSubGrupo=d.CodSubGrupo
)
go

    insert into WMS_F19.dbo.Grupo
select * from Wms_F04.dbo.Grupo p where not exists (
select * from WMS_F19.dbo.Grupo d where p.CodGrupo=d.CodGrupo
)
go

insert into WMS_F19.dbo.Produto
select * from Wms_F04.dbo.Produto p where not exists (
select * from WMS_F19.dbo.Produto d where p.CodProduto=d.CodProduto
)
go
