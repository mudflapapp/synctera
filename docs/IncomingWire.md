# Synctera::IncomingWire

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The internal account uuid representing the recipient of the wire. | [optional] |
| **amount** | **Integer** | Transfer amount in cents ($100 would be 10000) |  |
| **bank_message** | **String** | Information from the sending bank to the receiving bank. | [optional] |
| **creation_time** | **Time** |  | [readonly] |
| **currency** | **String** | 3-character currency code | [optional] |
| **customer_id** | **String** | The customer UUID representing the person initiating the Wire transfer | [optional] |
| **decline_reason** | **String** | Description of the reason the transfer was declined | [optional] |
| **id** | **String** | wire ID | [readonly] |
| **input_message_accountability_data** | **String** | The input message accountability data consists of a 8 character cycle date (CCYYMMDD) an 8 character source and a 6 character sequence number. | [optional][readonly] |
| **is_return** | **Boolean** | Indicates if the wire is a return of an outgoing wire |  |
| **network** | **String** | The network used to process the wire | [optional] |
| **originating_account_number** | **String** | The account number representing the sender account. If the incoming wire is a return, it refers to the sender of the initial wire not the sender of the return. | [optional] |
| **receiver** | [**Party**](Party.md) |  |  |
| **receiving_account_id** | **String** | The internal Synctera account uuid representing the recipient of the wire. | [optional] |
| **receiving_account_number** | **String** | The account number representing the recipient account. If the incoming wire is a return, it refers to the recipient of the initial wire not the destination of the return. |  |
| **recipient_message** | **String** | Information from the originator to the beneficiary (recipient). | [optional] |
| **return_data** | [**ReturnData1**](ReturnData1.md) |  | [optional] |
| **return_reason** | **String** | The reason we are returning this wire. | [optional] |
| **sender** | [**Party**](Party.md) |  |  |
| **sender_reference_id** | **String** | Sender&#39;s id associated with fedwire transfer | [readonly] |
| **status** | **String** | The current status of the transfer | [readonly] |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  |  |
| **transaction_id** | **String** | ID of the resulting transaction resource | [optional][readonly] |
| **type_subtype** | **String** | The fedwire label associated with the subtype code | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::IncomingWire.new(
  account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  amount: 10000,
  bank_message: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  currency: USD,
  customer_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  decline_reason: null,
  id: null,
  input_message_accountability_data: 10220318BANK0001123456,
  is_return: null,
  network: fedwire,
  originating_account_number: 1961234745,
  receiver: null,
  receiving_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  receiving_account_number: 1961234745,
  recipient_message: null,
  return_data: null,
  return_reason: null,
  sender: null,
  sender_reference_id: 9F564A6124E65,
  status: READY,
  tenant: abcdef_ghijkl,
  transaction_id: null,
  type_subtype: BASIC_FUNDS_TRANSFER
)
```

