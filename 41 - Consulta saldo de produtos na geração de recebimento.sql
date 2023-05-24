use WMS_F19


select t4.CodProduto,t4.Qtd,t4.CodNotaFiscal,t4.CodBonusCab,t4.NumNotaFiscal'NFe',t3.NumNotaFiscal'NFeG',t3.CodFornecedor'CodFornE',t4.CodFornG,t4.CodFornB,t4.QtdExp,t3.DtEmissao,t3.Status,t3.StatusConf,t3.NumDocumento
from NotaFiscalEntrada t3 join (select t1.CodNotaFiscal,t2.CodBonusCab,t2.NumNotaFiscal,t1.CodProduto,t1.CodFornecedor'CodFornG',t2.CodFornecedor'CodFornB',convert(numeric,t1.Quantidade,5)'Qtd',convert(numeric,t1.QtdExportada,5)'QtdExp'
from NotaFiscalItemEntrada t1 left join  BonusNotaCab t2 on t1.CodNotaFiscal=t2.CodNotaFiscal where t2.CodBonusCab is null) as t4 on t3.CodNotaFiscal=t4.CodNotaFiscal order by t4.CodProduto



select t4.CodProduto,t4.Qtd,t4.CodNotaFiscal,t4.CodBonusCab,t4.CodFornG,t4.NumNotaFiscal,t4.CodFornB,t4.QtdExp
from BonusCab t3 join (
select t1.CodProduto,convert(numeric,t1.Quantidade,5)'Qtd',t1.CodNotaFiscal,t2.CodBonusCab,t1.CodFornecedor'CodFornG',t2.NumNotaFiscal,t2.CodFornecedor'CodFornB',convert(numeric,t1.QtdExportada,5)'QtdExp'
from NotaFiscalItemEntrada t1 right join  BonusNotaCab t2 on t1.CodNotaFiscal=t2.CodNotaFiscal where t2.CodBonusCab is not null) as t4 on t3.CodbonusCab=t4.CodBonusCab where t3.Status <>5



select CodProduto,convert(numeric,Quantidade,5) from NotaFiscalItemEntrada where CodNotaFiscal in (
select CodNotaFiscal from NotaFiscalEntrada where NumNotaFiscal in ('580354')) order by CodProduto

