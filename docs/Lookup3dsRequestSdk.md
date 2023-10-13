# Synctera::Lookup3dsRequestSdk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication_indicator** | **String** |  |  |
| **device_channel** | **String** | Channel through which Device Data Collection was performed  Channel | Description --- | --- &#x60;BROWSER&#x60; | Internet browser &#x60;SDK&#x60; | Mobile app  |  |
| **id** | **String** | The unique identifier of the 3DS authentication |  |
| **transaction_mode** | **String** |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Lookup3dsRequestSdk.new(
  authentication_indicator: null,
  device_channel: BROWSER,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  transaction_mode: null
)
```

