# Synctera::EddBaseResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_time** | **Time** |  | [readonly] |
| **deletion_time** | **Time** |  | [readonly] |
| **id** | **String** | EDD record unique identifier | [readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::EddBaseResponse.new(
  creation_time: 2010-05-06T12:23:34.321Z,
  deletion_time: 2010-05-06T12:23:34.321Z,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

