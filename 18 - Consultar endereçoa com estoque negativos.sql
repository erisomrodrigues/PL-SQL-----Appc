select  t2.Rua, t2.Predio,t1.Codprod,t1.CodEndereco,t1.CodEstEndereco,t1.QtdEstoque, * from EstEndereco t1 join Endereco t2 on t1.CodEndereco=t2.CodEndereco  where t1.QtdEstoque like '-%'
