-- Habilitar bônus para fazer conferência após armazenamento --

use WMS_F30


select * from BonusCab where CodbonusCab in ('1829')
select * from BonusNotaItem where CodBonusCab in ('1829') order by CodUsuarioConferencia
select * from BonusNotaItemEtiqueta where CodEtiqueta in ('10525')
select * from Etiqueta where CodBonus=1829




update BonusCab set Status=1 where CodbonusCab =1829
update Etiqueta set Situacao=0 where CodEtiqueta=10525
update Etiqueta set TipoEndereco=null where CodEtiqueta=10525
update Etiqueta set Situacao=4 where CodEtiqueta=10525
update Etiqueta set TipoEndereco=4 where CodEtiqueta=10525

update BonusNotaItem set QtdContado=0 where CodBonusNotaItem=14574
update BonusNotaItem set CodUsuarioConferencia=null,DataHoraConferencia=null,QtdContado=null,CodEtiqueta=null,QtdVolume=null,ArmLiberado=null where CodBonusNotaItem in (
'14577',
'14578',
'14579',
'14574',
'14582',
'14585',
'14587',
'14589',
'14591',
'14594',
'14595',
'14596',
'14597',
'14599',
'14600',
'14601',
'14603')
