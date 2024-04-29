# Synctera::GatewayResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_products** | **Array&lt;String&gt;** | List of Card Product unique identifiers that will utilize the Gateway |  |
| **creation_time** | **Time** | The timestamp representing when the gateway config request was made | [readonly] |
| **custom_headers** | **Hash&lt;String, String&gt;** | These key-value pairs define custom HTTP headers that will be included in every HTTP request to the gateway. Note that when updating this field, all key-value pairs will be replaced. They are not merged with existing data.  | [optional] |
| **id** | **String** | Gateway ID |  |
| **is_active** | **Boolean** | Current status of the Authorization gateway |  |
| **last_updated_time** | **Time** | The timestamp representing when the gateway config was last modified at | [readonly] |
| **standin** | [**GatewayStandin**](GatewayStandin.md) |  | [optional] |
| **tenant** | **String** | The id of the tenant containing the resource.  |  |
| **url** | **String** | URL of the Authorization gateway |  |

## Example

```ruby
require 'synctera'

instance = Synctera::GatewayResponse.new(
  card_products: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  custom_headers: null,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  is_active: null,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  standin: null,
  tenant: abcdef_ghijkl,
  url: null
)
```

