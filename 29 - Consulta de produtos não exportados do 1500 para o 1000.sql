use WMS_F19

/* Consulta de produto não exportados para o WMS */
select t6.CodBonusCab,t6.CodNotaFiscal,t6.CodProduto,t6.NumNotaFiscal,t6.CodFornecedor,t6.QtdExportada,t6.Quantidade,t6.StatusConf,t5.Status,isExportadoERP,t5.DtGeracao from
BonusCab t5 join (
select t3.CodBonusCab,t3.CodNotaFiscal,t4.NumNotaFiscal,t4.CodFornecedor,t4.CodProduto,t4.Quantidade,t4.QtdExportada,t4.StatusConf from
BonusNotaCab t3 join (
select t1.CodNotaFiscal,t1.NumNotaFiscal,t1.CodFornecedor,t2.CodProduto,Quantidade,t2.QtdExportada,StatusConf from
NotaFiscalEntrada t1 join NotaFiscalItemEntrada t2 on t1.CodNotaFiscal=t2.CodNotaFiscal) as t4 on t3.CodNotaFiscal=t4.CodNotaFiscal
) as t6 on t5.CodbonusCab=t6.CodBonusCab where QtdExportada is not null order by t5.Status


/* Consulta de produto não exportados para o WMS 
0 - Contando
5 - Finalizado
7 - Aguardando armazenagem

*/
select t6.CodBonusCab,t6.CodNotaFiscal,t6.CodProduto,t6.NumNotaFiscal,t6.CodFornecedor,t6.QtdExportada,t6.Quantidade,t6.StatusConf,t5.Status,isExportadoERP,t5.DtGeracao from
BonusCab t5 join (
select t3.CodBonusCab,t3.CodNotaFiscal,t4.NumNotaFiscal,t4.CodFornecedor,t4.CodProduto,t4.Quantidade,t4.QtdExportada,t4.StatusConf from
BonusNotaCab t3 join (
select t1.CodNotaFiscal,t1.NumNotaFiscal,t1.CodFornecedor,t2.CodProduto,Quantidade,t2.QtdExportada,StatusConf from
NotaFiscalEntrada t1 join NotaFiscalItemEntrada t2 on t1.CodNotaFiscal=t2.CodNotaFiscal) as t4 on t3.CodNotaFiscal=t4.CodNotaFiscal
) as t6 on t5.CodbonusCab=t6.CodBonusCab where DtGeracao between '2023-01-01' and '2023-01-30' and QtdExportada is null




update BonusCab set isExportadoERP=


update NotaFiscalItemEntrada set QtdExportada=Quantidade,isExportadoERP=1 where CodNotaFiscal in (
select t6.CodNotaFiscal from
BonusCab t5 join (
select t3.CodBonusCab,t3.CodNotaFiscal,t4.NumNotaFiscal,t4.CodFornecedor,t4.CodProduto,t4.Quantidade,t4.QtdExportada,t4.StatusConf from
BonusNotaCab t3 join (
select t1.CodNotaFiscal,t1.NumNotaFiscal,t1.CodFornecedor,t2.CodProduto,Quantidade,t2.QtdExportada,StatusConf from
NotaFiscalEntrada t1 join NotaFiscalItemEntrada t2 on t1.CodNotaFiscal=t2.CodNotaFiscal) as t4 on t3.CodNotaFiscal=t4.CodNotaFiscal
) as t6 on t5.CodbonusCab=t6.CodBonusCab where DtGeracao between '2022-06-30' and '2022-12-30' and QtdExportada is null)