-- Colocar as mesma informações do fornecedor para a transportadora --

use WMS_F14

select * from Fornecedor where CodFornecedor=500382
select * from Transportadora where CodTransportadora=500382

update Transportadora
set
	CodTransportadora = Fornecedor.CodFornecedor,
	NomeTransportadora = Fornecedor.NomeFornecedor,
	NomeFantasia = Fornecedor.NomeFantasia,
	Tipo = Fornecedor.Tipo,
	CpfCNPJ = Fornecedor.CNPJCPF,
	Endereco = Fornecedor.Endereco,
	NumEnd = Fornecedor.NumEndereco,
	Bairro = Fornecedor.Bairro,
	Cep = Fornecedor.Cep
from  Transportadora join fornecedor on Transportadora.CodTransportadora=Fornecedor.CodFornecedor where Transportadora.CodTransportadora=500404
