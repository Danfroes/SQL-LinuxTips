-- Databricks notebook source
SELECT * FROM silver_olist.pedido WHERE descSituacao IN ('shipped', 'canceled') AND year(dtPedido) = '2018'

-- COMMAND ----------


