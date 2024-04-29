# Synctera::SyncteraPayBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Transfer amount in cents |  |
| **currency** | **String** | The currency of the transfer in ISO 4217 format |  |
| **dc_sign** | **String** | Debit or credit sign |  |
| **direction** | [**SyncteraPayDirection**](SyncteraPayDirection.md) |  |  |
| **exchange_details** | [**ExchangeDetails**](ExchangeDetails.md) |  | [optional] |
| **final_external_account_id** | **String** | The ID of the final external account that will be the receiver of the Synctera Pay transfer.  |  |
| **source_data** | **Object** | Additional information to be added to the transfer | [optional] |
| **subtype** | [**SyncteraPaySubtype**](SyncteraPaySubtype.md) |  |  |
| **synctera_pay_network** | **String** | The network of the transfer.  |  |
| **synctera_pay_vendor_id** | **String** | The ID of the vendor that will be used to process the Synctera Pay transfer. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::SyncteraPayBase.new(
  amount: 10000,
  currency: USD,
  dc_sign: DEBIT,
  direction: null,
  exchange_details: null,
  final_external_account_id: null,
  source_data: null,
  subtype: null,
  synctera_pay_network: WISE,
  synctera_pay_vendor_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

