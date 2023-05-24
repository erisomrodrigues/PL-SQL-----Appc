
/* Mudança de status pedidos de varejo

Situação 7 - FINALIZADO
Situação 8 - EXPORTADO

*/

select * from PedidosCab where NumDoc in ('340016','340015')

update PedidosCab set Situacao =8 where CodPedidoCab=1089017