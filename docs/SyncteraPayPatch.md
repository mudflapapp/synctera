# Synctera::SyncteraPayPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount in the source currency&#39;s minor unit. For example, 10000 would be $100 for USD.  One of the amount or percentage is required.  | [optional] |
| **exchange_details** | [**ExchangeDetails**](ExchangeDetails.md) |  | [optional] |
| **final_external_account_id** | **String** | The ID of the final external account that will be the receiver of the Synctera Pay transfer. | [optional] |
| **source_data** | **Object** | Additional information to be added to the transfer | [optional] |
| **status** | **String** |  | [optional] |
| **synctera_pay_vendor_id** | **String** | The ID of the vendor that will be used to process the Synctera Pay transfer. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::SyncteraPayPatch.new(
  amount: null,
  exchange_details: null,
  final_external_account_id: null,
  source_data: null,
  status: null,
  synctera_pay_vendor_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

