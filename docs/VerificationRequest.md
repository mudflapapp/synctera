# Synctera::VerificationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | Unique ID for the business. Exactly one of &#x60;business_id&#x60; or &#x60;person_id&#x60; must be set.  | [optional] |
| **customer_consent** | **Boolean** | Whether this customer has consented to be verified. |  |
| **customer_ip_address** | **String** | The customer&#39;s IP address. | [optional] |
| **document_id** | **String** | The ID of the uploaded government-issued identification document provided by the Socure SDK.  | [optional] |
| **person_id** | **String** | Unique ID for the person. Exactly one of &#x60;person_id&#x60; or &#x60;business_id&#x60; must be set.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::VerificationRequest.new(
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  customer_consent: null,
  customer_ip_address: 140.151.183.216,
  document_id: 1ab2c3de-fg45-6789-a01b-23c45678defg,
  person_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

