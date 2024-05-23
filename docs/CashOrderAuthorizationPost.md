# Synctera::CashOrderAuthorizationPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Transfer amount in cents |  |
| **authorization_type** | [**CashAuthorizationType**](CashAuthorizationType.md) |  |  |
| **destination_account_id** | **String** | The UUID of the Synctera account resource that is the destination of the transfer.  |  |
| **order_date** | **Date** | The date the cash order was placed with cash distribution provider |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CashOrderAuthorizationPost.new(
  amount: 10000,
  authorization_type: null,
  destination_account_id: fccb4a46-1261-4e91-b622-73b5b946183d,
  order_date: null
)
```

