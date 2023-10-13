# Synctera::PatchAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance_ceiling** | [**BalanceCeiling**](BalanceCeiling.md) |  | [optional] |
| **balance_floor** | [**BalanceFloor**](BalanceFloor.md) |  | [optional] |
| **fee_product_ids** | **Array&lt;String&gt;** | A list of fee account products that the current account associates with. | [optional] |
| **interest_product_id** | **String** | An interest account product that the current account associates with.  | [optional] |
| **is_ach_enabled** | **Boolean** | A flag to indicate whether ACH transactions are enabled. | [optional] |
| **is_card_enabled** | **Boolean** | A flag to indicate whether card transactions are enabled. | [optional] |
| **is_eft_ca_enabled** | **Boolean** | A flag to indicate whether EFT Canada transactions are enabled. | [optional] |
| **is_external_card_enabled** | **Boolean** | A flag to indicate whether external cards are enabled. | [optional] |
| **is_p2p_enabled** | **Boolean** | A flag to indicate whether P2P transactions are enabled. | [optional] |
| **is_wire_enabled** | **Boolean** | A flag to indicate whether wire transactions are enabled. | [optional] |
| **note** | **String** | Add an optional note when patching a line of credit account. A note is required when setting the status to or from SUSPENDED. | [optional] |
| **overdraft_limit** | **Integer** | Account&#39;s overdraft limit | [optional] |
| **spend_control_ids** | **Array&lt;String&gt;** | List of spend control IDs to control spending for the account | [optional] |
| **spending_limits** | [**SpendingLimits**](SpendingLimits.md) |  | [optional] |
| **access_status** | [**AccountAccessStatus**](AccountAccessStatus.md) |  | [optional] |
| **account_number** | **String** | Account number | [optional][readonly] |
| **account_number_masked** | **String** | The response will contain the bank fintech ID (3 or 6 digits) plus the last 4 digits, with the digits in between replaced with * characters. Shadow mode account numbers will not be masked. | [optional][readonly] |
| **account_purpose** | **String** | Purpose of the account | [optional] |
| **account_type** | [**AccountType**](AccountType.md) |  | [optional] |
| **application_id** | **String** | The application ID for this account.  | [optional] |
| **balances** | [**Array&lt;Balance&gt;**](Balance.md) | A list of balances for account based on different type | [optional][readonly] |
| **bank_routing** | **String** | Bank routing number | [optional][readonly] |
| **creation_time** | **Time** | Account creation timestamp in RFC3339 format | [optional][readonly] |
| **currency** | **String** | Account currency or account settlement currency. ISO 4217 alphabetic currency code. Default USD | [optional] |
| **customer_ids** | **Array&lt;String&gt;** | A list of the customer IDs of the account holders. | [optional][readonly] |
| **customer_type** | [**CustomerType**](CustomerType.md) |  | [optional] |
| **exchange_rate_type** | **String** | Exchange rate type | [optional] |
| **iban** | **String** | International bank account number | [optional] |
| **id** | **String** | Account ID | [optional][readonly] |
| **is_account_pool** | **Boolean** | Account is investment (variable balance) account or a multi-balance account pool. Default false | [optional] |
| **is_sar_enabled** | **Boolean** | A flag to indicate whether SAR generation is enabled. | [optional][readonly] |
| **last_updated_time** | **Time** | Timestamp of the last account modification in RFC3339 format | [optional][readonly] |
| **metadata** | **Object** | User provided account metadata | [optional] |
| **nickname** | **String** | User provided account nickname | [optional] |
| **status** | [**Status**](Status.md) |  | [optional] |
| **swift_code** | **String** | SWIFT code | [optional] |
| **is_system_auto_pay_enabled** | **Boolean** | A flag to indicate whether auto payments are enabled. | [optional] |
| **credit_limit** | **Integer** | The credit limit for this line of credit account in cents. Minimum is 0.  | [optional] |
| **grace_period** | **Integer** | The number of days past the billing period to allow for payment before it is considered due. This directly infers the due date for a payment. The default will be set to 21 days.  | [optional] |
| **minimum_payment** | [**MinimumPaymentPartial**](MinimumPaymentPartial.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PatchAccount.new(
  balance_ceiling: null,
  balance_floor: null,
  fee_product_ids: null,
  interest_product_id: null,
  is_ach_enabled: null,
  is_card_enabled: null,
  is_eft_ca_enabled: null,
  is_external_card_enabled: null,
  is_p2p_enabled: null,
  is_wire_enabled: null,
  note: null,
  overdraft_limit: null,
  spend_control_ids: null,
  spending_limits: null,
  access_status: null,
  account_number: null,
  account_number_masked: 123*****6789,
  account_purpose: This account for the account holder&#39;s salary deposit.,
  account_type: null,
  application_id: null,
  balances: null,
  bank_routing: null,
  creation_time: null,
  currency: USD,
  customer_ids: null,
  customer_type: null,
  exchange_rate_type: M, INTERBANK, CUST,
  iban: null,
  id: null,
  is_account_pool: null,
  is_sar_enabled: null,
  last_updated_time: null,
  metadata: null,
  nickname: null,
  status: null,
  swift_code: null,
  is_system_auto_pay_enabled: null,
  credit_limit: 2500,
  grace_period: 21,
  minimum_payment: null
)
```

