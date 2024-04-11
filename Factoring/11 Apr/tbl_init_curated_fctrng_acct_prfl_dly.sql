-- Databricks notebook source
/*---------------------------------------------------------------------------------------------------
# Name: tbl_init_curated_fctrng_acct_prfl_dly.sql
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
# Target table(s)/view(s): ${catalog}.curated_fctrng.fctrng_acct_prfl_dly
#--------------------------------------------------------------------------------------------------*/

-- COMMAND ----------

create table if not exists ${catalog}.curated_fctrng.fctrng_acct_prfl_dly (
	pos_dt date comment 'Position Date',
	acct_no string comment 'Account Number',
	schd_no string comment 'Schedule Number',
	sellr_lmt_id string comment 'Seller Limit ID',
	sellr_cis_no bigint comment 'Seller CIS Number',
	buyr_fctr_id string comment 'Buyer Factor ID',
	lpm_no bigint comment 'LPM Number',
	acct_ownr_tp_cd string comment 'Account Ownership Type Code',
	ln_tp_cd string comment 'Loan Type Code',
	acct_st string comment 'Account Status',
	invc_dt date comment 'Invoice Date',
	schd_dt date comment 'Schedule Date',
	issu_dt date comment 'Issue Date',
	acct_eff_dt date comment 'Account Effective Date',
	mat_dt date comment 'Maturity Date',
	tenor_priod smallint comment 'Tenor Period',
	tenor_unit string comment 'Tenor Unit',
	pnp_grc_priod smallint comment 'Principal Grace Period',
	due_dt date comment 'Due Date',
	acct_cls_dt date comment 'Account Close Date',
	orig_ccy_cd string comment 'Original Currency Code',
	mid_rate decimal(11, 7) comment 'Mid Rate',
	orig_book_bal_orig_ccy decimal(18, 2) comment 'Original Book Balance in Original Currency',
	orig_book_bal_thb decimal(18, 2) comment 'Original Book Balance in THB',
	discnt_amt_orig_ccy decimal(18, 2) comment 'Discount Amount in Original Currency',
	discnt_amt_thb decimal(18, 2) comment 'Discount Amount in THB',
	acru_basis_cd smallint comment 'Accrual Basis Code',
	amtz_amt_orig_ccy decimal(18, 2) comment 'Amortized Amount in Original Currency',
	amtz_amt_thb decimal(18, 2) comment 'Amortized Amount in THB',
	otsnd_bal_orig_ccy decimal(18, 2) comment 'Outstanding Balance in Original Currency',
	otsnd_bal_thb decimal(18, 2) comment 'Outstanding Balance in THB',
	orig_pnp_amt_orig_ccy decimal(18, 2) comment 'Original Principal Amount in Original Currency',
	orig_pnp_amt_thb decimal(18, 2) comment 'Original Principal Amount in THB',
	rmain_pnp_amt_orig_ccy decimal(18, 2) comment 'Remaining Principal Amount in Original Currency',
	rmain_pnp_amt_thb decimal(18, 2) comment 'Remaining Principal Amount in THB',
	int_cal_tp_cd smallint comment 'Interest Calculation Type Code',
	int_rate_tp_cd string comment 'Interest Rate Type Code',
	orig_admn_rate_pct decimal(9, 7) comment 'Original Admin Rate Percentage',
	orig_int_rate_pct decimal(9, 7) comment 'Original Interest Rate Percentage',
	last_int_rprc_dt date comment 'Last Interest Reprice Date',
	crrnt_indx_rate_pct decimal(9, 7) comment 'Current Index Rate Percentage',
	sprd_int_rate_pct decimal(9, 7) comment 'Spread Interest Rate Percentage',
	crrnt_int_rate_pct decimal(9, 7) comment 'Current Interest Rate Percentage',
	max_int_rate_pct decimal(9, 7) comment 'Maximum Interest Rate Percentage',
	int_paymt_tp_cd smallint comment 'Interest Payment Type Code',
	int_rcv_amt_orig_ccy decimal(18, 2) comment 'Interest Received Amount in Original Currency',
	int_rcv_amt_thb decimal(18, 2) comment 'Interest Received Amount in THB',
	rmain_int_amt_orig_ccy decimal(18, 2) comment 'Remaining Interest Amount in Original Currency',
	rmain_int_amt_thb decimal(18, 2) comment 'Remaining Interest Amount in THB',
	rmain_late_int_chrg_amt_orig_ccy decimal(18, 2) comment 'Remaining Late Interest Charge Amount in Original Currency',
	rmain_late_int_chrg_amt_thb decimal(18, 2) comment 'Remaining Late Interest Charge Amount in THB',
	prepaymt_f string comment 'Prepayment Flag',
	prepaymt_dt date comment 'Prepayment Date',
	prepaymt_bal_orig_ccy decimal(18, 2) comment 'Prepayment Balance in Original Currency',
	prepaymt_bal_thb decimal(18, 2) comment 'Prepayment Balance in THB',
	last_pnp_paymt_dt date comment 'Last Principal Payment Date',
	last_int_paymt_dt date comment 'Last Interest Payment Date',
	last_paymt_dt date comment 'Last Payment Date',
	last_paymt_amt_orig_ccy decimal(18, 2) comment 'Last Payment Amount in Original Currency',
	last_paymt_amt_thb decimal(18, 2) comment 'Last Payment Amount in THB',
	accum_all_paymt_amt_orig_ccy decimal(18, 2) comment 'Accumulated All Payment Amount in Original Currency',
	accum_all_paymt_amt_orig_ccy_thb decimal(18, 2) comment 'Accumulated All Payment Amount in Original Currency in THB',
	nxt_int_paymt_dt date comment 'Next Interest Payment Date',
	ovdue_f string comment 'Overdue Flag',
	ovdue_dt date comment 'Overdue Date',
	ovdue_amt_orig_ccy decimal(18, 2) comment 'Overdue Amount in Original Currency',
	ovdue_amt_thb decimal(18, 2) comment 'Overdue Amount in THB',
	pnp_dpd integer comment 'Principal Days Past Due',
	int_dpd integer comment 'Interest Days Past Due',
	bot_dpd integer comment 'BOT Days Past Due',
	gnte_coverg_pct decimal(5, 2) comment 'Guarantee Coverage Percentage',
	fee_amt_thb decimal(18, 2) comment 'Fee Amount in THB',
	upd_by string comment 'Update By',
	upd_dt_tm timestamp comment 'Update Date time',
	coa_pd_ftr_cd string comment 'COA Product Feature Code',
	coa_pd_ftr_desc string comment 'COA Product Feature Description',
	load_tms timestamp comment 'Load Timestamp',
	ptn_yyyy string comment 'Partition Year',
	ptn_mm string comment 'Partition Month',
	ptn_dd string comment 'Partition Day'
) using delta partitioned by (ptn_yyyy, ptn_mm, ptn_dd) location 'abfss://${storage_curated}/${catalog}/curated_fctrng/fctrng_acct_prfl_dly' tblproperties (
	'delta.minreaderversion' = '2',
	'delta.minwriterversion' = '5',
	'delta.columnmapping.mode' = 'name'
)
