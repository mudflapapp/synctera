# Synctera::TransferResponseBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of the account to which the card will be linked |  |
| **amount** | **Integer** | Amount of the transfer in cents |  |
| **country_code** | **String** | ISO-3166-1 Alpha-2 country code |  |
| **created_time** | **Time** |  |  |
| **currency** | **String** | ISO 4217  Alpha-3 currency code |  |
| **customer_id** | **String** | The ID of the customer to whom the card belongs |  |
| **external_card_id** | **String** | The ID of the external card from/to which the transfer was initiated/received |  |
| **id** | **String** | The ID of the transfer |  |
| **last_modified_time** | **Time** |  |  |
| **merchant** | [**Merchant**](Merchant.md) |  |  |
| **network_decline_details** | **String** | If available, a human readable string indicating why a transfer was declined downstream of our system | [optional] |
| **reason** | **String** | The reason for the status, e.g. INSUFFICIENT_FUNDS, SUSPECTED_FRAUD, NETWORK_DECLINED | [optional] |
| **status** | **String** | The status of the transfer |  |
| **transaction_id** | **String** | The transaction ID | [optional] |
| **type** | [**TransferType**](TransferType.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::TransferResponseBase.new(
  account_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  amount: null,
  country_code: US,
  created_time: 2010-05-06T12:23:34.321Z,
  currency: USD,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  external_card_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  id: null,
  last_modified_time: 2010-05-06T12:23:34.321Z,
  merchant: null,
  network_decline_details: null,
  reason: null,
  status: null,
  transaction_id: null,
  type: null
)
```

