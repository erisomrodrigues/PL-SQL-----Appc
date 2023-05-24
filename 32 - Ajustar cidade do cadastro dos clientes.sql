use WMS_F31

/* Consultar clientes sem cadastro da cidade */
select distinct t1.CodCliente from Cliente t1 join PedidosCab t2 on t1.CodCliente=t2.CodCliente where t2.DtExpedicao >='2022-01-01' and
t1.CodCidadeIbge is null

/* Consultar clientes de transportadora com CEP diferente do frente de loja/SAP */
select distinct t3.cdcli,t3.derazscl,t3.cdmunic,nrcepfat,t4.CodCidadeIbge,t4.Cep,t4.TipoPedido from Sap_Central.dbo.tbl_cliente t3 join (
select t1.CodCliente,t1.CodCidadeIbge,t1.Cep,t2.TipoPedido from Cliente t1 join PedidosCab t2 on t1.CodCliente=t2.CodCliente where t2.DtExpedicao >='2023-01-01') as t4 on t3.cdcli=t4.CodCliente
where t3.nrcepfat collate SQL_Latin1_General_CP1_CI_AI <> t4.Cep collate SQL_Latin1_General_CP1_CI_AI and t4.TipoPedido like '%transp%'


/* Ajustar cidade dos cadastro */
update Cliente set CodCidadeIbge=cdmunic from Sap_Central.dbo.tbl_cliente where CodCliente in (
select distinct t1.CodCliente from Cliente t1 join PedidosCab t2 on t1.CodCliente=t2.CodCliente where t2.DtExpedicao >='2022-01-01' and
t1.CodCidadeIbge is null)
