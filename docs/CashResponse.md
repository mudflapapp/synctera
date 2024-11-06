# Synctera::CashResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Transfer amount in cents |  |
| **dc_sign** | **String** | Debit or credit sign |  |
| **source_data** | **Object** | Additional information to be added to the transfer | [optional] |
| **client_bank_account** | **String** | The bank account of the client. | [optional] |
| **client_name** | **String** | The name of the client. | [optional] |
| **customer_id** | **String** | The UUID of the Synctera customer resource that is the originator of the transfer.  | [optional] |
| **destination_account_id** | **String** | The UUID of the Synctera account that is the destination of the transfer. For a transfer originated by the Synctera platform, this will be an external account resource, while for a transfer originated by the external account, this account will be an account resource.  | [optional] |
| **destination_account_number** | **String** | The account number of the destination account. | [optional] |
| **destination_account_owner_name** | **String** | The account owner name of the destination account. | [optional] |
| **effective_date** | **Date** | The effective date of the transaction once it gets posted |  |
| **failed** | **Boolean** | Whether the transfer failed or not. | [optional] |
| **history** | [**Array&lt;Action&gt;**](Action.md) |  | [optional] |
| **id** | **String** | ID of the transfer |  |
| **is_same_day** | **Boolean** | Send the same day (use only is_same_day without specific effective_date). |  |
| **network_status** | [**CashNetworkStatus**](CashNetworkStatus.md) |  | [optional] |
| **original_reference_id** | **String** | The original reference id of the transfer if it&#39;s a return. | [optional] |
| **originating_account_id** | **String** | The UUID of the Synctera account that is the origination of the transfer. For a transfer originated by the Synctera platform, this will be an account resource, while for a transfer originated by the external account, this will be an external account resource.  | [optional] |
| **originating_account_number** | **String** | The account number of the originating account. | [optional] |
| **originating_account_owner_name** | **String** | The account owner name of the origination account. | [optional] |
| **posting_date** | **Date** | The posting date of the transaction once it gets posted | [optional] |
| **reference_id** | **String** | The reference id of the transfer. |  |
| **status** | [**CashStatus**](CashStatus.md) |  |  |
| **subtype** | **String** | The subtype of the transfer |  |
| **suspended** | **Boolean** | Whether the transfer is suspended or not. | [optional] |
| **tenant_id** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  |  |
| **transaction_id** | **String** | The related transaction id of the transfer. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CashResponse.new(
  amount: 10000,
  dc_sign: DEBIT,
  source_data: null,
  client_bank_account: 123456789,
  client_name: Fintech A,
  customer_id: 46fec39e-e776-4571-bf90-d0e1d15172fe,
  destination_account_id: fccb4a46-1261-4e91-b622-73b5b946183d,
  destination_account_number: 1344012344,
  destination_account_owner_name: null,
  effective_date: Thu Mar 17 20:00:00 EDT 2022,
  failed: false,
  history: null,
  id: null,
  is_same_day: true,
  network_status: null,
  original_reference_id: 123456788,
  originating_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  originating_account_number: 1961234745,
  originating_account_owner_name: null,
  posting_date: Thu Mar 17 20:00:00 EDT 2022,
  reference_id: 123456789,
  status: null,
  subtype: CASH_ORDER,
  suspended: false,
  tenant_id: abcdef_ghijkl,
  transaction_id: 45b5246f-ad97-4629-9aac-465b74a05505
)
```

