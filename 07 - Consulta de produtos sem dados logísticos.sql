use wms_f04


select distinct eg.CodProd,eg.EstoqueDisponivel, dl.CodLogistico from EstoqueGeral eg left join DadosLogistica dl on (eg.CodProd=dl.Codprod)
where eg.EstoqueDisponivel>0 and dl.CodLogistico is null
