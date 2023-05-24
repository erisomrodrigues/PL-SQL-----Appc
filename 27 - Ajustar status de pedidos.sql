use WMS_F20


/* Status

7 - Finalizado
8 - Exportado

*/

select * from PedidosCab where NumDoc in ('68725')
select NumDoc,* from PedidosCab where CodPedidoCab in ('1073274')

update PedidosCab set Situacao=8 where NumDoc='361417'

