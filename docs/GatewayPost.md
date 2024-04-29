# Synctera::GatewayPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_headers** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Optional parameter that allows to configure custom http headers for the Auth request to Gateway URL if needed | [optional] |
| **disabled** | **Boolean** | Setting this parameter to &#39;true&#39; allows create Gateway Config as inactive ( can be useful as a preparation step) | [optional][default to false] |
| **max_wait_ms** | **Integer** | Optional parameter that configures the maximum amount of time in milliseconds that we will wait for the response from Gateway URL request. Default value is used if empty | [optional][default to 1500] |
| **url** | **String** | The URL address which will be used for the ACH in Auth Flow requests to get authorization from the fintech to process the transaction |  |

## Example

```ruby
require 'synctera'

instance = Synctera::GatewayPost.new(
  custom_headers: {&quot;Content-Type&quot;:[&quot;application/json&quot;,&quot;text/html&quot;],&quot;Host&quot;:[&quot;https://host.com&quot;]},
  disabled: null,
  max_wait_ms: null,
  url: https://fintech.com/ach/auth
)
```

