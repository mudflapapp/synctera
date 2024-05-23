# Synctera::BaseCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | [**Array&lt;Address&gt;**](Address.md) | All of the customer&#39;s addresses | [optional][readonly] |
| **ban_status** | [**BanStatus**](BanStatus.md) |  | [optional] |
| **creation_time** | **Time** | The date and time the resource was created. | [optional][readonly] |
| **email** | **String** | Customer&#39;s email | [optional] |
| **has_accounts** | **Boolean** | This flag indicates whether the person or business has accounts. | [optional][readonly] |
| **id** | **String** | Customer unique identifier | [optional][readonly] |
| **kyc_exempt** | **Boolean** | Customer&#39;s KYC exemption | [optional][readonly] |
| **kyc_last_run** | **Time** | Date and time KYC was last run on the customer | [optional][readonly] |
| **kyc_status** | [**CustomerKycStatus**](CustomerKycStatus.md) |  | [optional] |
| **last_updated_time** | **Time** | The date and time the resource was last updated. | [optional][readonly] |
| **legal_address** | [**LegalAddress**](LegalAddress.md) |  | [optional] |
| **metadata** | **Object** | User-supplied metadata. Do not use to store PII. | [optional] |
| **middle_name** | **String** | Customer&#39;s middle name | [optional] |
| **note** | **String** | Add an optional note when creating or updating a customer. A note is required when updating a customers&#39;s ban_status between SUSPENDED and ALLOWED. | [optional] |
| **phone_number** | **String** | Customer&#39;s mobile phone number with country code in E.164 format. Must have a valid country code. Area code and local phone number are not validated. | [optional] |
| **related_customers** | [**Array&lt;Relationship&gt;**](Relationship.md) | Customer&#39;s relationships with other accounts eg. guardian. This property is no longer supported. Setting it will return an error. | [optional] |
| **shipping_address** | [**ShippingAddress**](ShippingAddress.md) |  | [optional] |
| **ssn** | **String** | Customer&#39;s full tax ID eg SSN formatted with hyphens. This optional parameter is required when running KYC on a customer. Input must match the pattern ^\\d{3}-\\d{2}-\\d{4}$. The response contains the last 4 digits only (e.g. 6789). | [optional] |
| **ssn_source** | [**SsnSource**](SsnSource.md) |  | [optional] |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::BaseCustomer.new(
  addresses: null,
  ban_status: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  email: alice@example.com,
  has_accounts: null,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  kyc_exempt: null,
  kyc_last_run: 2010-05-06T12:23:34.321Z,
  kyc_status: null,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  legal_address: null,
  metadata: null,
  middle_name: Anne,
  note: null,
  phone_number: +14374570680,
  related_customers: null,
  shipping_address: null,
  ssn: 123-45-6789,
  ssn_source: null,
  tenant: abcdef_ghijkl
)
```

