# Synctera::GatewayResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Current status of the Authorization gateway |  |
| **card_products** | **Array&lt;String&gt;** | List of Card Product unique identifiers that will utilize the Gateway |  |
| **creation_time** | **Time** | The timestamp representing when the gateway config request was made | [readonly] |
| **custom_headers** | **Hash&lt;String, String&gt;** | Custom Headers of the Authorization gateway | [optional] |
| **id** | **String** | Gateway ID |  |
| **last_modified_time** | **Time** | The timestamp representing when the gateway config was last modified at | [readonly] |
| **standin** | [**GatewayStandin**](GatewayStandin.md) |  | [optional] |
| **url** | **String** | URL of the Authorization gateway |  |

## Example

```ruby
require 'synctera'

instance = Synctera::GatewayResponse.new(
  active: null,
  card_products: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  custom_headers: null,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  last_modified_time: 2010-05-06T12:23:34.321Z,
  standin: null,
  url: null
)
```

