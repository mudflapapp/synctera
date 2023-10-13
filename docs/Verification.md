# Synctera::Verification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | Unique ID for the business. Exactly one of &#x60;business_id&#x60; or &#x60;person_id&#x60; must be set.  | [optional] |
| **creation_time** | **Time** | The date and time the resource was created. | [optional][readonly] |
| **details** | [**Array&lt;Detail&gt;**](Detail.md) | A list of individual checks done as part of the due diligence process for the verification type.  | [optional][readonly] |
| **id** | **String** | Unique ID for this verification result. | [optional][readonly] |
| **last_updated_time** | **Time** | The date and time the resource was last updated. | [optional][readonly] |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **person_id** | **String** | Unique ID for the person. Exactly one of &#x60;person_id&#x60; or &#x60;business_id&#x60; must be set.  | [optional] |
| **result** | [**VerificationResult**](VerificationResult.md) |  |  |
| **vendor_info** | [**VendorInfo**](VendorInfo.md) |  | [optional] |
| **verification_time** | **Time** | The date and time the verification was completed. |  |
| **verification_type** | [**VerificationType1**](VerificationType1.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Verification.new(
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  creation_time: 2010-05-06T12:23:34.321Z,
  details: null,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  metadata: null,
  person_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  result: null,
  vendor_info: null,
  verification_time: null,
  verification_type: null
)
```

