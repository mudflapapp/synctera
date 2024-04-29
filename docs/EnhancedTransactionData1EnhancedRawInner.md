# Synctera::EnhancedTransactionData1EnhancedRawInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | The monetary amount of the transaction | [optional] |
| **categorized_by** | **Integer** | The method used to detrmine the category | [optional] |
| **category** | **String** | The category of the transaction | [optional] |
| **category_guid** | **String** | The unique identifier for the category | [optional] |
| **described_by** | **Integer** | The method used to describe the transaction | [optional] |
| **description** | **String** | A human-readable version of &#x60;original_description&#x60; | [optional] |
| **extended_transaction_type** | **String** | The transaction type assigned by the partner | [optional] |
| **id** | **Integer** | The unique partner-defined identifier for the transaction | [optional] |
| **is_bill_pay** | **Boolean** | Whether the transaction represents a bill payment | [optional] |
| **is_direct_deposit** | **Boolean** | Whether or not the transaction represents a direct deposit | [optional] |
| **is_expense** | **Boolean** | Whether or not the transaction represents an expense | [optional] |
| **is_fee** | **Boolean** | Whether or not the transaction represents a fee | [optional] |
| **is_income** | **Boolean** | Whether or not the transaction represents income | [optional] |
| **is_international** | **Boolean** | Whether or not the transaction is international | [optional] |
| **is_overdraft_fee** | **Boolean** | Whether or not the transaction is an overdraft fee | [optional] |
| **is_payroll_advance** | **Boolean** | Whether or not the transaction is a payroll advance | [optional] |
| **is_subscription** | **Boolean** | Whether or not the transaction is a subscription | [optional] |
| **memo** | **String** | Additional descriptiive information about the transaction | [optional] |
| **merchant_category_code** | **Integer** | The ISO 18245 category code for the transaction | [optional] |
| **merchant_guid** | **String** | The unique identifier for the merchant | [optional] |
| **merchant_location_guid** | **String** | The unique identifier for the merchant location | [optional] |
| **original_description** | **String** | The original description for the transaction | [optional] |
| **type** | **String** | The type of the transsaction. This will be either &#x60;CREDIT&#x60; or &#x60;DEBIT&#x60; | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::EnhancedTransactionData1EnhancedRawInner.new(
  amount: null,
  categorized_by: null,
  category: null,
  category_guid: null,
  described_by: null,
  description: null,
  extended_transaction_type: null,
  id: null,
  is_bill_pay: null,
  is_direct_deposit: null,
  is_expense: null,
  is_fee: null,
  is_income: null,
  is_international: null,
  is_overdraft_fee: null,
  is_payroll_advance: null,
  is_subscription: null,
  memo: null,
  merchant_category_code: null,
  merchant_guid: null,
  merchant_location_guid: null,
  original_description: null,
  type: null
)
```

