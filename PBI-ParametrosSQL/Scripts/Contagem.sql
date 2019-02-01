--Contagem de Produtos 

use AdventureWorksDW2012                                          

declare @Cor1 varchar(100)
set @Cor1 = 'Multi'

declare @Cor2 varchar(100)
set @Cor2 = 'Silver/Black'

select count(ProductKey) as Total from DimProduct
where Color in (@Cor1, @Cor2)