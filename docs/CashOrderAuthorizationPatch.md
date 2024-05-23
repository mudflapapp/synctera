# Synctera::CashOrderAuthorizationPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** | The account number of the client business the cash order is for. Known as \&quot;Location ID\&quot; in the cash order CSV files.  | [optional] |
| **authorization_type** | [**CashAuthorizationType**](CashAuthorizationType.md) |  |  |
| **client_name** | **String** | The name of the client business the cash order is for. | [optional] |
| **order_date** | **Date** | The date the cash order was placed with Empyreal | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CashOrderAuthorizationPatch.new(
  account_number: null,
  authorization_type: null,
  client_name: Cash-Based Brick and Mortar Store,
  order_date: null,
  status: null
)
```

