-- Databricks notebook source
SELECT 
COUNT (*),
COUNT (idCliente),
COUNT (distinct idCliente),
COUNT (distinct idClienteUnico)
FROM silver_olist.cliente

-- COMMAND ----------

SELECT
AVG(vlPreco) AS preco,
PERCENTILE(vlPreco, 0.5) AS PrecoMediano,
MAX(vlPreco) AS precoMaximo,
AVG(vlFrete) AS frete,
MIN(vlfrete) AS freteMinimo,
MAX(vlFrete) AS freteMaximo
FROM silver_olist.item_pedido

-- COMMAND ----------


