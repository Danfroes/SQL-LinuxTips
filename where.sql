-- Databricks notebook source
SELECT * FROM silver_olist.pedido WHERE descSituacao IN ('shipped', 'canceled') AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT *
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

SELECT *
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'

-- COMMAND ----------

SELECT *
FROM silver_olist.vendedor
WHERE descCidade = 'rio de janeiro'
OR descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,Ex 02
SELECT *
FROM silver_olist.produto
WHERE descCategoria IN ('perfumaria', 'bebes')
AND vlAlturaCm > 5 

-- COMMAND ----------


