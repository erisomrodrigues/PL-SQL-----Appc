-- Update de bloqueado 1 para bloqueado 0 nos endereços bloqueados -----------------------------

use WMS_F19

select * from EstoqueGeral t1 join Endereco t2 on t1.CodEndereco=t2.CodEndereco where t1.EstoqueDisponivel !=0 and t2.Bloqueado !=0


update Endereco set Bloqueado=0 from EstoqueGeral t1 join Endereco t2 on t1.CodEndereco=t2.CodEndereco where t1.EstoqueDisponivel !=0 and t2.Bloqueado !=0




