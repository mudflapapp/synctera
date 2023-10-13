# Synctera::Wire

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Transfer amount in cents ($100 would be 10000) |  |
| **bank_message** | **String** | Instructions intended for the financial institutions that are processing the wire. | [optional] |
| **creation_time** | **Time** |  | [readonly] |
| **currency** | **String** | 3-character currency code |  |
| **customer_id** | **String** | The customer UUID representing the person initiating the Wire transfer | [optional] |
| **effective_date** | **Date** | The effective date of the transaction once it gets posted |  |
| **id** | **String** | wire ID | [readonly] |
| **last_updated_time** | **Time** |  | [readonly] |
| **originating_account_id** | **String** | Sender account ID | [optional] |
| **originating_account_number** | **String** | The account number representing the sender account. If the outgoing wire is a return, it refers to the sender of the initial wire not the sender of the return. |  |
| **receiving_account_id** | **String** | The external account uuid representing the recipient of the wire. | [optional] |
| **receiving_account_number** | **String** | The account number representing the recipient account. If the outgoing wire is a return, it refers to the recipient of the initial wire not the destination of the return. |  |
| **recipient_message** | **String** | Information from the originator to the beneficiary (recipient). | [optional] |
| **return_data** | [**ReturnData**](ReturnData.md) |  | [optional] |
| **sender_reference_id** | **String** | Sender&#39;s id associated with fedwire transfer | [readonly] |
| **status** | **String** | The current status of the transfer | [readonly] |
| **transaction_id** | **String** | ID of the resulting transaction resource | [readonly] |
| **transaction_in_id** | **String** | The transaction uuid of the incoming wire that triggered an outgoing return. This is only used if the outgoing wire is a return. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Wire.new(
  amount: 10000,
  bank_message: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  currency: USD,
  customer_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  effective_date: Thu Mar 17 17:00:00 PDT 2022,
  id: null,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  originating_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  originating_account_number: 1961234745,
  receiving_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  receiving_account_number: 1961234745,
  recipient_message: null,
  return_data: null,
  sender_reference_id: 9F564A6124E65,
  status: PENDING,
  transaction_id: null,
  transaction_in_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96
)
```

