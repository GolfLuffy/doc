-- Databricks notebook source
/*---------------------------------------------------------------------------------------------------
# Name: view_init_curated_v_ln_acct_prfl_dly.sql
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
# Target table(s)/view(s): ${catalog}.curated_ln_view.v_ln_acct_prfl_dly
#--------------------------------------------------------------------------------------------------*/

-- COMMAND ----------

create or replace view ${catalog}.curated_ln_view.v_ln_acct_prfl_dly as
select
	pos_dt as pos_dt,
	acct_num as acct_num,
	orig_acct_num as orig_acct_num,
	acct_st_cd as acct_st_cd,
	acct_open_dt as acct_open_dt,
	acct_cls_dt as acct_cls_dt,
	cis_num as cis_num,
	lpm_num as lpm_num,
	coa_pd_ftr_cd as coa_pd_ftr_cd,
	pd_tp_cd as pd_tp_cd,
	pd_tp_desc as pd_tp_desc,
	pd_sub_tp_cd as pd_sub_tp_cd,
	pd_sub_tp_desc as pd_sub_tp_desc,
	acct_ownr_tp_cd as acct_ownr_tp_cd,
	new_in_mo_f as new_in_mo_f,
	cntrct_sign_dt as cntrct_sign_dt,
	acct_eff_dt as acct_eff_dt,
	mat_dt as mat_dt,
	mat_rnew_cd as mat_rnew_cd,
	mat_rnew_desc as mat_rnew_desc,
	cntrct_term as cntrct_term,
	cntrct_term_unit as cntrct_term_unit,
	acct_pps_cd as acct_pps_cd,
	acct_pps_th_desc as acct_pps_th_desc,
	acct_pps_eng_desc as acct_pps_eng_desc,
	acct_isic_cd as acct_isic_cd,
	acct_isic_desc as acct_isic_desc,
	acct_indst_cl_cd as acct_indst_cl_cd,
	acct_indst_cl_desc as acct_indst_cl_desc,
	pn_int_dedct_tp_cd as pn_int_dedct_tp_cd,
	lg_chnl as lg_chnl,
	net_discnt_amt as net_discnt_amt,
	lmt_acct_num as lmt_acct_num,
	lmt_amt as lmt_amt,
	last_dsbr_dt as last_dsbr_dt,
	tot_dsbr_amt as tot_dsbr_amt,
	pnp_amt as pnp_amt,
	otsnd_bal_thb as otsnd_bal_thb,
	otsnd_bal_orig_ccy as otsnd_bal_orig_ccy,
	otsnd_bal_ccy_cd as otsnd_bal_ccy_cd,
	acru_int_amt as acru_int_amt,
	mo_acru_int_amt as mo_acru_int_amt,
	unpaid_int_bill_amt as unpaid_int_bill_amt,
	unamtz_amt as unamtz_amt,
	tot_due_amt as tot_due_amt,
	unpaid_fee_amt as unpaid_fee_amt,
	unpaid_bill_amt as unpaid_bill_amt,
	ovdue_amt as ovdue_amt,
	ovdue_dt as ovdue_dt,
	ovdue_priod as ovdue_priod,
	dpd as dpd,
	fee_rate_pct as fee_rate_pct,
	accum_actl_fee_amt as accum_actl_fee_amt,
	bill_seq_num as bill_seq_num,
	tot_nbr_instl as tot_nbr_instl,
	due_amt as due_amt,
	due_dt as due_dt,
	dep_dedct_acct_num as dep_dedct_acct_num,
	ref_int_rate_dep_acct_num as ref_int_rate_dep_acct_num,
	last_paymt_dt as last_paymt_dt,
	nxt_due_dt as nxt_due_dt,
	nxt_due_amt as nxt_due_amt,
	accum_repay_amt as accum_repay_amt,
	accum_actl_pnp_paymt_amt as accum_actl_pnp_paymt_amt,
	int_rate_tp_cd as int_rate_tp_cd,
	int_rate_tp_desc as int_rate_tp_desc,
	orig_int_rate_tp_cd as orig_int_rate_tp_cd,
	orig_int_rate_tp_desc as orig_int_rate_tp_desc,
	max_int_rate_pct as max_int_rate_pct,
	crrnt_sprd_pct as crrnt_sprd_pct,
	crrnt_int_rate_pct as crrnt_int_rate_pct,
	late_int_rate_tp_cd as late_int_rate_tp_cd,
	late_int_rate_tp_desc as late_int_rate_tp_desc,
	pnlty_int_rate_pct as pnlty_int_rate_pct,
	int_late_chrg_amt as int_late_chrg_amt,
	accum_actl_late_chrg_amt as accum_actl_late_chrg_amt,
	rvrs_acru_int_amt as rvrs_acru_int_amt,
	memo_acru_int_amt as memo_acru_int_amt,
	actl_acru_memo_paymt_amt as actl_acru_memo_paymt_amt,
	apprv_tp_cd as apprv_tp_cd,
	apprv_num as apprv_num,
	orig_adv_acct_num as orig_adv_acct_num,
	coa_acct as coa_acct,
	issu_br_num as issu_br_num,
	br_ownr_num as br_ownr_num,
	mkt_cd as mkt_cd,
	mkt_desc as mkt_desc,
	cmsn_tp_cd as cmsn_tp_cd,
	cmsn_tp_desc as cmsn_tp_desc,
	cmsn_amt as cmsn_amt,
	nbr_stop_cal_cmsn_mo as nbr_stop_cal_cmsn_mo,
	load_tms as load_tms,
	ptn_yyyy as ptn_yyyy,
	ptn_mm as ptn_mm,
	ptn_dd as ptn_dd
from ${catalog}.curated_ln.ln_acct_prfl_dly
