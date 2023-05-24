use WMS_F17

/* Consulta por dia*/
select t5.Status,t6.CodBonusCab,t6.NumNotaFiscal,t5.isExportadoERP,t6.CodProduto,t6.QTD,t6.Mov from BonusCab t5 join (
select t1.CodBonusCab,t1.NumNotaFiscal,t2.CodProduto,t2.QTD,t2.isExportadoERP,t2.Mov from BonusNotaCab t1 join (
select CodNotaFiscal,CodProduto,convert(numeric,Quantidade,5)'QTD',isExportadoERP,convert(numeric,QtdExportada,5)'Mov'
from NotaFiscalItemEntrada where CodNotaFiscal in (
select CodNotaFiscal from BonusNotaCab where CodBonusCab in (
select CodBonus from Movimentacao where convert(date,DtHoraExecucao)between '2023-04-01 00:00:00' and '2023-04-19 00:00:00' and Tipo=5))) as t2 on t1.CodNotaFiscal=t2.CodNotaFiscal
where t2.Mov is null) as t6 on t5.CodbonusCab=t6.CodBonusCab where t5.Status=5

/* Consulta por código de bônus */

select t5.Status,t6.CodBonusCab,t6.NumNotaFiscal,t5.isExportadoERP,t6.CodProduto,t6.QTD,t6.Mov from BonusCab t5 join (
select t1.CodBonusCab,t1.NumNotaFiscal,t2.CodProduto,t2.QTD,t2.isExportadoERP,t2.Mov from BonusNotaCab t1 join (
select CodNotaFiscal,CodProduto,convert(numeric,Quantidade,5)'QTD',isExportadoERP,convert(numeric,QtdExportada,5)'Mov'
from NotaFiscalItemEntrada where CodNotaFiscal in (
select CodNotaFiscal from BonusNotaCab where CodBonusCab in (
select CodBonus from Movimentacao where Tipo=5))) as t2 on t1.CodNotaFiscal=t2.CodNotaFiscal)
as t6 on t5.CodbonusCab=t6.CodBonusCab where t6.CodBonusCab in ('9665')  order by Mov

/* Ajuste por código de bônus */
update NotaFiscalItemEntrada set QtdExportada=Quantidade where CodNotaFiscal in (
select CodNotaFiscal from NotaFiscalItemEntrada where CodNotaFiscal in (
select CodNotaFiscal from BonusNotaCab where CodBonusCab in (
'')))

/* Ajuste por dia */
update NotaFiscalItemEntrada set QtdExportada=Quantidade, isExportadoERP=1 where CodNotaFiscal in (
select CodNotaFiscal from NotaFiscalItemEntrada where CodNotaFiscal in (
select CodNotaFiscal from BonusNotaCab where CodBonusCab in (
select CodBonus from Etiqueta where CONVERT(DATE,DtGeracao) ='2029-03-07' and Situacao=3 and CodTipoAlmoxarifado =8)))
