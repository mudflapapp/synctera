# Synctera::InternationalWirePost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_in_beneficiary_currency** | **Integer** | Transfer amount in cents ($100 would be 10000) in the currency of the beneficiary. |  |
| **beneficiary_currency** | **String** | The currency of the beneficiary&#39;s account in ISO4217 format. Optional, the currency will be inferred form the receiving account, validation will be performed if this field is provided, if the receiving account currency and this field do not match the API will return an error. | [optional] |
| **customer_id** | **String** | The customer UUID representing the person initiating the Wire transfer. |  |
| **metadata** | **Object** | Additional transfer metadata structured as key-value pairs. | [optional] |
| **originating_account_id** | **String** | The account uuid representing the sender of the wire. |  |
| **quote_id** | **String** | The quote id returned from the /international_wire/quote endpoint, contains FX rate information. Required if the international wire is cross currency. | [optional] |
| **receiving_account_id** | **String** | The external account uuid representing the recipient of the wire. Needs to be configured with international bank routing details (e.g. SWIFT code, refer to external accounts documentation). |  |
| **sender_currency** | **String** | The currency of the sender&#39;s account in ISO4217 format. Optional, the currency will be inferred form the originating account, validation will be performed if this field is provided, if the originating account currency and this field do not match the API will return an error. | [optional] |
| **wire_instruction** | **String** | Optional transaction instructions for the recipient bank if required by the recipient bank. | [optional] |
| **wire_purpose** | **String** | Reason for the wire transfer. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::InternationalWirePost.new(
  amount_in_beneficiary_currency: 10000,
  beneficiary_currency: EUR,
  customer_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  metadata: null,
  originating_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  quote_id: null,
  receiving_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  sender_currency: USD,
  wire_instruction: For benefit of John Doe&#39;s account with account number XXX,
  wire_purpose: Payment for Receipt #1234
)
```

