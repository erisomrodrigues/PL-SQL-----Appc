/* Orienta��es
Passo 1� Identifique quais b�nus deseja deletar
Passo 2� Pelo CodBonusNotaCab identifique quais s�o os c�digos dos relatorio.
Passo 3� Realize o delete apenas nos relatorio errados.
Passo 4� Realize o delete pelo n�mero de CodBonusCab
*/
--Selecione a loja--
Use WMS_F32

-- Consulta notas 
select t2.Rep,t1.CodBonusCab,t2.NumNotaFiscal,t2.CodFornecedor,t1.CodNotaFiscal from BonusNotaCab t1 join (select count(NumNotaFiscal)'Rep',NumNotaFiscal,CodFornecedor from BonusNotaCab where NumNotaFiscal is not null group by
NumNotaFiscal,CodFornecedor having count(NumNotaFiscal) !=1) as t2 on t1.NumNotaFiscal=t2.NumNotaFiscal order by t1.NumNotaFiscal

-- Deletar b�nus
DELETE FROM BonusNotaCab WHERE CodBonusCab in (
'12359')


select CodBonusNotaCab,* from BonusCab t1 join BonusNotaCab t2 on t1.CodbonusCab=t2.CodBonusCab where t1.CodbonusCab in ('0')

--Consulta por nota fiscal--
select * from BonusNotaCab b join Fornecedor f on b.CodFornecedor=f.CodFornecedor where b.NumNotaFiscal in ('5545549')

-- Consultar pelo c�digo do b�nus
SELECT * FROM BonusNotaCab b join fornecedor f on b.CodFornecedor=f.CodFornecedor where  b.CodBonusCab in ('314')

-- Consultar c�digos dos relatorio dos b�nus
SELECT * FROM BonusRel WHERE CodBonusNotaCab in ('0')

-- Deletar relatorio 
Delete from BonusRel where CodBonusRel in  (
'0')
