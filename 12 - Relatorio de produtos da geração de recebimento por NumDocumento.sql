use WMS_F17

select t3.NumDocumento,t3.CodFornecedor,t3.NumNotaFiscal,f.NomeFornecedor,t3.CodProduto,convert(int,t3.Quantidade,3) 'Qtd',t3.ValTotNotaFiscal,t3.DtEmissao from Fornecedor f join (select t2.NumDocumento,t2.CodFornecedor,t2.NumNotaFiscal,t1.CodProduto,t1.Quantidade,t2.ValTotNotaFiscal,t2.DtEmissao from
NotaFiscalItemEntrada t1 join NotaFiscalEntrada t2 on t1.CodNotaFiscal=t2.CodNotaFiscal  where t2.NumDocumento in (
'4922164990'

)) as t3 on f.CodFornecedor=t3.CodFornecedor order by DtEmissao

