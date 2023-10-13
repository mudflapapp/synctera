# Synctera::BalanceFloor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance** | **Integer** | Minimum balance in the account&#39;s currency. Unit in cents. |  |
| **linked_account_id** | **String** | ID of linked backing account for just-in-time (JIT) funding of transactions to maintain the balance floor  | [optional] |
| **overdraft_account_id** | **String** | ID of linked backing account for just-in-time (JIT) funding of transactions to maintain the balance floor This attribute is a deprecated alias for linked_account_id.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::BalanceFloor.new(
  balance: null,
  linked_account_id: null,
  overdraft_account_id: null
)
```

