# Synctera::EftCaResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Transfer amount in cents |  |
| **customer_id** | **String** | The UUID of the Synctera customer resource that is the originator of the transfer.  |  |
| **dc_sign** | **String** | Debit or credit sign |  |
| **source_data** | **Object** | Additional information to be added to the transfer | [optional] |
| **transaction_code** | **String** | The three digit transaction code that identifies the type of transaction. More information can be found here: https://www.payments.ca/sites/default/files/standard007eng.pdf.  |  |
| **destination_account_id** | **String** | The UUID of the Synctera account that is the destination of the transfer. For a transfer originated by the Synctera platform, this will be an external account resource, while for a transfer originated by the external account, this account will be an account resource.  |  |
| **destination_account_number** | **String** | The account number of the destination account. |  |
| **destination_account_owner_name** | **String** | The account owner name of the destination account. |  |
| **effective_date** | **Date** | The effective date of the transaction once it gets posted |  |
| **failed** | **Boolean** | Whether the transfer failed or not. | [optional] |
| **history** | [**Array&lt;Action&gt;**](Action.md) |  | [optional] |
| **id** | **String** | ID of the transfer |  |
| **is_same_day** | **Boolean** | Send the same day (use only is_same_day without specific effective_date). |  |
| **network_status** | **String** | The network status of the transfer. | [optional] |
| **originating_account_id** | **String** | The UUID of the Synctera account that is the origination of the transfer. For a transfer originated by the Synctera platform, this will be an account resource, while for a transfer originated by the external account, this will be an external account resource.  |  |
| **originating_account_number** | **String** | The account number of the originating account. |  |
| **originating_account_owner_name** | **String** | The account owner name of the origination account. |  |
| **posting_date** | **Date** | The posting date of the transaction once it gets posted | [optional] |
| **reference_id** | **String** | The reference id of the transfer. |  |
| **status** | [**EftCaStatus**](EftCaStatus.md) |  |  |
| **subtype** | **String** | The subtype of the transfer |  |
| **tenant_id** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  |  |
| **transaction_id** | **String** | The related transaction id of the transfer. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::EftCaResponse.new(
  amount: 10000,
  customer_id: 46fec39e-e776-4571-bf90-d0e1d15172fe,
  dc_sign: DEBIT,
  source_data: null,
  transaction_code: 304,
  destination_account_id: fccb4a46-1261-4e91-b622-73b5b946183d,
  destination_account_number: 1344012344,
  destination_account_owner_name: null,
  effective_date: Thu Mar 17 17:00:00 PDT 2022,
  failed: false,
  history: null,
  id: null,
  is_same_day: true,
  network_status: PENDING,
  originating_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  originating_account_number: 1961234745,
  originating_account_owner_name: null,
  posting_date: Thu Mar 17 17:00:00 PDT 2022,
  reference_id: 123456789,
  status: null,
  subtype: INCOMING_CREDIT,
  tenant_id: abcdef_ghijkl,
  transaction_id: 45b5246f-ad97-4629-9aac-465b74a05505
)
```

