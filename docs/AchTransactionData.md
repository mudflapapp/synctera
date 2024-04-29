# Synctera::AchTransactionData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The ACH company entry description | [optional] |
| **file_name** | **String** | For outgoing ACH, the name of the file the entry went out in. For incoming ACH, the name of the file the entry came from. The value will be omitted for outgoing payments that have not yet been written into a file. | [optional] |
| **id** | **String** | The ACH payment uuid (used in &#x60;/v0/ach&#x60; endpoint) |  |
| **identification_number** | **String** | An internal identification number used to uniquely identify the ACH entry. For Person-to-Person WEB entries, this should name of the originator. | [optional] |
| **originating_account_id** | **String** | The uuid of the account originating the ACH. This will be a customer account uuid for outgoing ACH, and omitted for incoming ACH. | [optional] |
| **originating_company_name** | **String** | The name of the company originating the ACH entry. | [optional] |
| **originating_routing_number** | **String** | The routing number of the originating DFI. | [optional] |
| **originator_name** | **String** | The name of the originator, if available. | [optional] |
| **receiving_account_id** | **String** | The uuid of the account receiving the ACH entry. In the case of an outgoing ACH, this will be an external_account uuid. For incoming ACH, this will be an account uuid. | [optional] |
| **recipient_name** | **String** | The name of the recipient according to the ACH entry. This should map to the ACH &#x60;Individual Name&#x60; field. | [optional] |
| **return_code** | **String** | The ACH return code, if this transaction was a return | [optional] |
| **trace_number** | **String** | The ACH trace number associated with the transaction | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AchTransactionData.new(
  description: null,
  file_name: null,
  id: null,
  identification_number: null,
  originating_account_id: null,
  originating_company_name: null,
  originating_routing_number: null,
  originator_name: null,
  receiving_account_id: null,
  recipient_name: null,
  return_code: R01,
  trace_number: null
)
```

