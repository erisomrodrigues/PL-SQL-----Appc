use WMS_F26

select top 5 * from (select t1.CodProduto,t2.NumDocumento,t2.Situacao,t2.DtGeracao from PedidosItem t1 join PedidosCab t2 on t1.CodPedidoCab=t2.CodPedidoCab where t2.Situacao=4) as t3 join

(select distinct eg.CodProd,eg.EstoqueDisponivel, dl.CodLogistico from EstoqueGeral eg left join DadosLogistica dl on (eg.CodProd=dl.Codprod)
where eg.EstoqueDisponivel>0 and dl.CodLogistico is null) as t4 on t3.CodProduto=t4.CodProd





