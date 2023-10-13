# Synctera::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | An optional “sneak preview” of our future API v1 error responses. This is provided to give integrators a chance to work with our future error codes. Error codes for the same error may change between v0 and v1. | [optional] |
| **detail** | **String** | A human-readable string explaining this particular error.  | [optional] |
| **status** | **Integer** | the HTTP status code for this response | [optional] |
| **title** | **String** | A human-readable string for this general category of error, which corresponds 1-to-1 with error types (&#x60;title&#x60; is the human-readable version of &#x60;type&#x60;). There can be multiple distinct titles for the same HTTP status code, and the same &#x60;title&#x60; can result in many different &#x60;detail&#x60; strings. This field will be removed in API v1.  | [optional] |
| **type** | **String** | A machine-readable string that identifies the error for programmatic use. This is a URI, i.e. a globally unique identifier. It is _not_ necessarily a URL, so do not expect it to resolve to a web page. You can use this whole string as an error code, or just everything after the last slash. This field will be removed in API v1.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Error.new(
  code: BAD_REQUEST_BODY,
  detail: missing required fields: first_name, dob,
  status: 400,
  title: Bad Request Body,
  type: https://dev.synctera.com/errors/bad-request-body
)
```

