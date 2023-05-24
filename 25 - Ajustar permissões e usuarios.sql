use Wms_MTZ
select * from Formulario where NomFormulario like '%arma%'

select t4.CodUsuario, LoginUsuario,t4.Ativo,UsaColetor,Admin,t4.CodOperacao,t4.CodFormulario,t4.NomOperacao from Usuario t3 join (
select t1.CodOperacao,CodFormulario,NomOperacao,CodUsuario, Ativo from Operacao t1 join PermOper t2 on t1.CodOperacao=t2.CodOperacao) as t4 on t3.CodUsuario=t4.CodUsuario
where t4.CodFormulario=151

select t4.CodUsuario, LoginUsuario,t4.NomOperacao from Usuario t3 join (
select t1.CodOperacao,CodFormulario,NomOperacao,CodUsuario, Ativo from Operacao t1 join PermOper t2 on t1.CodOperacao=t2.CodOperacao) as t4 on t3.CodUsuario=t4.CodUsuario
where t3.NomeUsuario like '%erisom%' order by LoginUsuario

select distinct t4.CodUsuario, LoginUsuario from Usuario t3 join (
select t1.CodOperacao,CodFormulario,NomOperacao,CodUsuario, Ativo from Operacao t1 join PermOper t2 on t1.CodOperacao=t2.CodOperacao) as t4 on t3.CodUsuario=t4.CodUsuario
where t4.CodFormulario=151 order by CodUsuario

delete from PermOper where CodOperacao in ('62','63','104','105','61') and CodUsuario in (
'208',
'267',
'268',
'277',
'294',
'304',
'312',
'313',
'314',
'338',
'391',
'392',
'393',
'394',
'395',
'396',
'397',
'398',
'404',
'448',
'450',
'463',
'473',
'1000')
delete from PermForm where CodFormulario=21 and CodUsuario in (
'208',
'267',
'268',
'277',
'294',
'304',
'312',
'313',
'314',
'338',
'391',
'392',
'393',
'394',
'395',
'396',
'397',
'398',
'404',
'448',
'450',
'463',
'473',
'1000')
delete from PermOper where CodOperacao in ('58') and CodUsuario in ('140')

insert into PermOper (CodOperacao,CodUsuario,DatCadastro) values (118,117,GETDATE())
insert into PermOper (CodOperacao,CodUsuario,DatCadastro) values (118,210,GETDATE())
insert into PermOper (CodOperacao,CodUsuario,DatCadastro) values (118,215,GETDATE())
insert into PermOper (CodOperacao,CodUsuario,DatCadastro) values (118,148,GETDATE())
insert into PermOper (CodOperacao,CodUsuario,DatCadastro) values (118,128,GETDATE())
insert into PermOper (CodOperacao,CodUsuario,DatCadastro) values (118,102,GETDATE())


insert into PermForm (CodFormulario,CodUsuario,DatCadastro) values (2,117,GETDATE())
insert into PermForm (CodFormulario,CodUsuario,DatCadastro) values (2,210,GETDATE())
insert into PermForm (CodFormulario,CodUsuario,DatCadastro) values (2,215,GETDATE())
insert into PermForm (CodFormulario,CodUsuario,DatCadastro) values (2,148,GETDATE())
insert into PermForm (CodFormulario,CodUsuario,DatCadastro) values (2,128,GETDATE())
insert into PermForm (CodFormulario,CodUsuario,DatCadastro) values (2,102,GETDATE())











