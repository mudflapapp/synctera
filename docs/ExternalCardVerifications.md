# Synctera::ExternalCardVerifications

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_verification_result** | **String** | Address verification results  Status | Description --- | --- VERIFIED | AVS verified NOT_VERIFIED | AVS not verified ADDRESS_MISMATCH | ZIP code match, address no match ZIP_MISMATCH | Address match, ZIP code no match ADDRESS_AND_ZIP_MISMATCH | Address and ZIP code no match  |  |
| **cvv2_result** | **String** | Card Verification Value results  Status | Description --- | --- VERIFIED | CVV and expiration date verified NOT_VERIFIED | CVV and expiration date not verified CVV_MISMATCH | Either CVV or expiration date does not match NOT_SUPPORTED | Issuer does not participate in CVV2 service  |  |
| **pull_enabled** | **Boolean** | Indicates if the card is able to perform PULL transfers. |  |
| **push_enabled** | **Boolean** | Indicates if the card is able to perform PUSH transfers. |  |
| **state** | **String** |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ExternalCardVerifications.new(
  address_verification_result: null,
  cvv2_result: null,
  pull_enabled: null,
  push_enabled: null,
  state: null
)
```

