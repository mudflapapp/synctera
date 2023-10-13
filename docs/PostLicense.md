# Synctera::PostLicense

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | Unique ID for the business. Exactly one of &#x60;business_id&#x60; or &#x60;person_id&#x60; must be set.  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **license_number** | **String** | The entity&#39;s license number | [optional] |
| **license_type** | [**LicenseType**](LicenseType.md) |  | [optional] |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PostLicense.new(
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  license_number: 10321,
  license_type: null,
  tenant: abcdef_ghijkl
)
```

