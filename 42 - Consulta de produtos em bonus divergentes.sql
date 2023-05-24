use WMS_F17


select t1.CodbonusCab,t2.CodProduto,convert(numeric,t2.QTD,5)'Qtd',convert(numeric,t2.QtdContado,5)'QtdCont',t1.DtGeracao from BonusCab t1 join 
(select CodBonusCab,CodProduto,QTD,QtdContado from BonusNotaItem where QtdContado <> QTD) as t2 on t1.CodbonusCab=t2.CodBonusCab where t1.Status=5 order by t1.CodbonusCab
