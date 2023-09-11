use wms_f23


 -- (BonusCab) Status = 1 - CONTANDO
 -- (BonusCab) Status = 5 - ARMAZENADO
 -- 
select * from BonusCab where CodbonusCab in ('55098')

select * from BonusNotaItem where CodBonusCab ='55098' order by QtdVolume


update BonusNotaItem set ArmLiberado = null where CodBonusCab in ('55098')
update BonusCab set Status=1 where CodbonusCab ='55098'

