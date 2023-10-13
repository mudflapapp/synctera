# Synctera::InternationalWireResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_in_beneficiary_currency** | **Integer** | Transfer amount in cents ($100 would be 10000) in the currency of the beneficiary. |  |
| **beneficiary_currency** | **String** | The currency of the beneficiary&#39;s account in ISO4217 format. |  |
| **case_id** | **Integer** | The ID of the associated case. | [optional] |
| **creation_time** | **Time** |  | [readonly] |
| **customer_id** | **String** | The customer UUID representing the person initiating the Wire transfer. |  |
| **decline_reason** | **String** | If the wire is declined after being successfully submitted, this field will contain a message explaining the reason for the decline. | [optional] |
| **effective_date** | **Date** | The effective date of the transaction once it gets posted. | [optional] |
| **fx_exchange_rate** | **Float** | The exchange rate used for the wire transfer. | [optional] |
| **id** | **String** | The ID of the international wire transfer. |  |
| **last_updated_time** | **Time** |  | [readonly] |
| **max_accepted_sender_cost** | **Integer** | The maximum amount the sender is willing to pay for the wire transfer in case FX fluctuates, required if the quote type is &#39;estimate&#39;. | [optional] |
| **metadata** | **Object** | Additional transfer metadata structured as key-value pairs. | [optional] |
| **network_reference_id** | **String** | The network reference ID of the wire transfer. | [optional] |
| **originating_account_id** | **String** | The account uuid representing the sender of the wire. |  |
| **quote_id** | **String** | The quote id returned from the /international_wire/quote endpoint, contains FX rate information. Required if the international wire is cross currency. | [optional] |
| **receiving_account_id** | **String** | The external account uuid representing the recipient of the wire. Needs to be configured with international bank routing details (e.g. SWIFT code, refer to external accounts documentation). |  |
| **sender_amount** | **Integer** | Debit amount to the wire sender, in cents ($100 would be 10000). |  |
| **sender_currency** | **String** | The currency of the sender&#39;s account in ISO4217 format. |  |
| **status** | [**InternationalWireStatus**](InternationalWireStatus.md) |  |  |
| **transaction_id** | **String** | ID of the resulting transaction resource. | [optional] |
| **wire_instruction** | **String** | Optional transaction instructions for the recipient bank if required by the recipient bank. | [optional] |
| **wire_purpose** | **String** | Reason for the wire transfer. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::InternationalWireResponse.new(
  amount_in_beneficiary_currency: 10000,
  beneficiary_currency: EUR,
  case_id: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  customer_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  decline_reason: null,
  effective_date: Thu Mar 17 17:00:00 PDT 2022,
  fx_exchange_rate: 1.3,
  id: null,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  max_accepted_sender_cost: 13500,
  metadata: null,
  network_reference_id: 1234567890123456,
  originating_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  quote_id: null,
  receiving_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  sender_amount: 13000,
  sender_currency: USD,
  status: null,
  transaction_id: null,
  wire_instruction: For benefit of John Doe&#39;s account with account number XXX,
  wire_purpose: Payment for Receipt #1234
)
```

