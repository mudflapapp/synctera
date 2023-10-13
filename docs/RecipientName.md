# Synctera::RecipientName

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **middle_name** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::RecipientName.new(
  first_name: Jane,
  last_name: Smith,
  middle_name: Anne
)
```

