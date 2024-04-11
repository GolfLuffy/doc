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
	mask_card_no as mask_card_no,
	encpt_card_no as encpt_card_no,
	ordr_br_no as ordr_br_no,
	card_tp_cd as card_tp_cd,
	card_tp_desc as card_tp_desc,
	styl_cd as styl_cd,
	crt_dt as crt_dt,
	issu_dt as issu_dt,
	st_cd as st_cd,
	actv_dt as actv_dt,
	exp_dt as exp_dt,
	cncl_dt_tm as cncl_dt_tm,
	prg_f as prg_f,
	prg_dt as prg_dt,
	svg_acct_no as svg_acct_no,
	svg_acct_actv_f as svg_acct_actv_f,
	crrnt_acct_no as crrnt_acct_no,
	crrnt_acct_actv_f as crrnt_acct_actv_f,
	prch_regis_f as prch_regis_f,
	prch_lmt_amt_per_day as prch_lmt_amt_per_day,
	prch_lmt_upd_dt_tm as prch_lmt_upd_dt_tm,
	cash_wdrw_lmt_amt_per_day as cash_wdrw_lmt_amt_per_day,
	cash_adv_lmt_amt_per_day as cash_adv_lmt_amt_per_day,
	wdrw_lmt_upd_dt_tm as wdrw_lmt_upd_dt_tm,
	tfr_lmt_amt_per_day as tfr_lmt_amt_per_day,
	tfr_lmt_upd_dt_tm as tfr_lmt_upd_dt_tm,
	prch_amt_per_day as prch_amt_per_day,
	nbr_prch_txn_per_day as nbr_prch_txn_per_day,
	last_prch_dt as last_prch_dt,
	cash_wdrw_amt as cash_wdrw_amt,
	nbr_cash_wdrw as nbr_cash_wdrw,
	last_wdrw_dt as last_wdrw_dt,
	link_acct_tfr_amt as link_acct_tfr_amt,
	nbr_link_acct_tfr as nbr_link_acct_tfr,
	intrabnk_tfr_amt as intrabnk_tfr_amt,
	nbr_intrabnk_tfr as nbr_intrabnk_tfr,
	onln_rtl_fund_tfr_amt as onln_rtl_fund_tfr_amt,
	nbr_onln_rtl_fund_tfr as nbr_onln_rtl_fund_tfr,
	last_tfr_dt as last_tfr_dt,
	last_tfr_amt as last_tfr_amt,
	last_txn_dt as last_txn_dt,
	intrbnk_fee_dt as intrbnk_fee_dt,
	nbr_intrbnk_fee_mo as nbr_intrbnk_fee_mo,
	wdrw_fee_dt as wdrw_fee_dt,
	nbr_wdrw_fee as nbr_wdrw_fee,
	thrd_prty_fee_dt as thrd_prty_fee_dt,
	nbr_thrd_prty_fee as nbr_thrd_prty_fee,
	paymt_fee_dt as paymt_fee_dt,
	nbr_paymt_fee as nbr_paymt_fee,
	pendg_annl_fee_dt as pendg_annl_fee_dt,
	pendg_annl_fee_f as pendg_annl_fee_f,
	nbr_pendg_annl_fee as nbr_pendg_annl_fee,
	pendg_annl_fee_amt as pendg_annl_fee_amt,
	entry_fee_amt as entry_fee_amt,
	frst_yr_fee_amt as frst_yr_fee_amt,
	annl_fee_amt as annl_fee_amt,
	annl_fee_due_dt as annl_fee_due_dt,
	last_yr_fee_amt as last_yr_fee_amt,
	last_yr_fee_dedct_dt as last_yr_fee_dedct_dt,
	rfund_cd as rfund_cd,
	rfund_desc as rfund_desc,
	rfund_amt as rfund_amt,
	rfund_dt as rfund_dt,
	nbr_pin_err as nbr_pin_err,
	pin_err_chnl as pin_err_chnl,
	nbr_reset_pin as nbr_reset_pin,
	load_tms as load_tms,
	ptn_yyyy as ptn_yyyy,
	ptn_mm as ptn_mm,
	ptn_dd as ptn_dd,
	ptn_src_sys_id as ptn_src_sys_id
from ${catalog}.curated_atm.atm_dc_prfl_dly
