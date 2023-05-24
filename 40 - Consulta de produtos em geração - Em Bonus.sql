use WMS_F17

select CodProduto,convert(numeric,QTD,7) as 'Qt',CodBonusCab from BonusNotaItem as t1 where CodBonusCab in (
select CodbonusCab from BonusCab where Status <>5) order by CodBonusCab


select CodProduto,sum(convert(numeric,QTD,3))'Qtd' from BonusNotaItem as t1 where CodBonusCab in (
select CodbonusCab from BonusCab where Status <>5) group by t1.CodProduto


select t2.CodBonusCab,t2.CodProduto,t2.Qt,t1.Status,t1.DtGeracao,t1.isExportadoERP from BonusCab t1 join (
select CodProduto,convert(numeric,QTD,7) as 'Qt',CodBonusCab from BonusNotaItem as t1 where CodBonusCab in (
select CodbonusCab from BonusCab where Status <>5)) as t2 on t1.CodbonusCab=t2.CodBonusCab where DtGeracao >='2023-01-01' order by DtGeracao

select distinct t2.CodBonusCab,t1.Status,t1.DtGeracao from BonusCab t1 join (
select CodProduto,convert(numeric,QTD,7) as 'Qt',CodBonusCab from BonusNotaItem as t1 where CodBonusCab in (
select CodbonusCab from BonusCab where Status <>5)) as t2 on t1.CodbonusCab=t2.CodBonusCab where DtGeracao >='2023-01-01' order by DtGeracao



