use WMS_F01

select CodNotaFiscal,NumNotaFiscal,CodFornecedor,StatusConf,NumDocumento,DocumentoAno from NotaFiscalEntrada where NumNotaFiscal in (
select t2.NumNotaFiscal from BonusNotaCab t1 join (
select count(NumNotaFiscal) as 'N',NumNotaFiscal,CodFornecedor from NotaFiscalEntrada group by NumNotaFiscal,CodFornecedor
having count(NumNotaFiscal) >1) as t2 on t1.NumNotaFiscal=t2.NumNotaFiscal) and StatusConf=1 order by NumNotaFiscal

delete from NotaFiscalEntrada where CodNotaFiscal in (
'25075',
'25330',
'25331',
'25249',
'25417',
'25418',
'25305',
'25306',
'25307',
'25308',
'25309',
'25310',
'25311',
'25312',
'25313',
'25314',
'26372',
'25334',
'25335',
'25332',
'25333',
'25389',
'25390',
'25350',
'25351',
'25213',
'25396',
'25279',
'25391',
'25392',
'25221',
'25399',
'25222',
'25401',
'25083',
'25347',
'25348',
'25349',
'25434',
'25435',
'25431',
'25432',
'25454',
'25455')







