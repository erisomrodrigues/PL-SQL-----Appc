Use WMS_F02

-- Consultar produtos com estoque não ativos no cadastro --
select distinct (p.CodProduto),p.Bloqueado, e.EstoqueDisponivel from EstoqueGeral e inner join Produto p on e.CodProd=p.CodProduto where e.EstoqueDisponivel !=0 and p.Bloqueado is null

-- Update dos produtos com estoque não ativos no cadastro --
update Produto set Bloqueado=0 from EstoqueGeral e inner join Produto p on e.CodProd=p.CodProduto where e.EstoqueDisponivel !=0 and p.Bloqueado is null