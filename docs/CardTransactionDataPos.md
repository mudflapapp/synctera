# Synctera::CardTransactionDataPos

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_data_input_capability** | **String** | Terminal Card data acceptance method | [optional] |
| **card_holder_presence** | **Boolean** | Cardholder presence | [optional] |
| **card_presence** | **Boolean** | Card presence | [optional] |
| **cardholder_authentication_method** | **String** | Cardholder authentication method | [optional] |
| **country_code** | **String** | Terminal country code | [optional] |
| **is_installment** | **Boolean** | Transaction is an installment payment | [optional] |
| **is_recurring** | **Boolean** | Transaction is recurring | [optional] |
| **pan_entry_mode** | **String** | Card pan capture method | [optional] |
| **partial_approval_capable** | **Boolean** | Terminal partial approval capability | [optional] |
| **pin_entry_mode** | **String** | Card pin capture method | [optional] |
| **pin_present** | **Boolean** | Pin presence | [optional] |
| **purchase_amount_only** | **Boolean** | Terminal purchase amount only | [optional] |
| **terminal_attendance** | **String** | Terminal attendance | [optional] |
| **terminal_id** | **String** | Terminal identifier | [optional] |
| **terminal_location** | **String** | Terminal location | [optional] |
| **terminal_type** | **String** | Terminal type | [optional] |
| **zip** | **String** | Terminal zip code | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CardTransactionDataPos.new(
  card_data_input_capability: null,
  card_holder_presence: null,
  card_presence: null,
  cardholder_authentication_method: null,
  country_code: null,
  is_installment: null,
  is_recurring: null,
  pan_entry_mode: null,
  partial_approval_capable: null,
  pin_entry_mode: null,
  pin_present: null,
  purchase_amount_only: null,
  terminal_attendance: null,
  terminal_id: null,
  terminal_location: null,
  terminal_type: null,
  zip: null
)
```

