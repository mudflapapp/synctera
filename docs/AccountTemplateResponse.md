# Synctera::AccountTemplateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_type** | [**ApplicationType**](ApplicationType.md) |  | [optional] |
| **description** | **String** | Account template description | [optional] |
| **id** | **String** | Generated ID for the template | [optional] |
| **is_enabled** | **Boolean** | Whether this template can be used for account creation |  |
| **name** | **String** | Unique account template name |  |
| **template** | [**TemplateFieldsGenericResponse**](TemplateFieldsGenericResponse.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AccountTemplateResponse.new(
  application_type: null,
  description: null,
  id: null,
  is_enabled: null,
  name: null,
  template: null,
  tenant: abcdef_ghijkl
)
```

