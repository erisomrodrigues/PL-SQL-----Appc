Use WMS_F14

-- Ajustar QtdCx do cadastro dos produtos
update Produto set QtdCX=1 where QtdCX is null or QtdCX !=1
go
-- Ajustar almoxarifados do cadastros dos produtos
update Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null
go
-- Ajustar produtos não ativos no cadastro de produtos
update Produto set Bloqueado=0 from EstoqueGeral e inner join Produto p on e.CodProd=p.CodProduto where e.EstoqueDisponivel !=0 and p.Bloqueado is null
go
-- Ajustar produtos com estoque sem mapeamento
update DadosLogistica set CodEnderecoFracionado=CodEndereco from EstoqueGeral e inner join DadosLogistica d on e.CodProd=d.Codprod
where e.EstoqueDisponivel!=0 and d.CodEnderecoFracionado is null