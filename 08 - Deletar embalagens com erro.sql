/* Deletar embalagens com erro*/

Select * from Embalagem where Codproduto='218397'

delete from Embalagem where CodEmbalagem in (
'820924',
'1111312788')