# Synctera::PatchCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ban_status** | [**BanStatus**](BanStatus.md) |  | [optional] |
| **dob** | **Date** | Customer&#39;s date of birth in RFC 3339 full-date format (YYYY-MM-DD) | [optional] |
| **email** | **String** | Customer&#39;s email | [optional] |
| **first_name** | **String** | Customer&#39;s first name | [optional] |
| **last_name** | **String** | Customer&#39;s last name | [optional] |
| **legal_address** | [**LegalAddress**](LegalAddress.md) |  | [optional] |
| **metadata** | **Object** | User-supplied JSON format metadata. Do not use to store PII. | [optional] |
| **middle_name** | **String** | Customer&#39;s middle name | [optional] |
| **note** | **String** | Add an optional note when creating or updating a customer. A note is required when updating a customers&#39;s ban_status between SUSPENDED and ALLOWED. | [optional] |
| **phone_number** | **String** | Customer&#39;s mobile phone number with country code in E.164 format. Must have a valid country code. Area code and local phone number are not validated. | [optional] |
| **shipping_address** | [**ShippingAddress**](ShippingAddress.md) |  | [optional] |
| **ssn** | **String** | Customer&#39;s full tax ID eg SSN formatted with hyphens. This optional parameter is required when running KYC on a customer. Must be compiled with ^\\d{3}-\\d{2}-\\d{4}$. Response contains the last 4 digits only (e.g. 6789). | [optional] |
| **status** | **String** | Customer&#39;s status | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PatchCustomer.new(
  ban_status: null,
  dob: Fri Dec 31 19:00:00 EST 1999,
  email: alice@example.com,
  first_name: Jane,
  last_name: Smith,
  legal_address: null,
  metadata: null,
  middle_name: Anne,
  note: null,
  phone_number: +14374570680,
  shipping_address: null,
  ssn: 123-45-6789,
  status: null
)
```

