# Synctera::OutgoingAchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Amount to transfer in ISO 4217 minor currency units |  |
| **company_entry_description** | **String** | Company Entry Description field in ACH batch header. Originator inserts this field&#39;s value to provide the Receiver with a description of the entry&#39;s purpose. | [optional] |
| **company_name** | **String** | Overrides the &#39;Company Name&#39; field in ACH batch header, which otherwise defaults to the configured partner name. The provided name will be prepended with the Bank&#39;s configured prefix and a *. It will then be truncated to 16 characters. | [optional] |
| **currency** | **String** | ISO 4217 alphabetic currency code of the transfer amount |  |
| **customer_id** | **String** | The customer&#39;s unique identifier |  |
| **dc_sign** | **String** | The type of transaction (debit or credit). A debit is a transfer in and a credit is a transfer out of the originating account |  |
| **effective_date** | **Date** | Effective date transaction proccesses (is_same_day needs to be false or not present at all) | [optional] |
| **external_data** | **Object** | Additional transfer metadata structured as key-value pairs | [optional] |
| **final_customer_id** | **String** | ID of the international customer that receives the final remittance transfer (required for OFAC enabled payments) | [optional] |
| **hold** | [**AchRequestHoldData**](AchRequestHoldData.md) |  | [optional] |
| **is_same_day** | **Boolean** | Send as same day ACH transaction (use only is_same_day without specific effective_date) | [optional] |
| **memo** | **String** | Memo for the payment | [optional] |
| **originating_account_id** | **String** | The unique identifier for an originating account |  |
| **receiving_account_id** | **String** | The unique identifier for an receiving account |  |
| **reference_info** | **String** | Will be sent to the ACH network and maps to Addenda record 05 - the recipient bank will receive this info | [optional] |
| **risk** | [**RiskData**](RiskData.md) |  | [optional] |
| **sec_code** | **String** | Standard Entry Class Code: * WEB: Internet initiated / Mobile Entry (default if empty) * CCD: Corporate Credit or Debit * PPD: Pre-arranged Payment or Deposit (only deposits currently supported) | [optional][default to &#39;WEB&#39;] |

## Example

```ruby
require 'synctera'

instance = Synctera::OutgoingAchRequest.new(
  amount: 607,
  company_entry_description: PAYROLL,
  company_name: Asdf Finance,
  currency: USD,
  customer_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  dc_sign: debit,
  effective_date: Thu Mar 17 20:00:00 EDT 2022,
  external_data: null,
  final_customer_id: null,
  hold: null,
  is_same_day: null,
  memo: null,
  originating_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  receiving_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  reference_info: Tempore atque et cum.,
  risk: null,
  sec_code: null
)
```

