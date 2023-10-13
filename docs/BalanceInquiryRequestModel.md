# Synctera::BalanceInquiryRequestModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | **String** |  |  |
| **card_acceptor** | [**CardAcceptorModel**](CardAcceptorModel.md) |  |  |
| **card_id** | **String** |  |  |
| **mid** | **String** |  |  |
| **network_fees** | [**Array&lt;NetworkFeeModel&gt;**](NetworkFeeModel.md) |  | [optional] |
| **pin** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::BalanceInquiryRequestModel.new(
  account_type: null,
  card_acceptor: null,
  card_id: null,
  mid: null,
  network_fees: null,
  pin: null
)
```

