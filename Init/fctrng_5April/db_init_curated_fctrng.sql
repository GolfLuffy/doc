-- Databricks notebook source
/*---------------------------------------------------------------------------------------------------
# Name: db_init_curated_fctrng.sql
# Area: fctrng
#----------------------------------------------------------------------------------------------------
#
# Change Revision
#----------------------------------------------------------------------------------------------------
# Date....           Who....           Description....
#----------------------------------------------------------------------------------------------------
# 2023-10-26         Jirat B.          Initial Version
# 2024-02-15         Jirat B.          Add Curated View
#
# Target Database(s): ${catalog}.curated_fctrng
#--------------------------------------------------------------------------------------------------*/

-- COMMAND ----------

create database if not exists ${catalog}.curated_fctrng managed location 'abfss://${storage_curated}/${catalog}/curated_fctrng';
