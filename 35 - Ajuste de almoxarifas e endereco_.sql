use WMS_F23

select * from TipoAlmoxarifado
select * from wms_f01.dbo.TipoAlmoxarifado
select * from Endereco where Rua=777
select * from EstoqueGeral where CodTipoAlmoxarifado in ('12')

select * from DadosLogistica where CodTipoEnderecoArmazenagem in ('17','18','19')

update Endereco set CodTipoAlmoxarifado=10 where Rua=5000
update DadosLogistica set CodTipoEnderecoArmazenagem=8 where CodTipoEnderecoArmazenagem in ('11')
update TipoAlmoxarifado set CodTipoAlmoxarifado=13 where CodTipoAlmoxarifado=1
update Etiqueta set CodTipoAlmoxarifado=13 where CodTipoAlmoxarifado=1
update Produto_Mapeamento set CodTipoAlmoxarifado=13 where CodTipoAlmoxarifado=1
update Inventario set CodAlmoxarifado=8 where CodAlmoxarifado=1



select * from Endereco where CodEndereco=78
update Endereco set Bloqueado=1 where CodEndereco=78