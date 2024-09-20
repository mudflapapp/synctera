# Synctera::AccountGenericResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_status** | [**AccountAccessStatus**](AccountAccessStatus.md) |  | [optional] |
| **access_status_last_updated_time** | **Time** | Timestamp of the last modification of the access_status. RFC3339 format. | [optional][readonly] |
| **account_closure** | [**AccountClosure**](AccountClosure.md) |  | [optional] |
| **account_number** | **String** | Account number | [optional][readonly] |
| **account_number_masked** | **String** | The response will contain the bank fintech ID (3 or 6 digits) plus the last 4 digits, with the digits in between replaced with * characters. Shadow mode account numbers will not be masked. | [optional][readonly] |
| **account_purpose** | **String** | Purpose of the account | [optional] |
| **account_type** | [**AccountType**](AccountType.md) |  | [optional] |
| **application_id** | **String** | The application ID for this account.  | [optional] |
| **auto_payment_period** | **Integer** | The number of days past the billing period to initiate an auto payment. Only applicable for accounts with type &#x60;CHARGE_SECURED&#x60;, where the account holder has opted in for auto payment functionality. This value must be lower than or equal the &#x60;grace_period&#x60; setting on the account. If this value is 0, the auto payment will happen on the same day as the statement is generated. Auto payment only occurs if regular payments are not received on time.  | [optional] |
| **balance_ceiling** | [**BalanceCeiling**](BalanceCeiling.md) |  | [optional] |
| **balance_floor** | [**BalanceFloor**](BalanceFloor.md) |  | [optional] |
| **balances** | [**Array&lt;Balance&gt;**](Balance.md) | A list of balances for account based on different type | [optional][readonly] |
| **bank_account_id** | **String** | Identifier of the bank side account that this account is a part of | [optional][readonly] |
| **bank_routing** | **String** | Bank routing number | [optional][readonly] |
| **billing_period** | [**BillingPeriod**](BillingPeriod.md) |  | [optional] |
| **business_ids** | **Array&lt;String&gt;** | A list of the business IDs of the account holders. | [optional][readonly] |
| **close_date** | **Date** | The account close date. This is the bank&#39;s posting date when the account resource&#39;s status was changed to CLOSED or CHARGED_OFF. | [optional][readonly] |
| **creation_time** | **Time** | Account creation timestamp in RFC3339 format | [optional][readonly] |
| **credit_limit** | **Integer** | The credit limit for this line of credit account in cents. Minimum is 0.  | [optional] |
| **currency** | **String** | Account currency or account settlement currency. ISO 4217 alphabetic currency code. Default USD | [optional] |
| **customer_ids** | **Array&lt;String&gt;** | A list of the customer IDs of the account holders. | [optional][readonly] |
| **customer_type** | [**CustomerType**](CustomerType.md) |  | [optional] |
| **days_past_due** | **Integer** | The number of days since the account went past due on their minimum payments. | [optional] |
| **exchange_rate_type** | **String** | Exchange rate type | [optional] |
| **fee_product_ids** | **Array&lt;String&gt;** | A list of fee account products that the current account associates with. | [optional] |
| **funds_ownership** | [**FundsOwnership**](FundsOwnership.md) |  | [optional] |
| **general_ledger_category** | [**GeneralLedgerCategory**](GeneralLedgerCategory.md) |  | [optional] |
| **general_ledger_type** | [**GeneralLedgerType**](GeneralLedgerType.md) |  | [optional] |
| **grace_period** | **Integer** | The number of days past the billing period to allow for payment before it is considered due. This directly infers the due date for a payment. The default will be set to 21 days.  | [optional] |
| **iban** | **String** | International bank account number | [optional] |
| **id** | **String** | Account ID | [optional][readonly] |
| **interest_product_id** | **String** | An interest account product that the current account associates with. | [optional] |
| **is_account_pool** | **Boolean** | Account is investment (variable balance) account or a multi-balance account pool. Default false | [optional] |
| **is_ach_enabled** | **Boolean** | A flag to indicate whether ACH transactions are enabled. | [optional][readonly] |
| **is_card_enabled** | **Boolean** | A flag to indicate whether card transactions are enabled. | [optional][readonly] |
| **is_eft_ca_enabled** | **Boolean** | A flag to indicate whether EFT Canada transactions are enabled. | [optional][readonly] |
| **is_external_card_enabled** | **Boolean** | A flag to indicate whether external card transactions are enabled. | [optional][readonly] |
| **is_p2p_enabled** | **Boolean** | A flag to indicate whether P2P transactions are enabled. | [optional][readonly] |
| **is_sar_enabled** | **Boolean** | A flag to indicate whether SAR generation is enabled. | [optional][readonly] |
| **is_security** | **Boolean** | A flag to indicate whether this account is being used as security for another account. | [optional][readonly] |
| **is_synctera_pay_enabled** | **Boolean** | A flag to indicate whether Synctera Pay transactions are enabled. | [optional][readonly] |
| **is_system_auto_pay_enabled** | **Boolean** | A flag to indicate whether auto pay feature is enabled. | [optional] |
| **is_wire_enabled** | **Boolean** | A flag to indicate whether wire transactions are enabled. | [optional][readonly] |
| **last_updated_time** | **Time** | Timestamp of the last account modification in RFC3339 format | [optional][readonly] |
| **metadata** | **Object** | User provided account metadata | [optional] |
| **minimum_payment** | [**MinimumPayment**](MinimumPayment.md) |  | [optional] |
| **nickname** | **String** | User provided account nickname | [optional] |
| **open_date** | **Date** | The account open date. This is the bank&#39;s posting date when the account resource was created. | [optional][readonly] |
| **overdraft_limit** | **Integer** | This field is unused and will be removed in a future API version.  | [optional] |
| **restrictions** | [**AccountRestrictions**](AccountRestrictions.md) |  | [optional] |
| **security** | [**Security**](Security.md) |  | [optional] |
| **spend_control_ids** | **Array&lt;String&gt;** | List of spend control IDs to control spending for the account | [optional] |
| **spending_limits** | [**SpendingLimits**](SpendingLimits.md) |  | [optional] |
| **status** | [**AccountStatus**](AccountStatus.md) |  | [optional] |
| **stop_payments** | [**Array&lt;StopPayment&gt;**](StopPayment.md) |  | [optional][readonly] |
| **swift_code** | **String** | SWIFT code | [optional] |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AccountGenericResponse.new(
  access_status: null,
  access_status_last_updated_time: null,
  account_closure: null,
  account_number: null,
  account_number_masked: 123*****6789,
  account_purpose: This account for the account holder&#39;s salary deposit.,
  account_type: null,
  application_id: null,
  auto_payment_period: 20,
  balance_ceiling: null,
  balance_floor: null,
  balances: null,
  bank_account_id: null,
  bank_routing: null,
  billing_period: null,
  business_ids: null,
  close_date: null,
  creation_time: null,
  credit_limit: 2500,
  currency: USD,
  customer_ids: null,
  customer_type: null,
  days_past_due: null,
  exchange_rate_type: M, INTERBANK, CUST,
  fee_product_ids: null,
  funds_ownership: null,
  general_ledger_category: null,
  general_ledger_type: null,
  grace_period: 21,
  iban: null,
  id: null,
  interest_product_id: null,
  is_account_pool: null,
  is_ach_enabled: null,
  is_card_enabled: null,
  is_eft_ca_enabled: null,
  is_external_card_enabled: null,
  is_p2p_enabled: null,
  is_sar_enabled: null,
  is_security: null,
  is_synctera_pay_enabled: null,
  is_system_auto_pay_enabled: null,
  is_wire_enabled: null,
  last_updated_time: null,
  metadata: null,
  minimum_payment: null,
  nickname: null,
  open_date: null,
  overdraft_limit: null,
  restrictions: null,
  security: null,
  spend_control_ids: null,
  spending_limits: null,
  status: null,
  stop_payments: null,
  swift_code: null,
  tenant: abcdef_ghijkl
)
```

