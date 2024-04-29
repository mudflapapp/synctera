# Synctera::ExternalCardResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_time** | **Time** |  | [optional] |
| **currency** | **String** | ISO 4217  Alpha-3 currency code |  |
| **customer_id** | **String** | The unique identifier of a customer |  |
| **expiration_month** | **String** |  | [readonly] |
| **expiration_year** | **String** |  | [readonly] |
| **id** | **String** | External card ID |  |
| **last_four** | **String** | The last 4 digits of the card PAN | [readonly] |
| **last_updated_time** | **Time** |  | [optional] |
| **name** | **String** | The cardholder name |  |
| **status** | [**ExternalCardStatus**](ExternalCardStatus.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource.  |  |
| **verifications** | [**ExternalCardVerifications**](ExternalCardVerifications.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::ExternalCardResponse.new(
  creation_time: 2010-05-06T12:23:34.321Z,
  currency: USD,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  expiration_month: 06,
  expiration_year: 25,
  id: null,
  last_four: 1234,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  name: Jean Valjean,
  status: null,
  tenant: abcdef_ghijkl,
  verifications: null
)
```

