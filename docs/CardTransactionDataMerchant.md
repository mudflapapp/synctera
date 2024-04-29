# Synctera::CardTransactionDataMerchant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Merchant address | [optional] |
| **city** | **String** | Merchant city | [optional] |
| **country_code** | **String** | Merchant country code | [optional] |
| **independent_sales_organization_id** | **String** | Independent sales organization identifier | [optional] |
| **mcc** | **String** | Merchant category code | [optional] |
| **mid** | **String** | Merchant identifier | [optional] |
| **name** | **String** | Merchant name | [optional] |
| **payment_facilitator_id** | **String** | Payment facilitator identifier | [optional] |
| **postal_code** | **String** | Merchant postal code | [optional] |
| **state** | **String** | Merchant state | [optional] |
| **sub_merchant_id** | **String** | Sub merchant identifier | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CardTransactionDataMerchant.new(
  address: null,
  city: null,
  country_code: null,
  independent_sales_organization_id: null,
  mcc: null,
  mid: null,
  name: null,
  payment_facilitator_id: null,
  postal_code: null,
  state: null,
  sub_merchant_id: null
)
```

