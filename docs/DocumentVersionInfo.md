# Synctera::DocumentVersionInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_time** | **Time** | The date and time the resource was created | [optional][readonly] |
| **file_name** | **String** | The file name of the document | [optional][readonly] |
| **last_updated_time** | **Time** | The date and time the resource was last updated | [optional][readonly] |
| **version** | **Integer** | Positive integer representing the version of the document | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::DocumentVersionInfo.new(
  creation_time: 2010-05-06T12:23:34.321Z,
  file_name: null,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  version: null
)
```

