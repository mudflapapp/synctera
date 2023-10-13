# Synctera::BalanceCeiling

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance** | **Integer** | Maximum balance in the account&#39;s currency. Unit in cents. |  |
| **linked_account_id** | **String** | ID of linked backing account for just-in-time (JIT) funding of transactions to maintain the balance ceiling  | [optional] |
| **overflow_account_id** | **String** | ID of linked backing account for just-in-time (JIT) funding of transactions to maintain the balance ceiling This attribute is a deprecated alias for linked_account_id.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::BalanceCeiling.new(
  balance: null,
  linked_account_id: null,
  overflow_account_id: null
)
```

