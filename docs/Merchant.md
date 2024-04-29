# Synctera::Merchant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**Address**](Address.md) |  |  |
| **email** | **String** | Merchant&#39;s email | [optional] |
| **name** | **String** | Merchant&#39;s name |  |
| **phone_number** | **String** | Merchant&#39;s phone number with country code in E.164 format. Must have a valid country code. Area code and local phone number are not validated. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Merchant.new(
  address: null,
  email: alice@example.com,
  name: null,
  phone_number: +14374570680
)
```

