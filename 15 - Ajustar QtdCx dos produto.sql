use WMS_F26

-- Consulta de produto com QtdCx diferente de 1 --
select * from Produto where QtdCX is null or QtdCX !=1

select * from Produto where CodProduto=146909


-- Ajustar QtdCx diferente de 1 --
update Produto set QtdCX=1 where QtdCX is null or QtdCX !=1