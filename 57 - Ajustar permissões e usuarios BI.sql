USE WMS_F19

WITH GERAL AS (SELECT T1.CodFormulario,T1.CodMenu,T1.NomFormulario,T1.OrdemFormulario,T2.CodUsuario,T2.DatCadastro,T3.CodOperacao,T3.NomOperacao,T3.OrdemOperacao FROM FormularioBI T1 JOIN PermFormBI T2 ON T1.CodFormulario=T2.CodFormulario LEFT JOIN OperacaoBI T3 ON T2.CodFormulario=T3.CodFormulario)
SELECT CodFormulario,CodMenu,NomFormulario,OrdemFormulario,T4.CodUsuario,GERAL.DatCadastro,CodOperacao,NomOperacao,OrdemOperacao,T4.NomeUsuario,T4.LoginUsuario FROM GERAL JOIN Usuario T4 ON GERAL.CodUsuario=T4.CodUsuario 
WHERE NomOperacao like '%PERMI%'

WITH GERAL AS (SELECT T1.CodFormulario,T1.CodMenu,T1.NomFormulario,T1.OrdemFormulario,T2.CodUsuario,T2.DatCadastro,T3.CodOperacao,T3.NomOperacao,T3.OrdemOperacao FROM FormularioBI T1 JOIN PermFormBI T2 ON T1.CodFormulario=T2.CodFormulario LEFT JOIN OperacaoBI T3 ON T2.CodFormulario=T3.CodFormulario)
SELECT CodFormulario,CodMenu,NomFormulario,OrdemFormulario,T4.CodUsuario,GERAL.DatCadastro,CodOperacao,NomOperacao,OrdemOperacao,T4.NomeUsuario,T4.LoginUsuario FROM GERAL JOIN Usuario T4 ON GERAL.CodUsuario=T4.CodUsuario 
WHERE CodFormulario=22

delete from PermForm where CodFormulario=21 and CodUsuario in ('15') 
delete from PermOper where CodOperacao in ('445') and CodUsuario in ('140')


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

delete from PermOper where CodOperacao in ('411') and CodUsuario in ('244','245')















