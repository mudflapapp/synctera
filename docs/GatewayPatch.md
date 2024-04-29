# Synctera::GatewayPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_headers** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Custom http headers for the Auth request to Gateway URL | [optional] |
| **disabled** | **Boolean** | Allows to disable/enable Gateway Config for the Fintech (Tenant) | [optional] |
| **max_wait_ms** | **Integer** | Maximum amount of time in milliseconds that we will wait for the response from Gateway URL request | [optional] |
| **url** | **String** | The URL address which will be used for the ACH in Auth Flow requests to get authorization from the fintech to process the transaction | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::GatewayPatch.new(
  custom_headers: {&quot;Content-Type&quot;:[&quot;application/json&quot;,&quot;text/html&quot;],&quot;Host&quot;:[&quot;https://host.com&quot;]},
  disabled: null,
  max_wait_ms: null,
  url: https://fintech.com/ach/auth
)
```

