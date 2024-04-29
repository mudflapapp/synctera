# Synctera::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | A machine-readable string that identifies the error for programmatic use.  | [optional] |
| **detail** | **String** | A human-readable string explaining this particular error.  | [optional] |
| **status** | **Integer** | HTTP status code for this response | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Error.new(
  code: BAD_REQUEST_BODY,
  detail: Missing required fields: first_name, dob,
  status: 400
)
```

