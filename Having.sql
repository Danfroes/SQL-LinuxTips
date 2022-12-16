-- Databricks notebook source
SELECT descUF,
  COUNT (idVendedor)
FROM silver_olist.vendedor
GROUP BY descUF

-- COMMAND ----------

-- selecione os estados agrupando quantos vendedores tem por estado, apenas para os estados seleiconados (No caso, SUdeste) --
SELECT descUF,
  COUNT (idVendedor) AS qtdVendedor
FROM silver_olist.vendedor
WHERE descUF IN ('SP', 'MG', 'RJ', 'ES')
GROUP BY descUF
HAVING COUNT (idVendedor) >= 100
ORDER BY qtdVendedor DESC

-- COMMAND ----------


