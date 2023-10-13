# Synctera::AccountTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_type** | [**ApplicationType**](ApplicationType.md) |  | [optional] |
| **description** | **String** | User provided account template description | [optional] |
| **id** | **String** | Generated ID for the template | [optional][readonly] |
| **is_enabled** | **Boolean** | Whether this template can be used for account creation |  |
| **name** | **String** | Unique account template name |  |
| **template** | [**TemplateFields**](TemplateFields.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AccountTemplate.new(
  application_type: null,
  description: null,
  id: null,
  is_enabled: null,
  name: null,
  template: null
)
```

