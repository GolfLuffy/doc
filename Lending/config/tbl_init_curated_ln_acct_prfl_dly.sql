-- Databricks notebook source
/*---------------------------------------------------------------------------------------------------
# Name: tbl_init_curated_ln_acct_prfl_dly.sql
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
# Target table(s)/view(s): ${catalog}.curated_ln.ln_acct_prfl_dly
#--------------------------------------------------------------------------------------------------*/

-- COMMAND ----------

create table if not exists ${catalog}.curated_ln.ln_acct_prfl_dly (
	pos_dt date comment 'Position Date',
	acct_no string comment 'Account Number',
	orig_acct_no string comment 'Original Account Number',
	acct_st_cd string comment 'Account Status Code',
	acct_open_dt date comment 'Account Open Date',
	acct_cls_dt date comment 'Account Close Date',
	cis_no string comment 'CIS Number',
	lpm_no bigint comment 'LPM Number',
	coa_pd_ftr_cd string comment 'COA Product Feature Code',
	pd_tp_cd string comment 'Product Type Code',
	pd_tp_desc string comment 'Product Type Description',
	pd_sub_tp_cd string comment 'Product Sub Type Code',
	pd_sub_tp_desc string comment 'Product Sub Type Description',
	acct_ownr_tp_cd smallint comment 'Account Ownership Type Code',
	new_in_mo_f string comment 'New in Month Flag',
	cntrct_sign_dt date comment 'Contract Sign Date',
	acct_eff_dt date comment 'Account Effective Date',
	mat_dt date comment 'Maturity Date',
	mat_rnew_cd string comment 'Maturity Renewal Code',
	mat_rnew_desc string comment 'Maturity Renewal Description',
	cntrct_term smallint comment 'Contract Term',
	cntrct_term_unit string comment 'Contract Term Unit',
	acct_pps_cd string comment 'Account Purpose Code',
	acct_pps_th_desc string comment 'Account Purpose Thai Description',
	acct_pps_eng_desc string comment 'Account Purpose English Description',
	acct_isic_cd string comment 'Account ISIC CODE',
	acct_isic_desc string comment 'Account ISIC Description',
	acct_indst_cl_cd string comment 'Account Industry Classification Code',
	acct_indst_cl_desc string comment 'Account Industry Classification Description',
	pn_int_dedct_tp_cd smallint comment 'PN Interest Deduction Type Code',
	lg_chnl smallint comment 'LG Channel',
	net_discnt_amt decimal(18, 2) comment 'Net Discount Amount',
	lmt_acct_no string comment 'Limit Account Number',
	lmt_amt decimal(18, 2) comment 'Limit Amount',
	last_dsbr_dt date comment 'Last Disbursement Date',
	tot_dsbr_amt decimal(18, 2) comment 'Total Disbursement Amount',
	pnp_amt decimal(18, 2) comment 'Principal Amount',
	otsnd_bal_thb decimal(18, 2) comment 'Outstanding Balance in THB',
	otsnd_bal_orig_ccy decimal(18, 2) comment 'Outstanding Balance in Original Currency',
	otsnd_bal_ccy_cd string comment 'Outstanding Balance Currency Code',
	acru_int_amt decimal(18, 2) comment 'Accrued Interest Amount',
	mo_acru_int_amt decimal(18, 2) comment 'Monthly Accrued Interest Amount',
	unpaid_int_bill_amt decimal(18, 2) comment 'Unpaid Interest Bill Amount',
	unamtz_amt decimal(18, 2) comment 'Unamortized Amount',
	tot_due_amt decimal(18, 2) comment 'Total Due Amount',
	unpaid_fee_amt decimal(18, 2) comment 'Unpaid Fee Amount',
	unpaid_bill_amt decimal(18, 2) comment 'Unpaid Bill Amount',
	ovdue_amt decimal(18, 2) comment 'Overdue Amount',
	ovdue_dt date comment 'Overdue Date',
	ovdue_priod smallint comment 'Overdue Period',
	dpd smallint comment 'Days Past Due',
	fee_rate_pct decimal(9, 5) comment 'Fee Rate Percentage',
	accum_actl_fee_amt decimal(18, 2) comment 'Accumulated Actual Fee Amount',
	bill_seq_no smallint comment 'Bill Sequence Number',
	tot_nbr_instl smallint comment 'Total Number of Installments',
	due_amt decimal(18, 2) comment 'Due Amount',
	due_dt date comment 'Due Date',
	dep_dedct_acct_no string comment 'Deposit Deduct Account Number',
	ref_int_rate_dep_acct_no string comment 'Reference Interest Rate Deposit Account Number',
	last_paymt_dt date comment 'Last Payment Date',
	nxt_due_dt date comment 'Next Due Date',
	nxt_due_amt decimal(18, 2) comment 'Next Due Amount',
	accum_repay_amt decimal(18, 2) comment 'Accumulated Repayment Amount',
	accum_actl_pnp_paymt_amt decimal(18, 2) comment 'Accumulated Actual Principal Payment Amount',
	int_rate_tp_cd smallint comment 'Interest Rate Type Code',
	int_rate_tp_desc string comment 'Interest Rate Type Description',
	orig_int_rate_tp_cd string comment 'Original Interest Rate Type Code',
	orig_int_rate_tp_desc string comment 'Original Interest Rate Type Description',
	max_int_rate_pct decimal(9, 5) comment 'Maximum Interest Rate Percentage',
	crrnt_sprd_pct decimal(9, 5) comment 'Current Spread Percentage',
	crrnt_int_rate_pct decimal(9, 5) comment 'Current Interest Rate Percentage',
	late_int_rate_tp_cd string comment 'Late Interest Rate Type Code',
	late_int_rate_tp_desc string comment 'Late Interest Rate Type Description',
	pnlty_int_rate_pct decimal(9, 5) comment 'Penalty Interest Rate Percentage',
	int_late_chrg_amt decimal(18, 2) comment 'Interest Late Charge Amount',
	accum_actl_late_chrg_amt decimal(18, 2) comment 'Accumulated Actual Late Charge Amount',
	rvrs_acru_int_amt decimal(18, 2) comment 'Reverse Accrued Interest Amount',
	memo_acru_int_amt decimal(18, 2) comment 'Memo Accrued Interest Amount',
	actl_acru_memo_paymt_amt decimal(18, 2) comment 'Actual Accrual Memo Payment Amount',
	apprv_tp_cd smallint comment 'Approval Type Code',
	apprv_no string comment 'Approver Number',
	orig_adv_acct_no string comment 'Original Advancement Account Number',
	coa_acct string comment 'COA Account',
	issu_br_no string comment 'Issue Branch Number',
	br_ownr_no string comment 'Branch Owner Number',
	mkt_cd string comment 'Market Code',
	mkt_desc string comment 'Market Description',
	cmsn_tp_cd smallint comment 'Commission Type Code',
	cmsn_tp_desc string comment 'Commission Type Description',
	cmsn_amt decimal(18, 2) comment 'Commission Amount',
	nbr_stop_cal_cmsn_mo smallint comment 'Number of Stop Calculation Commision Months',
	load_tms timestamp comment 'Load Timestamp',
	ptn_yyyy string comment 'Partition Year',
	ptn_mm string comment 'Partition Month',
	ptn_dd string comment 'Partition Day'
) using delta partitioned by (ptn_yyyy, ptn_mm, ptn_dd) location 'abfss://${storage_curated}/${catalog}/curated_ln/ln_acct_prfl_dly' tblproperties (
	'delta.minreaderversion' = '2',
	'delta.minwriterversion' = '5',
	'delta.columnmapping.mode' = 'name'
)
