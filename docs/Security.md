# Synctera::Security

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linked_account_id** | **String** | ID of linked backing account for use as a security, e.g. for use in a Smart Charge Card offering. Must be of type CHECKING or SAVING.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Security.new(
  linked_account_id: null
)
```

