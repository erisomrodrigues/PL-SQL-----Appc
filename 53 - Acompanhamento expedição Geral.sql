WITH GERAL AS (
SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_MTZ.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_MTZ.dbo.PedidosItem T1 LEFT JOIN Wms_MTZ.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F01.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F01.dbo.PedidosItem T1 LEFT JOIN Wms_F01.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F02.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F02.dbo.PedidosItem T1 LEFT JOIN Wms_F02.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F04.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F04.dbo.PedidosItem T1 LEFT JOIN Wms_F04.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F05.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F05.dbo.PedidosItem T1 LEFT JOIN Wms_F05.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F06.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F06.dbo.PedidosItem T1 LEFT JOIN Wms_F06.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F07.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F07.dbo.PedidosItem T1 LEFT JOIN Wms_F07.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F08.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F08.dbo.PedidosItem T1 LEFT JOIN Wms_F08.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F10.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F10.dbo.PedidosItem T1 LEFT JOIN Wms_F10.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F11.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F11.dbo.PedidosItem T1 LEFT JOIN Wms_F11.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F12.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F12.dbo.PedidosItem T1 LEFT JOIN Wms_F12.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F13.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F13.dbo.PedidosItem T1 LEFT JOIN Wms_F13.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F14.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F14.dbo.PedidosItem T1 LEFT JOIN Wms_F14.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F15.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F15.dbo.PedidosItem T1 LEFT JOIN Wms_F15.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F16.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F16.dbo.PedidosItem T1 LEFT JOIN Wms_F16.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F17.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F17.dbo.PedidosItem T1 LEFT JOIN Wms_F17.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F18.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F18.dbo.PedidosItem T1 LEFT JOIN Wms_F18.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F19.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F19.dbo.PedidosItem T1 LEFT JOIN Wms_F19.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F20.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F20.dbo.PedidosItem T1 LEFT JOIN Wms_F20.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F21.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F21.dbo.PedidosItem T1 LEFT JOIN Wms_F21.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F22.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F22.dbo.PedidosItem T1 LEFT JOIN Wms_F22.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F23.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F23.dbo.PedidosItem T1 LEFT JOIN Wms_F23.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F24.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F24.dbo.PedidosItem T1 LEFT JOIN Wms_F24.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F25.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F25.dbo.PedidosItem T1 LEFT JOIN Wms_F25.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F26.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F26.dbo.PedidosItem T1 LEFT JOIN Wms_F26.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F27.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F27.dbo.PedidosItem T1 LEFT JOIN Wms_F27.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F28.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F28.dbo.PedidosItem T1 LEFT JOIN Wms_F28.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F30.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F30.dbo.PedidosItem T1 LEFT JOIN Wms_F30.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F31.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F31.dbo.PedidosItem T1 LEFT JOIN Wms_F31.dbo.Corte T2 
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab union

SELECT T3.CodFilial,T3.NumDocumento,T4.CodPedidoCab,T4.CodProduto,convert(numeric,QtdProduto,7)'Qtd Pedido',[Qtd Cortada],convert(numeric,(QtdProduto-[Qtd Cortada]),7)'Qtd Atendida',DtGeracao,DtExpedicao,Situacao,TipoPedido,DescConsumidor,Exportar,TipoDoc
FROM Wms_F32.dbo.PedidosCab T3 JOIN (SELECT T1.CodPedidoCab,T1.CodProduto,QtdProduto,CASE WHEN CodMotivoCorte IS NOT NULL THEN convert(numeric,QtdCortada,7) ELSE 0 END 'Qtd Cortada'FROM Wms_F32.dbo.PedidosItem T1 LEFT JOIN Wms_F32.dbo.Corte T2
ON T1.CodPedidoCab=T2.CodPedido) AS T4 ON T3.CodPedidoCab=T4.CodPedidoCab)
 SELECT 
 CASE
WHEN CodFilial = 1 THEN 'F001 Bezerra (CE) (V)'
WHEN CodFilial = 3 THEN 'F007 Comercial (CE) (V)'
WHEN CodFilial = 6 THEN 'F000 Matriz (CE) (V)'
WHEN CodFilial = 8 THEN 'F004 Atacado (CE) (A) (CD)'
WHEN CodFilial = 16 THEN 'F011 M Salazar (CE) (V)'
WHEN CodFilial = 18 THEN 'F012 Tabuleta (PI) (V)'
WHEN CodFilial = 22 THEN 'F016 M Rosa (PI) (V)'
WHEN CodFilial = 24 THEN 'F017 Maranguape (CE) (A) (CD)'
WHEN CodFilial = 26 THEN 'F023 Comprida (PI) (V)'
WHEN CodFilial = 50 THEN 'F024 Osorio P (CE) (V)'
WHEN CodFilial = 51 THEN 'F025 Real Copagre (PI) (V)'
WHEN CodFilial = 10 THEN 'F008 H Jorge (CE) (V)'
WHEN CodFilial = 20 THEN 'F014 Tintas (CE) (V)'
WHEN CodFilial = 23 THEN 'F018 Bosch (CE) (A)'
WHEN CodFilial = 46 THEN 'F021 Natal (RN) (V)'
WHEN CodFilial = 5 THEN 'F006 Importados (CE) (V)'
WHEN CodFilial = 25 THEN 'F019 Teresina (PI) (A) (CD)'
WHEN CodFilial = 2 THEN 'F002 Ant.Sales (CE) (V)'
WHEN CodFilial = 19 THEN 'F013 Maracanau (CE) (V)'
WHEN CodFilial = 52 THEN 'F026 Atacado RN (RN) (A) (CD)'
WHEN CodFilial = 54 THEN 'F027 Messejana 2 (CE) (V)'
WHEN CodFilial = 56 THEN 'F030 Garantia (CE)'
WHEN CodFilial = 58 THEN 'F032 Papicu (CE) (V)'
WHEN CodFilial = 15 THEN 'F010 Ol Paiva (CE) (V)'
WHEN CodFilial = 21 THEN 'F015 Atacadinho (PI) (A)'
WHEN CodFilial = 44 THEN 'F020 Jose Walter (CE) (V)'
WHEN CodFilial = 49 THEN 'F022 Caucaia (CE) (V)'
WHEN CodFilial = 55 THEN 'F028 Barra do Ceara (CE) (V)'
WHEN CodFilial = 4 THEN 'F005 Messejana (CE) (V)'
WHEN CodFilial = 57 THEN 'F031 Recife (PI) (V)'
ELSE 'Sem '
END AS 'Lojas',* FROM GERAL WHERE TipoPedido='Transferencia' and DtGeracao >='2023-08-2'





