# Synctera::CardEditRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_status** | [**CardStatusRequest**](CardStatusRequest.md) |  | [optional] |
| **customer_id** | **String** | The ID of the customer to whom the card will be issued | [optional] |
| **emboss_name** | [**EmbossName**](EmbossName.md) |  | [optional] |
| **memo** | **String** | Additional details about the reason for the status change | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional data to include in the request structured as key-value pairs | [optional] |
| **reason** | [**CardStatusReasonCode**](CardStatusReasonCode.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CardEditRequest.new(
  card_status: null,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  emboss_name: null,
  memo: null,
  metadata: null,
  reason: null
)
```

