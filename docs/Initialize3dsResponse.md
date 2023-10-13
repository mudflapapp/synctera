# Synctera::Initialize3dsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_data_collection_jwt** | **String** | JWT used for device data collection |  |
| **device_data_collection_url** | **String** | URL used for device data collection |  |
| **id** | **String** | The unique identifier of the 3DS authentication |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Initialize3dsResponse.new(
  device_data_collection_jwt: null,
  device_data_collection_url: null,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

