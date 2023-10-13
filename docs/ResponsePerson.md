# Synctera::ResponsePerson

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ban_status** | [**BanStatus**](BanStatus.md) |  |  |
| **chosen_name** | **String** | Person&#39;s chosen name. | [optional] |
| **creation_time** | **Time** | The date and time the resource was created. | [readonly] |
| **dob** | **Date** | Person&#39;s date of birth in RFC 3339 full-date format (YYYY-MM-DD). | [optional] |
| **email** | **String** | Person&#39;s email. | [optional] |
| **first_name** | **String** | Person&#39;s first name. | [optional] |
| **has_accounts** | **Boolean** | This flag indicates whether the person or business has accounts. | [optional][readonly] |
| **id** | **String** | Person&#39;s unique identifier. | [readonly] |
| **is_customer** | **Boolean** | True for personal and business customers with a direct relationship with the fintech or bank. Set this to true for any customer related to an account.  |  |
| **last_name** | **String** | Person&#39;s last name. | [optional] |
| **last_updated_time** | **Time** | The date and time the resource was last updated. | [readonly] |
| **legal_address** | [**LegalAddress**](LegalAddress.md) |  | [optional] |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **middle_name** | **String** | Person&#39;s middle name. | [optional] |
| **phone_number** | **String** | Person&#39;s mobile phone number with country code in E.164 format. Must have a valid country code. Area code and local phone number are not validated | [optional] |
| **shipping_address** | [**ShippingAddress**](ShippingAddress.md) |  | [optional] |
| **ssn** | **String** | Person&#39;s full tax ID eg SSN formatted with hyphens. The response contains the last 4 digits only (e.g. 6789). | [optional] |
| **ssn_source** | [**SsnSource**](SsnSource.md) |  | [optional] |
| **status** | [**Status2**](Status2.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  |  |
| **verification_last_run** | **Time** | Date and time KYC verification was last run on the person. | [optional][readonly] |
| **verification_status** | [**VerificationStatus**](VerificationStatus.md) |  |  |
| **personal_ids** | [**Array&lt;ResponsePersonalId&gt;**](ResponsePersonalId.md) | Array of personal identifiers  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::ResponsePerson.new(
  ban_status: null,
  chosen_name: Annie,
  creation_time: 2010-05-06T12:23:34.321Z,
  dob: Fri Dec 31 16:00:00 PST 1999,
  email: alice@example.com,
  first_name: Jane,
  has_accounts: null,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  is_customer: true,
  last_name: Smith,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  legal_address: null,
  metadata: null,
  middle_name: Anne,
  phone_number: +14374570680,
  shipping_address: null,
  ssn: 123-45-6789,
  ssn_source: null,
  status: null,
  tenant: abcdef_ghijkl,
  verification_last_run: 2010-05-06T12:23:34.321Z,
  verification_status: null,
  personal_ids: null
)
```

