# Synctera::WireTransactionSimulationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** | Number of the receiving account |  |
| **amount** | **Integer** | Amount to transfer in cents (e.g. 100 &#x3D; $1). |  |
| **network** | **String** | Network to use for the Wire transfer | [optional][default to &#39;FEDWIRE&#39;] |

## Example

```ruby
require 'synctera'

instance = Synctera::WireTransactionSimulationRequest.new(
  account_number: 123638791329,
  amount: 607,
  network: FEDWIRE
)
```

