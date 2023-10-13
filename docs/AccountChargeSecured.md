# Synctera::AccountChargeSecured

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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
| **note** | **String** | Add an optional note when creating or updating a charged secured account. A note is required when updating the status to or from SUSPENDED | [optional] |
| **security** | [**Security**](Security.md) |  | [optional] |
| **spend_control_ids** | **Array&lt;String&gt;** | List of spend control IDs to control spending for the account | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AccountChargeSecured.new(
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
  note: null,
  security: null,
  spend_control_ids: null
)
```

