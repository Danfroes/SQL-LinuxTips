-- Databricks notebook source
SELECT
descUF,
COUNT (DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY descUF

-- COMMAND ----------

SELECT
descUF,
COUNT (DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY 2

-- COMMAND ----------

SELECT
descUF,
COUNT (DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY qtClienteEstado

-- COMMAND ----------

SELECT
descUF,
COUNT (DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY COUNT (DISTINCT idClienteUnico)

-- COMMAND ----------

-- ordem decrescente --
SELECT
descUF,
COUNT (DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY COUNT (DISTINCT idClienteUnico) DESC

-- COMMAND ----------

-- ordem decrescente e só aparecendo a primeira linha --
SELECT
descUF,
COUNT (DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY COUNT (DISTINCT idClienteUnico) DESC

LIMIT 1

-- COMMAND ----------


