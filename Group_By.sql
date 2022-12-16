-- Databricks notebook source
SELECT
descUf,
COUNT(*)
FROM silver_olist.cliente
GROUP BY descUF


-- COMMAND ----------

SELECT
descUf,
COUNT(DISTINCT idClienteUnico)
FROM silver_olist.cliente
GROUP BY descUF


-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE YEAR(dtPedido) = 2017
AND Month(dtPedido) = 12
AND descSituacao = 'delivered'
AND date(dtEntregue) > date(dtEstimativaEntrega)

-- COMMAND ----------

SELECT *
FROM silver_olist.pagamento_pedido
WHERE nrPacelas > 2
AND vlPagamento / nrPacelas < 20

-- COMMAND ----------

SELECT *,
  vlPreco + vlFrete AS vlTotal,
  vlFrete / (vlPreco + vlFrete) AS percentFrete,
  
CASE
  WHEN vlFrete / (vlPreco + vlFrete) <= 0.1 THEN '10%'
  WHEN vlFrete / (vlPreco + vlFrete) <= 0.25 THEN '10% a 25%'
  WHEN vlFrete / (vlPreco + vlFrete) <= 0.5 THEN '25% a 50%'
  ELSE '+50%'
END AS freteFrete

FROM silver_olist.item_pedido

-- COMMAND ----------


