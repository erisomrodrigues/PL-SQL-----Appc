-- Consultar n�mero de endere�os --
select count(d.Codprod)'Qtd endere�os' from EstoqueGeral e inner join DadosLogistica d on e.CodProd=d.Codprod where EstoqueDisponivel !=0 and CodEnderecoFracionado is null

--Consultar produtos sem repetir--
select distinct d.Codprod from EstoqueGeral e inner join DadosLogistica d on e.CodProd=d.Codprod where EstoqueDisponivel !=0 and CodEnderecoFracionado is null order by d.Codprod

--Consulta os produtos com mais de um endere�o--
 select d.Codprod, COUNT(e.CodProd)'Repeti��es' from EstoqueGeral e inner join DadosLogistica d on e.CodProd=d.Codprod where EstoqueDisponivel !=0 and CodEnderecoFracionado is null
 group by d.CodProd having count(e.CodProd)!=1

--Update de produtos n�o mapeados para mapeados--
update WMS_F26.dbo.DadosLogistica set CodEnderecoFracionado=CodEndereco from EstoqueGeral e inner join DadosLogistica d on e.CodProd=d.Codprod
where e.EstoqueDisponivel!=0 and d.CodEnderecoFracionado is null


use Wms_MTZ




