# Synctera::CustomerVerification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_consent** | **Boolean** | Whether this customer has consented to a KYC check.  |  |
| **customer_ip_address** | **String** | IP address of the customer being verified. | [optional] |
| **document_id** | **String** | The ID of the uploaded government-issued identification document provided by the Socure SDK.  | [optional] |
| **verification_type** | [**Array&lt;KycVerificationType&gt;**](KycVerificationType.md) | List of possible checks to run on a customer. This is a legacy field that is now ignored.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CustomerVerification.new(
  customer_consent: null,
  customer_ip_address: 140.151.183.216,
  document_id: 1ab2c3de-fg45-6789-a01b-23c45678defg,
  verification_type: null
)
```

