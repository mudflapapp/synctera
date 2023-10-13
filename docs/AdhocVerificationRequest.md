# Synctera::AdhocVerificationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | Synctera party (non-customer) who is receiving money from a customer (the payer) |  |
| **payer_id** | **String** | Synctera customer who is sending money to a non-customer (the payee) |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AdhocVerificationRequest.new(
  payee_id: null,
  payer_id: null
)
```

