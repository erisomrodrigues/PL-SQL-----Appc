-- Replicar transportadora de um WMS para Outro WMS ---
insert into Transportadora (CodTransportadora,NomeTransportadora,NomeFantasia,CpfCNPJ,CodCidadeIbge,Endereco,NumEnd,Tipo)
select CodTransportadora,NomeTransportadora,NomeFantasia,CpfCNPJ,CodCidadeIbge,Endereco,NumEnd,Tipo from WMS_F14.dbo.Transportadora t where Not exists 
(select * from Transportadora tw where t.CodTransportadora=tw.CodTransportadora) and CodTransportadora='500382'






-- Copiar uma transportadora do WMS para outra outro WMS --

insert into WMS_F14.dbo.Transportadora select * from Wms_F04.dbo.Transportadora where CodTransportadora=500382










