--[Parte III]- Usando Parâmetros no Power BI - Parte III – Integrando com variaveis no SQL Server

--Alterando o T-SQL da Fonte de Dados

use AdventureWorksDW2012

declare @Cor1 varchar(100)
set @Cor1 = 'Red'

declare @Cor2 varchar(100)
set @Cor2 = 'Blue'

select ProductKey,EnglishProductName, Color from DimProduct
where Color in (@Cor1, @Cor2)
