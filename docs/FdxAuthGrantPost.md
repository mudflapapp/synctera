# Synctera::FdxAuthGrantPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_request_id** | **String** | The ID of the FDX authorization request.  |  |
| **business_id** | **String** | The UUID of the business associated with the FDX token. One of customer_id or business_id must be provided.  | [optional] |
| **customer_id** | **String** | The UUID of the customer associated with the FDX token. One of customer_id or business_id must be provided.  | [optional] |
| **status** | [**FdxAuthGrantStatus**](FdxAuthGrantStatus.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::FdxAuthGrantPost.new(
  auth_request_id: null,
  business_id: null,
  customer_id: null,
  status: null
)
```

