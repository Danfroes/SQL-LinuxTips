-- Databricks notebook source
SELECT *, 
CASE 
WHEN descUF = 'SP' THEN 'paulista' 
WHEN descUF = 'RJ' THEN 'fluminense'
WHEN descUF = 'PR' THEN 'paranaense'
ELSE 'outros'
END AS descNacionalidade
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *, 
CASE 
WHEN descUF = 'SP' THEN 'paulista' 
WHEN descUF = 'RJ' THEN 'fluminense'
WHEN descUF = 'PR' THEN 'paranaense'
ELSE 'outros'
END AS descNacionalidade,

CASE
WHEN descCidade LIKE '%são%' THEN 'Tem são no nome'
ELSE 'Não tem são no nome'
END AS descCidadeSao

FROM silver_olist.cliente



-- COMMAND ----------

SELECT *,
CASE 
WHEN descUF IN ('SP', 'MG', 'RJ', 'ES') THEN 'sudeste'
END AS descRegiao

FROM  silver_olist.vendedor

-- COMMAND ----------


