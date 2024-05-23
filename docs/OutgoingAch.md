# Synctera::OutgoingAch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Receiving account uuid. This links to the external account resource (represented by &#39;receiving_account_id&#39; in the request to send outgoing ACH). | [optional] |
| **account_name** | **String** | Receiving account name | [optional] |
| **account_no** | **String** | Receiving account number |  |
| **amount** | **Integer** | Transaction amount in cents |  |
| **bank_id** | **Integer** |  |  |
| **company_entry_description** | **String** | Company Entry Description field in ACH batch header. Originator inserts this field&#39;s value to provide the Receiver with a description of the entry&#39;s purpose. | [optional] |
| **company_name** | **String** | Company Name field in ACH batch header. | [optional] |
| **effective_date** | **Date** | Effective date of the transaction |  |
| **external_id** | **String** | Transaction ID in the ledger |  |
| **hold** | [**HoldData**](HoldData.md) |  | [optional] |
| **id** | **String** |  |  |
| **incoming_ach_id** | **String** | ID of the linked incoming ACH entry. This is filled only for outgoing ACH entries that are returns and links to the originally received incoming entry. | [optional] |
| **is_same_day** | **Boolean** | Was initiated as same-day ACH transaction |  |
| **memo** | **String** |  |  |
| **partner_id** | **Integer** |  |  |
| **reference_info** | **String** | Transaction reference info | [optional] |
| **return_data** | [**ReturnData**](ReturnData.md) |  | [optional] |
| **source_account_id** | **String** | Originating account uuid. This links to the customer account on Synctera platform (represented by &#39;originating_account_id&#39; in the request to send outgoing ACH). | [optional] |
| **source_account_name** | **String** | Originating account name | [optional] |
| **source_account_no** | **String** | Originating account number |  |
| **status** | **String** |  |  |
| **trace_no** | **String** | Trace number of the transaction |  |

## Example

```ruby
require 'synctera'

instance = Synctera::OutgoingAch.new(
  account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  account_name: Bruce Wayne,
  account_no: 122455799,
  amount: 1560,
  bank_id: 1,
  company_entry_description: PAYROLL,
  company_name: Asdf Finance,
  effective_date: Thu Mar 24 17:00:00 PDT 2022,
  external_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  hold: null,
  id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  incoming_ach_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  is_same_day: null,
  memo: null,
  partner_id: 2,
  reference_info: null,
  return_data: null,
  source_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  source_account_name: Thomas Anderson,
  source_account_no: 123638791329,
  status: null,
  trace_no: 123456780000069
)
```

