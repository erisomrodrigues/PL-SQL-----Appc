use wms_F04

select * from Inventario t1 join InventarioItem t2 on t1.CodInventario=t2.CodInventario where t1.CodInventario in ('277')

update InventarioItem set DataHoraFin=null where CodInventario=1743
update Inventario set DataHoraFim=null where CodInventario=1743
update InventarioItem set DtValidade=DtValidade2 where CodInventario=277

update InventarioItem set DtValidade='2024-02-17 00:00:00.000' where CodInventario=804