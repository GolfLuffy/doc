-- Databricks notebook source
/*---------------------------------------------------------------------------------------------------
# Name: tbl_init_curated_atm_dc_prfl_dly.sql
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
# Target table(s)/view(s): ${catalog}.curated_atm.atm_dc_prfl_dly
#--------------------------------------------------------------------------------------------------*/

-- COMMAND ----------

create table if not exists ${catalog}.curated_atm.atm_dc_prfl_dly (
	pos_dt date comment 'Position Date',
	cis_no integer comment 'CIS Number',
	card_rndm_id string comment 'Card Random ID',
	mask_card_no string comment 'Masked Card Number',
	encpt_card_no string comment 'Encrypted Card Number',
	ordr_br_no string comment 'Order Branch Number',
	card_tp_cd string comment 'Card Type Code',
	card_tp_desc string comment 'Card Type Description',
	styl_cd string comment 'Style Code',
	crt_dt date comment 'Create Date',
	issu_dt date comment 'Issue Date',
	st_cd string comment 'Status Code',
	actv_dt date comment 'Active Date',
	exp_dt string comment 'Expire Date',
	cncl_dt_tm timestamp comment 'Cancel Date Time',
	prg_f string comment 'Purge Flag',
	prg_dt date comment 'Purge Date',
	svg_acct_no string comment 'Saving Account Number',
	svg_acct_actv_f string comment 'Saving Account Active Flag',
	crrnt_acct_no string comment 'Current Account Number',
	crrnt_acct_actv_f string comment 'Current Account Active Flag',
	prch_regis_f string comment 'Purchase Register Flag',
	prch_lmt_amt_per_day integer comment 'Purchase Limit Amount Per Day',
	prch_lmt_upd_dt_tm timestamp comment 'Purchase Limit Update Date Time',
	cash_wdrw_lmt_amt_per_day integer comment 'Cash Withdrawal Limit Amount Per Day',
	cash_adv_lmt_amt_per_day integer comment 'Cash Advance Limit Amount Per Day',
	wdrw_lmt_upd_dt_tm timestamp comment 'Withdrawal Limit Update Date Time',
	tfr_lmt_amt_per_day integer comment 'Transfer Limit Amount Per Day',
	tfr_lmt_upd_dt_tm timestamp comment 'Transfer Limit Update Date Time',
	prch_amt_per_day decimal(13, 0) comment 'Purchased Amount Per Day',
	nbr_prch_txn_per_day integer comment 'Number of Purchased Transaction Per Day',
	last_prch_dt date comment 'Last Purchase Date',
	cash_wdrw_amt decimal(13, 0) comment 'Cash Withdraw Amount',
	nbr_cash_wdrw integer comment 'Number of Cash Withdrawal',
	last_wdrw_dt date comment 'Last Withdrawal Date',
	link_acct_tfr_amt decimal(13, 0) comment 'Linkage Accounts Transferred Amount',
	nbr_link_acct_tfr integer comment 'Number of Linkage Accounts Transferred',
	intrabnk_tfr_amt decimal(13, 0) comment 'Intrabank Transferred Amount',
	nbr_intrabnk_tfr integer comment 'Number of Intrabank Transferred',
	onln_rtl_fund_tfr_amt decimal(13, 0) comment 'Online Retail Funds Transferred Amount',
	nbr_onln_rtl_fund_tfr integer comment 'Number of Online Retail Funds Transferred',
	last_tfr_dt date comment 'Last Transfer Date',
	last_tfr_amt decimal(13, 0) comment 'Last Transfer Amount',
	last_txn_dt date comment 'Last Transaction Date',
	intrbnk_fee_dt date comment 'Interbank Fee Date',
	nbr_intrbnk_fee_mo integer comment 'Number of Interbank Fee Monthly',
	wdrw_fee_dt date comment 'Withdrawal Fee Date',
	nbr_wdrw_fee integer comment 'Number of Withdrawal Fee',
	thrd_prty_fee_dt date comment 'Third Party Fee Date',
	nbr_thrd_prty_fee integer comment 'Number of Third Party Fee',
	paymt_fee_dt date comment 'Payment Fee Date',
	nbr_paymt_fee integer comment 'Number of Payment Fee',
	pendg_annl_fee_dt date comment 'Pending Annual Fee Date',
	pendg_annl_fee_f string comment 'Pending Annual Fee Flag',
	nbr_pendg_annl_fee integer comment 'Number of Pending Annual Fee',
	pendg_annl_fee_amt decimal(19, 0) comment 'Pending Annual Fee Amount',
	entry_fee_amt decimal(19, 0) comment 'Entry Fee Amount',
	frst_yr_fee_amt decimal(19, 0) comment 'First-Year Fee Amount',
	annl_fee_amt decimal(19, 0) comment 'Annual Fee Amount',
	annl_fee_due_dt string comment 'Annual Fee Due Date',
	last_yr_fee_amt decimal(19, 0) comment 'Last Year Fee Amount',
	last_yr_fee_dedct_dt date comment 'Last Year Fee Deducted Date',
	rfund_cd string comment 'Refund Code',
	rfund_desc string comment 'Refund Description',
	rfund_amt decimal(19, 0) comment 'Refund Amount',
	rfund_dt date comment 'Refund Date',
	nbr_pin_err integer comment 'Number of PIN Error',
	pin_err_chnl string comment 'PIN Error Channel',
	nbr_reset_pin integer comment 'Number of Reset PIN',
	load_tms timestamp comment 'Load Timestamp',
	ptn_yyyy string comment 'Partition Year',
	ptn_mm string comment 'Partition Month',
	ptn_dd string comment 'Partition Day',
	ptn_src_sys_id string comment 'Partition Source System Identification'
) using delta partitioned by (ptn_yyyy, ptn_mm, ptn_dd, ptn_src_sys_id) location 'abfss://${storage_curated}/${catalog}/curated_atm/atm_dc_prfl_dly' tblproperties (
	'delta.minreaderversion' = '2',
	'delta.minwriterversion' = '5',
	'delta.columnmapping.mode' = 'name'
)
