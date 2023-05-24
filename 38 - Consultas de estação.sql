use wms_f06

/* Consulta número de estações */
select  distinct CodEstacao from Endereco

/* Consulta de produtos com estações */
select CodProd,t1.CodEndereco,CodEstacao,EstoqueDisponivel,CodTipoAlmoxarifado from EstoqueGeral t1 join (select  distinct CodEstacao,CodEndereco from Endereco where CodEndereco in (select CodEndereco from EstoqueGeral where EstoqueDisponivel <>0)) as t2
on t1.CodEndereco=t2.CodEndereco where t2.CodEstacao=4




