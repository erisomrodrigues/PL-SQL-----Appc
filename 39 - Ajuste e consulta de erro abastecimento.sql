use WMS_F17

/*Consultar produto */
select  Codproduto,Aux from Embalagem t3 join 
(select t1.CodEndereco,t1.Rua,t2.Codprod from Endereco t1 join EstEndereco t2 on t1.CodEndereco=t2.CodEndereco) as t4 on t3.Codproduto=t4.Codprod where t3.Aux like '%7891579911233%'

select top 10000 * from DadosLogistica where EstMinFracionado >7000

update DadosLogistica set EstMinFracionado=1 where EstMinFracionado >999