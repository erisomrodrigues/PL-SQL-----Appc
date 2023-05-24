use wms_F19

select * from Inventario where CodInventario in ('662','663')

update Inventario set Situacao=1 where CodInventario=663



-- Quando o item é sicronizado automaticamente --

select * from InventarioItem where CodInventario in ('965','967')

update InventarioItem set Sincronizado=2 where CodInventario in ('965','967')