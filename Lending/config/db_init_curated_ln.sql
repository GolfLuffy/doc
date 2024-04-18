-- Databricks notebook source
/*---------------------------------------------------------------------------------------------------
# Name: db_init_curated_ln.sql
# Area: ln
#----------------------------------------------------------------------------------------------------
#
# Change Revision
#----------------------------------------------------------------------------------------------------
# Date....           Who....            Description....
#----------------------------------------------------------------------------------------------------
# 2023-10-26         Jirat B.           Initial Version
# 2024-02-15         Jirat B.           Add Curated View
# 2024-04-03         Rattatammaoon W.   nan
#
# Target Database(s): ${catalog}.curated_ln
#--------------------------------------------------------------------------------------------------*/

-- COMMAND ----------

create database if not exists ${catalog}.curated_ln managed location 'abfss://${storage_curated}/${catalog}/curated_ln';
