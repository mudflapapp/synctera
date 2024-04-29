# Synctera::FdxTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | The UUID of the business associated with the FDX token. One of customer_id or business_id must be provided.  | [optional] |
| **creation_time** | **Time** | The date and time the token was created. | [readonly] |
| **customer_id** | **String** | The UUID of the customer associated with the FDX token. One of customer_id or business_id must be provided.  | [optional] |
| **id** | **String** | FDX token ID |  |
| **last_updated_time** | **Time** | The date and time the token was last updated. | [readonly] |
| **parent_token_id** | **String** | If the token was created via refresh, this is the ID of the refreshing token.  | [optional] |
| **status** | [**FdxTokenStatus**](FdxTokenStatus.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource.  |  |
| **token_expiry_time** | **Time** | The date and time the token expires. | [readonly] |
| **token_hash** | **String** | The non-secret hash of the FDX token.  |  |
| **token_type** | [**FdxTokenType**](FdxTokenType.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::FdxTokenResponse.new(
  business_id: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  customer_id: null,
  id: null,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  parent_token_id: null,
  status: null,
  tenant: abcdef_ghijkl,
  token_expiry_time: 2010-05-06T12:23:34.321Z,
  token_hash: null,
  token_type: null
)
```

