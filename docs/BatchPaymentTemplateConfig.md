# Synctera::BatchPaymentTemplateConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_account_id** | **String** | The ID of the external account that will be to match the batch transfer the appropriate template.  |  |
| **max_individual_transaction_amount** | **Integer** | The maximum amount that a single transaction can be for the batch transfer.  | [optional] |
| **max_total_transaction_amount** | **Integer** | The maximum amount that the total transactions can be for the batch transfer.  | [optional] |
| **max_transaction_count** | **Integer** | The maximum number of transactions that can be in the batch transfer.  | [optional] |
| **min_individual_transaction_amount** | **Integer** | The minimum amount that a single transaction can be for the batch transfer.  | [optional] |
| **min_total_transaction_amount** | **Integer** | The minimum amount that the total transactions can be for the batch transfer.  | [optional] |
| **min_transaction_count** | **Integer** | The minimum number of transactions that can be in the batch transfer.  | [optional] |
| **settlement_account_id** | **String** | The ID of the settlement account that will be to match the batch transfer the appropriate template.  |  |
| **settlement_customer_id** | **String** | The customer ID of the settlement account.  |  |
| **subtypes** | **Array&lt;String&gt;** | The transaction subtypes that will be to match the batch transfer the appropriate template.  |  |
| **type** | **String** | The transaction type that will be to match the batch transfer the appropriate template.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::BatchPaymentTemplateConfig.new(
  external_account_id: null,
  max_individual_transaction_amount: null,
  max_total_transaction_amount: null,
  max_transaction_count: null,
  min_individual_transaction_amount: null,
  min_total_transaction_amount: null,
  min_transaction_count: null,
  settlement_account_id: null,
  settlement_customer_id: null,
  subtypes: null,
  type: null
)
```

