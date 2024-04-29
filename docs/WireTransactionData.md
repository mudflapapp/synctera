# Synctera::WireTransactionData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **beneficiary_name** | **String** | The name of the beneficiary (recipient) of the wire transfer. | [optional] |
| **file_name** | **String** | The file name the wire was sent in or received from | [optional] |
| **id** | **String** | The Synctera Wire payment UUID | [optional] |
| **originating_account_id** | **String** | The UUID of the account that the wire payment is being sent from | [optional] |
| **originator_name** | **String** | The name of the originator of the wire transfer. | [optional] |
| **receiving_account_id** | **String** | The UUID if the account that is receiving the wire | [optional] |
| **recipient_message** | **String** | The message to the recipient | [optional] |
| **wire_reference_number** | **String** | The wire Sender Reference Number for the transfer | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::WireTransactionData.new(
  beneficiary_name: null,
  file_name: null,
  id: null,
  originating_account_id: null,
  originator_name: null,
  receiving_account_id: null,
  recipient_message: null,
  wire_reference_number: null
)
```

