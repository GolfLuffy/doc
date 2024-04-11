-- Databricks notebook source
/*---------------------------------------------------------------------------------------------------
# Name: view_init_curated_v_fctrng_acct_prfl_dly.sql
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
# Target table(s)/view(s): ${catalog}.curated_fctrng_view.v_fctrng_acct_prfl_dly
#--------------------------------------------------------------------------------------------------*/

-- COMMAND ----------

create or replace view ${catalog}.curated_fctrng_view.v_fctrng_acct_prfl_dly as
select
	pos_dt as pos_dt,
	acct_no as acct_no,
	schd_no as schd_no,
	sellr_lmt_id as sellr_lmt_id,
	sellr_cis_no as sellr_cis_no,
	buyr_fctr_id as buyr_fctr_id,
	lpm_no as lpm_no,
	acct_ownr_tp_cd as acct_ownr_tp_cd,
	ln_tp_cd as ln_tp_cd,
	acct_st as acct_st,
	invc_dt as invc_dt,
	schd_dt as schd_dt,
	issu_dt as issu_dt,
	acct_eff_dt as acct_eff_dt,
	mat_dt as mat_dt,
	tenor_priod as tenor_priod,
	tenor_unit as tenor_unit,
	pnp_grc_priod as pnp_grc_priod,
	due_dt as due_dt,
	acct_cls_dt as acct_cls_dt,
	orig_ccy_cd as orig_ccy_cd,
	mid_rate as mid_rate,
	orig_book_bal_orig_ccy as orig_book_bal_orig_ccy,
	orig_book_bal_thb as orig_book_bal_thb,
	discnt_amt_orig_ccy as discnt_amt_orig_ccy,
	discnt_amt_thb as discnt_amt_thb,
	acru_basis_cd as acru_basis_cd,
	amtz_amt_orig_ccy as amtz_amt_orig_ccy,
	amtz_amt_thb as amtz_amt_thb,
	otsnd_bal_orig_ccy as otsnd_bal_orig_ccy,
	otsnd_bal_thb as otsnd_bal_thb,
	orig_pnp_amt_orig_ccy as orig_pnp_amt_orig_ccy,
	orig_pnp_amt_thb as orig_pnp_amt_thb,
	rmain_pnp_amt_orig_ccy as rmain_pnp_amt_orig_ccy,
	rmain_pnp_amt_thb as rmain_pnp_amt_thb,
	int_cal_tp_cd as int_cal_tp_cd,
	int_rate_tp_cd as int_rate_tp_cd,
	orig_admn_rate_pct as orig_admn_rate_pct,
	orig_int_rate_pct as orig_int_rate_pct,
	last_int_rprc_dt as last_int_rprc_dt,
	crrnt_indx_rate_pct as crrnt_indx_rate_pct,
	sprd_int_rate_pct as sprd_int_rate_pct,
	crrnt_int_rate_pct as crrnt_int_rate_pct,
	max_int_rate_pct as max_int_rate_pct,
	int_paymt_tp_cd as int_paymt_tp_cd,
	int_rcv_amt_orig_ccy as int_rcv_amt_orig_ccy,
	int_rcv_amt_thb as int_rcv_amt_thb,
	rmain_int_amt_orig_ccy as rmain_int_amt_orig_ccy,
	rmain_int_amt_thb as rmain_int_amt_thb,
	rmain_late_int_chrg_amt_orig_ccy as rmain_late_int_chrg_amt_orig_ccy,
	rmain_late_int_chrg_amt_thb as rmain_late_int_chrg_amt_thb,
	prepaymt_f as prepaymt_f,
	prepaymt_dt as prepaymt_dt,
	prepaymt_bal_orig_ccy as prepaymt_bal_orig_ccy,
	prepaymt_bal_thb as prepaymt_bal_thb,
	last_pnp_paymt_dt as last_pnp_paymt_dt,
	last_int_paymt_dt as last_int_paymt_dt,
	last_paymt_dt as last_paymt_dt,
	last_paymt_amt_orig_ccy as last_paymt_amt_orig_ccy,
	last_paymt_amt_thb as last_paymt_amt_thb,
	accum_all_paymt_amt_orig_ccy as accum_all_paymt_amt_orig_ccy,
	accum_all_paymt_amt_orig_ccy_thb as accum_all_paymt_amt_orig_ccy_thb,
	nxt_int_paymt_dt as nxt_int_paymt_dt,
	ovdue_f as ovdue_f,
	ovdue_dt as ovdue_dt,
	ovdue_amt_orig_ccy as ovdue_amt_orig_ccy,
	ovdue_amt_thb as ovdue_amt_thb,
	pnp_dpd as pnp_dpd,
	int_dpd as int_dpd,
	bot_dpd as bot_dpd,
	gnte_coverg_pct as gnte_coverg_pct,
	fee_amt_thb as fee_amt_thb,
	upd_by as upd_by,
	upd_dt_tm as upd_dt_tm,
	coa_pd_ftr_cd as coa_pd_ftr_cd,
	coa_pd_ftr_desc as coa_pd_ftr_desc,
	load_tms as load_tms,
	ptn_yyyy as ptn_yyyy,
	ptn_mm as ptn_mm,
	ptn_dd as ptn_dd
from ${catalog}.curated_fctrng.fctrng_acct_prfl_dly
