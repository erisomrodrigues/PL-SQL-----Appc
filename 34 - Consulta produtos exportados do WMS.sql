use WMS_F17

select CodBonus,CodTipoAlmoxarifado,DtGeracao from Etiqueta where CONVERT(DATE,DtGeracao) ='2023-03-22' and Situacao=3 and CodTipoAlmoxarifado <>8 order by CodBonus

/* Consulta produtos não movimentados do 1500 para o 1000*/

select t2.CodNotaFiscal,t1.CodBonusCab,t2.CodProduto,t2.QTD,t2.isExportadoERP,t2.Mov  from BonusNotaCab t1 join (
select CodNotaFiscal,CodProduto,convert(numeric,Quantidade,5)'QTD',isExportadoERP,convert(numeric,QtdExportada,5)'Mov' from NotaFiscalItemEntrada where CodNotaFiscal in (
select CodNotaFiscal from BonusNotaCab where CodBonusCab in (
select CodBonus from Etiqueta where CONVERT(DATE,DtGeracao) BETWEEN '2023-04-01' AND '2023-05-05' AND Situacao=3 and CodTipoAlmoxarifado =8))) as t2 on t1.CodNotaFiscal=t2.CodNotaFiscal
order by t1.CodBonusCab


select CodNotaFiscal,CodProduto,convert(numeric,Quantidade,5)'QTD',isExportadoERP,convert(numeric,QtdExportada,5)'Mov' from NotaFiscalItemEntrada where CodNotaFiscal in (
select CodNotaFiscal from BonusNotaCab where CodBonusCab in ('6977'))

/* Atualizar pro dia */
update NotaFiscalItemEntrada set QtdExportada=Quantidade, isExportadoERP=1 where CodNotaFiscal in (
select CodNotaFiscal from NotaFiscalItemEntrada where CodNotaFiscal in (
select CodNotaFiscal from BonusNotaCab where CodBonusCab in (
select CodBonus from Etiqueta where CONVERT(DATE,DtGeracao) ='2029-03-07' and Situacao=3 and CodTipoAlmoxarifado =8)))

/* Atualizar por bônus */
update NotaFiscalItemEntrada set QtdExportada=Quantidade where CodNotaFiscal in (
select CodNotaFiscal from NotaFiscalItemEntrada where CodNotaFiscal in (
select CodNotaFiscal from BonusNotaCab where CodBonusCab in ('6851','6846','6834')))

select CodNotaFiscal,CodProduto,convert(numeric,Quantidade,5)'QTD',isExportadoERP,convert(numeric,QtdExportada,5)'Mov' from NotaFiscalItemEntrada where CodNotaFiscal in (
select CodNotaFiscal from BonusNotaCab where CodBonusCab in

(select CodBonus from Movimentacao where convert(date,DtHoraExecucao) ='2023-04-05 00:00:00' and Tipo=5)


) order by QtdExportada,CodProduto

select t1.CodBonusCab,t1.NumNotaFiscal,t2.CodProduto,t2.QTD,t2.isExportadoERP,t2.Mov from BonusNotaCab t1 join (select CodNotaFiscal,CodProduto,convert(numeric,Quantidade,5)'QTD',isExportadoERP,convert(numeric,QtdExportada,5)'Mov' from NotaFiscalItemEntrada
where CodNotaFiscal in (select CodNotaFiscal from BonusNotaCab where CodBonusCab in (select CodBonus from Movimentacao where convert(date,DtHoraExecucao)
='2023-04-05 00:00:00' and Tipo=5))) as t2 on t1.CodNotaFiscal=t2.CodNotaFiscal order by t2.Mov


update BonusCab set isExportadoERP=1 where CodbonusCab=6950
