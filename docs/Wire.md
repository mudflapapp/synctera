# Synctera::Wire

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Transfer amount in cents ($100 would be 10000) |  |
| **bank_message** | **String** | Instructions intended for the financial institutions that are processing the wire. | [optional] |
| **batch_id** | **String** | The batch ID associated with the wire if it was created via the batch payment API. | [optional] |
| **case_id** | **Integer** | The case id associated with the wire. | [optional] |
| **creation_time** | **Time** |  | [readonly] |
| **currency** | **String** | 3-character currency code |  |
| **customer_id** | **String** | The customer UUID representing the person initiating the Wire transfer | [optional] |
| **effective_date** | **Date** | The effective date of the transaction once it gets posted |  |
| **id** | **String** | wire ID | [readonly] |
| **input_message_accountability_data** | **String** | The input message accountability data consists of a 8 character cycle date (CCYYMMDD) an 8 character source and a 6 character sequence number. | [optional][readonly] |
| **is_bulk** | **Boolean** | Whether or not the wire is a \&quot;bulk\&quot; wire created via the batch payment API. |  |
| **last_updated_time** | **Time** |  | [readonly] |
| **network** | **String** | The network used to process the wire | [optional] |
| **originating_account_id** | **String** | Sender account ID | [optional] |
| **originating_account_number** | **String** | The account number representing the sender account. If the outgoing wire is a return, it refers to the sender of the initial wire not the sender of the return. |  |
| **receiving_account_id** | **String** | The external account uuid representing the recipient of the wire. | [optional] |
| **receiving_account_number** | **String** | The account number representing the recipient account. If the outgoing wire is a return, it refers to the recipient of the initial wire not the destination of the return. |  |
| **recipient_message** | **String** | Information from the originator to the beneficiary (recipient). | [optional] |
| **return_data** | [**ReturnData1**](ReturnData1.md) |  | [optional] |
| **sender_reference_id** | **String** | Sender&#39;s id associated with fedwire transfer | [readonly] |
| **status** | **String** | The current status of the transfer | [readonly] |
| **status_details** | **String** | Additional details about the status of the transfer | [optional] |
| **transaction_id** | **String** | ID of the resulting transaction resource | [readonly] |
| **transaction_in_id** | **String** | The transaction uuid of the incoming wire that triggered an outgoing return. This is only used if the outgoing wire is a return. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Wire.new(
  amount: 10000,
  bank_message: null,
  batch_id: null,
  case_id: 53,
  creation_time: 2010-05-06T12:23:34.321Z,
  currency: USD,
  customer_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  effective_date: Thu Mar 17 20:00:00 EDT 2022,
  id: null,
  input_message_accountability_data: 10220318BANK0001123456,
  is_bulk: null,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  network: fedwire,
  originating_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  originating_account_number: 1961234745,
  receiving_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  receiving_account_number: 1961234745,
  recipient_message: null,
  return_data: null,
  sender_reference_id: 9F564A6124E65,
  status: PENDING,
  status_details: PENDING_DUAL_APPROVAL,
  transaction_id: null,
  transaction_in_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96
)
```

