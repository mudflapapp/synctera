# Synctera::FdxAuthRequestResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | The UUID of the business associated with the FDX token. One of customer_id or business_id must be provided.  | [optional] |
| **code** | **String** | authorization code returned to Plaid after user completes auth steps  | [optional] |
| **creation_time** | **Time** | The date and time the authorization request was created. | [optional][readonly] |
| **customer_id** | **String** | The UUID of the customer associated with the FDX token. One of customer_id or business_id must be provided.  | [optional] |
| **expiry_time** | **Time** | The date and time the authorization request will expire. | [optional][readonly] |
| **id** | **String** | The ID of the FDX authorization request.  |  |
| **last_updated_time** | **Time** | The date and time the authorization request was last udpated. | [optional][readonly] |
| **oauth2_state** | **String** | OAuth2 state, an opaque string to be returned to Plaid  | [optional] |
| **redirect_uri** | **String** | URI to redirect to after successful authorization.  | [optional] |
| **status** | [**FdxAuthRequestStatus**](FdxAuthRequestStatus.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::FdxAuthRequestResponse.new(
  business_id: null,
  code: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  customer_id: null,
  expiry_time: 2010-05-06T12:23:34.321Z,
  id: null,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  oauth2_state: null,
  redirect_uri: null,
  status: null,
  tenant: abcdef_ghijkl
)
```

