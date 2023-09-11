-- GERAL --
select t6.CodFilial,t6.CodBonusCab,t6.CodFornecedor,t6.NomeFantasia,t6.DataRecebimento,t5.DataArm from (
select distinct t1.CodbonusCab,t2.Situacao,Max(convert(date,t2.DtHoraExecucao))'DataArm' from BonusCab t1 join Movimentacao t2 on t1.CodbonusCab=t2.CodBonus where t2.Situacao=1 group by t1.CodbonusCab,t2.Situacao,t2.DtHoraExecucao
) as t5 join (
select distinct t3.CodBonusCab,t3.CodFornecedor,t4.NomeFantasia,t3.CodFilial,t3.DataRecebimento from BonusNotaCab t3 join Fornecedor t4 on t3.CodFornecedor=t4.CodFornecedor
) as t6 on t5.CodbonusCab=t6.CodBonusCab where t5.DataArm between ('2023-06-06') and ('2023-06-06') order by t6.NomeFantasia


-- COMPRAS --	
select distinct t6.CodFilial,t6.NomeFantasia,t5.DataArm from (
select distinct t1.CodbonusCab,t2.Situacao,Max(convert(date,t2.DtHoraExecucao))'DataArm' from BonusCab t1 join Movimentacao t2 on t1.CodbonusCab=t2.CodBonus where t2.Situacao=1 group by t1.CodbonusCab,t2.Situacao,t2.DtHoraExecucao
) as t5 join (
select distinct t3.CodBonusCab,t3.CodFornecedor,t4.NomeFantasia,t3.CodFilial,t3.DataRecebimento from BonusNotaCab t3 join Fornecedor t4 on t3.CodFornecedor=t4.CodFornecedor where t3.CodFornecedor is not null and t3.CodFornecedor <999999
) as t6 on t5.CodbonusCab=t6.CodBonusCab where t5.DataArm between ('2023-01-07') and ('2023-06-07') order by t6.NomeFantasia




use WMS_F31
