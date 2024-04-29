# Synctera::GatewayConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | Time when Gateway Config object was created | [optional] |
| **custom_headers** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Optional parameter that allows to configure custom http headers for the Auth request to Gateway URL if needed | [optional] |
| **disabled** | **Boolean** | Indicates if the Gateway Config is active for Auth Flow for the current Fintech (Tenant) | [optional][default to false] |
| **id** | **String** | Identifier of the Gateway Config object | [optional] |
| **max_wait_ms** | **Integer** | Shows maximum amount of time in milliseconds that we will wait for the response from Gateway URL Auth request | [optional][default to 1500] |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  |  |
| **updated** | **Time** | Time when Gateway Config object was updated | [optional] |
| **url** | **String** | The URL address which will be used for the ACH in Auth Flow requests to get authorization from the fintech to process the transaction | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::GatewayConfig.new(
  created: 2010-05-06T12:23:34.321Z,
  custom_headers: {&quot;Content-Type&quot;:[&quot;application/json&quot;,&quot;text/html&quot;],&quot;Host&quot;:[&quot;https://host.com&quot;]},
  disabled: null,
  id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  max_wait_ms: null,
  tenant: abcdef_ghijkl,
  updated: 2010-05-06T12:23:34.321Z,
  url: https://fintech.com/ach/auth
)
```

