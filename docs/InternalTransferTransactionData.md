# Synctera::InternalTransferTransactionData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **originating_account_id** | **String** | The uuid of the account being debited | [optional] |
| **receiving_account_id** | **String** | The uuid of the account being credited | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::InternalTransferTransactionData.new(
  originating_account_id: null,
  receiving_account_id: null
)
```

