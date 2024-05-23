# Synctera::CashOrderAuthorizationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Transfer amount in cents |  |
| **authorization_type** | [**CashAuthorizationType**](CashAuthorizationType.md) |  |  |
| **destination_account_id** | **String** | The UUID of the Synctera account resource that is the destination of the transfer.  |  |
| **order_date** | **Date** | The date the cash order was placed with cash distribution provider |  |
| **account_number** | **String** | The account number of the client business the cash order is for. Known as \&quot;Location ID\&quot; in the cash order CSV files.  |  |
| **client_name** | **String** | The name of the client business the cash order is for. |  |
| **hold_id** | **String** | ID of the hold created for this authorization |  |
| **id** | **String** | ID of the transfer |  |
| **originating_account_id** | **String** | The UUID of the Synctera account resource originating the transfer.  |  |
| **status** | **String** |  |  |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CashOrderAuthorizationResponse.new(
  amount: 10000,
  authorization_type: null,
  destination_account_id: fccb4a46-1261-4e91-b622-73b5b946183d,
  order_date: null,
  account_number: null,
  client_name: Cash-Based Brick and Mortar Store,
  hold_id: null,
  id: null,
  originating_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  status: null,
  tenant: abcdef_ghijkl
)
```

