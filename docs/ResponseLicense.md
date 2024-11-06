# Synctera::ResponseLicense

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | Unique ID for the business. Exactly one of &#x60;business_id&#x60; or &#x60;person_id&#x60; must be set.  | [optional] |
| **creation_time** | **Time** | The date and time the license resource  was created. |  |
| **customer_id** | **String** |  | [optional] |
| **id** | **String** | License record unique id |  |
| **last_updated_time** | **Time** | The date and time the license resource was last updated. |  |
| **last_verified_time** | **Time** | Timestamp of the last time the license was verified | [optional] |
| **license_classification** | **String** | The classification of the license | [optional] |
| **license_expiration_date** | **Date** | The date on which the license will expire | [optional] |
| **license_issuance_date** | **Date** | The date on which the license was issued | [optional] |
| **license_number** | **String** | The entity&#39;s license number |  |
| **license_type** | [**LicenseType**](LicenseType.md) |  |  |
| **license_type_description** | **String** | Free-form text describing the type of the license | [optional] |
| **licensee_address** | **String** | The address of the entity that holds the license as reported by the verifying vendor | [optional] |
| **licensee_name** | **String** | The name of the entity that holds the license that&#39;s reported by the verifying vendor | [optional] |
| **licensing_authority** | **String** | The name of the licensing body that granted the license | [optional] |
| **status** | **String** | The status of the license |  |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ResponseLicense.new(
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  creation_time: 2010-05-06T12:23:34.321Z,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  id: 7df5c505-b47c-490d-855f-c1b3cd99327f,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  last_verified_time: 2023-05-06T12:23:34.321Z,
  license_classification: RECREATIONAL_CANNABIS,
  license_expiration_date: Sat Dec 31 19:00:00 EST 2022,
  license_issuance_date: Sat Dec 31 19:00:00 EST 2022,
  license_number: 10321,
  license_type: null,
  license_type_description: Limited Marijuana Cultivation Facility,
  licensee_address: 1064 elm street, New York,
  licensee_name: Apex Corp,
  licensing_authority: Alcohol &amp; Marijuana Control Office,
  status: ACCEPTED,
  tenant: abcdef_ghijkl
)
```

