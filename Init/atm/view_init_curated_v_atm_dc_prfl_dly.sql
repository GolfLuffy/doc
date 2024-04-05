-- Databricks notebook source
/*---------------------------------------------------------------------------------------------------
# Name: view_init_curated_v_atm_dc_prfl_dly.sql
# Area: atm
#----------------------------------------------------------------------------------------------------
#
# Change Revision
#----------------------------------------------------------------------------------------------------
# Date....           Who....           Description....
#----------------------------------------------------------------------------------------------------
# 2023-10-26         Jirat B.          Initial Version
# 2024-02-15         Jirat B.          Add Curated View
#
# Target table(s)/view(s): ${catalog}.curated_atm_view.v_atm_dc_prfl_dly
#--------------------------------------------------------------------------------------------------*/

-- COMMAND ----------

create or replace view ${catalog}.curated_atm_view.v_atm_dc_prfl_dly as
select
	pos_dt as pos_dt,
	cis_no as cis_no,
	card_rndm_id as card_rndm_id,
	masked_card_no as masked_card_no,
	encrypted_card_no as encrypted_card_no,
	ordr_br_no as ordr_br_no,
	card_tp_cd as card_tp_cd,
	card_tp_desc as card_tp_desc,
	styl_cd as styl_cd,
	crt_dt as crt_dt,
	issu_dt as issu_dt,
	st_cd as st_cd,
	actv_dt as actv_dt,
	expire_dt as expire_dt,
	cncl_dt_tm as cncl_dt_tm,
	purge_f as purge_f,
	purge_dt as purge_dt,
	svg_acct_no as svg_acct_no,
	svg_acct_actv_f as svg_acct_actv_f,
	ca_no as ca_no,
	ca_actv_f as ca_actv_f,
	prch_regis_f as prch_regis_f,
	prch_lmt_amt_per_day as prch_lmt_amt_per_day,
	prch_lmt_upd_dt_tm as prch_lmt_upd_dt_tm,
	cash_wdrw_lmt_amt_per_day as cash_wdrw_lmt_amt_per_day,
	cash_adv_lmt_amt_per_day as cash_adv_lmt_amt_per_day,
	wdrw_lmt_upd_dt_tm as wdrw_lmt_upd_dt_tm,
	tfr_lmt_amt_per_day as tfr_lmt_amt_per_day,
	tfr_lmt_upd_dt_tm as tfr_lmt_upd_dt_tm,
	prch_amt_per_day as prch_amt_per_day,
	nbr_of_prch_txn_per_day as nbr_of_prch_txn_per_day,
	last_prch_dt as last_prch_dt,
	cash_wdrw_amt as cash_wdrw_amt,
	nbr_of_cash_wdrw as nbr_of_cash_wdrw,
	last_wdrw_dt as last_wdrw_dt,
	link_acct_tfr_amt as link_acct_tfr_amt,
	nbr_of_link_acct_tfr as nbr_of_link_acct_tfr,
	intrabank_tfr_amt as intrabank_tfr_amt,
	nbr_of_intrabank_tfr as nbr_of_intrabank_tfr,
	onln_rtl_fund_tfr_amt as onln_rtl_fund_tfr_amt,
	nbr_of_onln_rtl_fund_tfr as nbr_of_onln_rtl_fund_tfr,
	last_tfr_dt as last_tfr_dt,
	last_tfr_amt as last_tfr_amt,
	last_txn_dt as last_txn_dt,
	intrbnk_fee_dt as intrbnk_fee_dt,
	nbr_of_intrbnk_fee_mo as nbr_of_intrbnk_fee_mo,
	wdrw_fee_dt as wdrw_fee_dt,
	nbr_of_wdrw_fee as nbr_of_wdrw_fee,
	t3ip_fee_dt as t3ip_fee_dt,
	nbr_of_t3ip_fee as nbr_of_t3ip_fee,
	paymt_fee_dt as paymt_fee_dt,
	nbr_of_paymt_fee as nbr_of_paymt_fee,
	pendg_annl_fee_dt as pendg_annl_fee_dt,
	pendg_annl_fee_f as pendg_annl_fee_f,
	nbr_of_pendg_annl_fee as nbr_of_pendg_annl_fee,
	pendg_fee as pendg_fee,
	entry_fee as entry_fee,
	frst_yr_fee as frst_yr_fee,
	annl_fee_amt as annl_fee_amt,
	annl_fee_dt as annl_fee_dt,
	last_yr_fee as last_yr_fee,
	last_yr_fee_dedct_dt as last_yr_fee_dedct_dt,
	rfund_cd as rfund_cd,
	rfund_dsc as rfund_dsc,
	rfnd_amt as rfnd_amt,
	rfnd_dt as rfnd_dt,
	nbr_of_pin_err as nbr_of_pin_err,
	pin_err_chnl as pin_err_chnl,
	nbr_of_reset_pin as nbr_of_reset_pin,
	load_tms as load_tms,
	ptn_yyyy as ptn_yyyy,
	ptn_mm as ptn_mm,
	ptn_dd as ptn_dd,
	ptn_src_sys_id as ptn_src_sys_id
from ${catalog}.curated_atm.atm_dc_prfl_dly
