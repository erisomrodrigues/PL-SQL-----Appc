Use WMS_F19

-- Consultar produtos com etiquetas inutilizadas

select CodDeposito,CodProd,CodEtiqueta,tipo,CodTipoEnd,EstoqueDisponivel,rua,predio,nivel,apto from EstoqueGeral where CodTipoEnd=4 and EstoqueDisponivel !=0 and  CodEtiqueta is null


-- Consultar o endere�o --
select CodDeposito,CodTipoEnd from Endereco where CodEndereco in ('')

-- Alterar o tipo de endere�o de 4 para 0 --
-- Depois que fizerem o ajustes dos produto, volta para o antigo tipo de endere�o --

update Endereco set CodTipoEnd ='0' where CodEndereco in ('')