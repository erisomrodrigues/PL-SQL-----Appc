use WMS_F22

/* Consultar bônus incorretos */
select t4.CodBonusCab,t4.CodFornecedor,t4.CodNotaFiscal,t4.DataRecebimento,t4.NumDocumento,t4.NumNotaFiscal,t3.Status,t4.CodBonusNotaCab from BonusCab t3 join (
select t1.CodNotaFiscal,t1.NumNotaFiscal,t1.CodFornecedor,t1.NumDocumento,t2.CodBonusCab,t2.DataRecebimento,t2.CodBonusNotaCab from NotaFiscalEntrada t1 join BonusNotaCab t2
on t1.CodNotaFiscal=t2.CodNotaFiscal where t1.CodFornecedor <=9999) as t4 on t3.CodBonusCab=t4.CodBonusCab where t3.Status=1


select * from BonusNotaCab where CodBonusNotaCab=59782
select * from Etiqueta where CodBonus=41072
select * from BonusRel where CodNotaFiscal=70165


delete from BonusNotaCab where CodBonusNotaCab=59782
delete from Etiqueta where CodBonus=41072
delete from BonusRel where CodNotaFiscal=70165


delete from Etiqueta where CodBonus in (
select t4.CodBonusCab from BonusCab t3 join (
select t1.CodNotaFiscal,t1.NumNotaFiscal,t1.CodFornecedor,t1.NumDocumento,t2.CodBonusCab,t2.DataRecebimento,t2.CodBonusNotaCab from NotaFiscalEntrada t1 join BonusNotaCab t2
on t1.CodNotaFiscal=t2.CodNotaFiscal where t1.CodFornecedor <=9999) as t4 on t3.CodBonusCab=t4.CodBonusCab where t3.Status=1)

delete from BonusNotaCab where CodBonusNotaCab in (
select t4.CodBonusNotaCab from BonusCab t3 join (
select t1.CodNotaFiscal,t1.NumNotaFiscal,t1.CodFornecedor,t1.NumDocumento,t2.CodBonusCab,t2.DataRecebimento,t2.CodBonusNotaCab from NotaFiscalEntrada t1 join BonusNotaCab t2
on t1.CodNotaFiscal=t2.CodNotaFiscal where t1.CodFornecedor <=9999) as t4 on t3.CodBonusCab=t4.CodBonusCab where t3.Status=1)

delete from BonusRel where CodNotaFiscal in (
select t4.CodNotaFiscal from BonusCab t3 join (
select t1.CodNotaFiscal,t1.NumNotaFiscal,t1.CodFornecedor,t1.NumDocumento,t2.CodBonusCab,t2.DataRecebimento,t2.CodBonusNotaCab from NotaFiscalEntrada t1 join BonusNotaCab t2
on t1.CodNotaFiscal=t2.CodNotaFiscal where t1.CodFornecedor <=9999) as t4 on t3.CodBonusCab=t4.CodBonusCab where t3.Status=1)

select t4.CodBonusCab from  BonusCab t3 join (
select t1.CodNotaFiscal,t1.NumNotaFiscal,t1.CodFornecedor,t1.NumDocumento,t2.CodBonusCab,t2.DataRecebimento from NotaFiscalEntrada t1 join BonusNotaCab t2
on t1.CodNotaFiscal=t2.CodNotaFiscal where t1.CodFornecedor <=9999) as t4 on t3.CodBonusCab=t4.CodBonusCab where t3.Status=1)
