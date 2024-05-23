# Synctera::EftCaPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Transfer amount in cents |  |
| **customer_id** | **String** | The UUID of the Synctera customer resource that is the originator of the transfer.  |  |
| **dc_sign** | **String** | Debit or credit sign |  |
| **source_data** | **Object** | Additional information to be added to the transfer | [optional] |
| **transaction_code** | **String** | The three digit transaction code that identifies the type of transaction. More information can be found here: https://www.payments.ca/sites/default/files/standard007eng.pdf.  |  |
| **destination_account_id** | **String** | The UUID of the Synctera external account resource that is the destination of the transfer. This external account represents the account on the destination bank&#39;s platform.  |  |
| **destination_account_owner_name** | **String** | The official name of the account owner of the destination account.  |  |
| **effective_date** | **Date** | The effective date of the transaction once it gets posted | [optional] |
| **is_same_day** | **Boolean** | Send the same day (use only is_same_day without specific effective_date). | [optional] |
| **originating_account_id** | **String** | The UUID of the Synctera account resource originating the transfer.  |  |
| **originating_account_owner_name** | **String** | The official name of the account owner of the originating account. This must exactly match one of the account_owner_names in the destination external account.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::EftCaPost.new(
  amount: 10000,
  customer_id: 46fec39e-e776-4571-bf90-d0e1d15172fe,
  dc_sign: DEBIT,
  source_data: null,
  transaction_code: 304,
  destination_account_id: fccb4a46-1261-4e91-b622-73b5b946183d,
  destination_account_owner_name: Jane Joe,
  effective_date: Thu Mar 17 17:00:00 PDT 2022,
  is_same_day: true,
  originating_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  originating_account_owner_name: John Doe
)
```

