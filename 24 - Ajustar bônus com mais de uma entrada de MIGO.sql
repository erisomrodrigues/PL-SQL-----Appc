/* Ajustar bônus com quantidade erradas devido mais de uma entrada */

select * from NotaFiscalItemEntrada where CodNotaFiscal not in (select CodNotaFiscal from NotaFiscalEntrada) order by CodNotaFiscal

Delete from NotaFiscalItemEntrada where CodNotaFiscal not in (select CodNotaFiscal from NotaFiscalEntrada)