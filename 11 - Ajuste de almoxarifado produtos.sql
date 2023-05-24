Use WMS_F31


-- COnsultar por bônus produtos e seus almoxarifados ---
select t1.CodProduto,t4.CodbonusCab,t1.CodAlmoxarifado from Produto t1 join (select t3.CodProduto,t2.CodbonusCab from BonusCab t2 join BonusNotaItem t3 on t2.CodbonusCab=t3.CodBonusCab where t2.CodbonusCab in (
'4229')) as t4 on t1.CodProduto=t4.CodProduto order by t4.CodbonusCab


-- Consulta produtos com almoxarifados preenchidos ---
select CodProduto,CodAlmoxarifado from Produto where CodAlmoxarifado is not null

-- Ajustar produtos com almoxarifados preenchidos --
update Produto set CodAlmoxarifado=NULL where CodAlmoxarifado is not null


select * from Produto where QtdCX =1



