use Wms_MTZ

select mv.CodProduto,p.DescProd,p.RefProd,mv.QtdMovimentada,mv.Data,mv.Hora,mv.LoginUsuario from Produto p join (select m.CodProduto, m.QtdMovimentada,convert(date,m.DtHoraExecucao)'Data',left(convert(time, m.DtHoraExecucao), 8)'Hora', u.LoginUsuario from Movimentacao m join Usuario u on m.CodUsuarioExecucao=u.CodUsuario where m.Tipo=10)
as mv on p.CodProduto=mv.CodProduto where mv.Data between '2022-11-04' and '2022-11-05' order by mv.Data,mv.Hora