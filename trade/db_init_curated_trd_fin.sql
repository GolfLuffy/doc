-- Databricks notebook source
/*---------------------------------------------------------------------------------------------------
# Name: db_init_curated_trd_fin.sql
# Area: trd_fin
#----------------------------------------------------------------------------------------------------
#
# Change Revision
#----------------------------------------------------------------------------------------------------
# Date....           Who....           Description....
#----------------------------------------------------------------------------------------------------
# 2023-10-26         Jirat B.          Initial Version
# 2024-02-15         Jirat B.          Add Curated View
#
# Target Database(s): ${catalog}.curated_trd_fin
#--------------------------------------------------------------------------------------------------*/

-- COMMAND ----------

create database if not exists ${catalog}.curated_trd_fin managed location 'abfss://${storage_curated}/${catalog}/curated_trd_fin';
