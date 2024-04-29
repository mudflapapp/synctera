# Synctera::CheckTransactionData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **back_image_id** | **String** | The back image id of the captured check | [optional] |
| **check_number** | **String** | The unique check number for this check in a given checkbook | [optional] |
| **front_image_id** | **String** | The front image id of the captured check | [optional] |
| **id** | **String** | The Synctera check deposit ID | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CheckTransactionData.new(
  back_image_id: null,
  check_number: null,
  front_image_id: null,
  id: null
)
```

