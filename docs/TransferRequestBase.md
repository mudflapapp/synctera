# Synctera::TransferRequestBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Amount of the transfer in cents |  |
| **currency** | **String** | ISO 4217  Alpha-3 currency code |  |
| **external_card_id** | **String** | The ID of the external card from/to which the transfer will be initiated/received |  |
| **merchant** | [**Merchant**](Merchant.md) |  | [optional] |
| **originating_account_id** | **String** | The ID of the account to which the transfer will be initiated/received |  |
| **type** | [**TransferTypeRequest**](TransferTypeRequest.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::TransferRequestBase.new(
  amount: null,
  currency: USD,
  external_card_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  merchant: null,
  originating_account_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  type: null
)
```

