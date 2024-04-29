# Synctera::WidgetToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant** | **String** | The id of the tenant containing the resource.  |  |
| **widget_token** | **String** | A short-lived, one-time token used for use with Synctera widgets |  |

## Example

```ruby
require 'synctera'

instance = Synctera::WidgetToken.new(
  tenant: abcdef_ghijkl,
  widget_token: 0b0319e2-d5f4-49cb-b426-9ff9b2e96969
)
```

