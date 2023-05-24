use WMS_F13

select * from TipoAlmoxarifado
select * from WMS_F01.dbo.TipoAlmoxarifado
select * from DadosLogistica where CodTipoEnderecoArmazenagem=17
select * from Etiqueta where CodTipoAlmoxarifado=15

update Endereco set CodTipoAlmoxarifado=8 where CodTipoAlmoxarifado=17
update TipoAlmoxarifado set CodTipoAlmoxarifado=12 where CodTipoAlmoxarifado=13
update DadosLogistica set CodTipoEnderecoArmazenagem=8 where CodTipoEnderecoArmazenagem=1
update Etiqueta set CodTipoAlmoxarifado=8 where CodTipoAlmoxarifado=1
update TipoAlmoxarifado set CodTipoAlmoxarifado=13 where CodTipoAlmoxarifado=16